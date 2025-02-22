// index.js

// Load the WebAssembly module
const loadWasmModule = async () => {
  const wasmFile = 'wasm_functions.wasm'; 
  const response = await fetch(wasmFile);
  const buffer = await response.arrayBuffer();
  const module = await WebAssembly.compile(buffer);
  return module;
};

// A function to create imports for the WASM instance
const createImports = (sharedMemory) => {
  // Define imports for the WASM module, including shared memory
  const imports = {
    env: {
      memory: sharedMemory, // Use the shared memory
      // Add more imports here if needed (e.g., functions that the WASM module calls)
    },
  };

  return imports;
};

// A function to run the WASM function and benchmark it
const runWasmFunction = async (wasmModule, imports, iterations) => {
  // Create a memory for the WASM instance
  const wasmInstance = await WebAssembly.instantiate(wasmModule, imports);

  // Time the execution of the WASM function
  const start = performance.now();

  result = wasmInstance.exports.atomic_store(4, 5000000);
  const end = performance.now();

  return end - start; // Return the time in milliseconds
};

// Create a worker that will run the WASM function in a thread
const createWorker = (wasmModule, imports, iterations) => {
  return new Promise((resolve, reject) => {
    const workerBlob = new Blob(
      [
        `
        onmessage = async function(e) {
          const { wasmModule, imports, iterations } = e.data;
          const wasmInstance = await WebAssembly.instantiate(wasmModule, imports);
          
          const start = performance.now();
        
          result = wasmInstance.exports.atomic_store(4, 5000000)
          const end = performance.now();
          
          postMessage(end - start); // Send the benchmark time back
        }
        `
      ],
      { type: 'application/javascript' }
    );

    const worker = new Worker(URL.createObjectURL(workerBlob));

    worker.onmessage = (e) => {
      resolve(e.data); // Resolve with the benchmark time
    };

    worker.onerror = (err) => {
      reject(err); // Reject if there is an error in the worker
    };

    worker.postMessage({ wasmModule, imports, iterations });
  });
};

// Main function to execute the benchmark
const benchmarkWasm = async (iterationsPerThread, threadCount) => {
  const wasmModule = await loadWasmModule(); // Load the wasm module

  // Create a SharedArrayBuffer that will be shared across threads
  const sharedMemory = new WebAssembly.Memory({
    initial: 10,
    maximum: 100,
    shared: true
  });

  const imports = createImports(sharedMemory); // Create the imports for WASM

  const workerPromises = [];
  for (let i = 0; i < threadCount; i++) {
    workerPromises.push(createWorker(wasmModule, imports, iterationsPerThread)); // Create a worker for each thread
  }

  const results = await Promise.all(workerPromises); // Wait for all threads to finish

  const totalTime = results.reduce((acc, time) => acc + time, 0);
  const averageTime = totalTime / threadCount;

  console.log(`Benchmark completed:`);
  console.log(`- Total time: ${totalTime} ms`);
  console.log(`- Average time per thread: ${averageTime} ms`);
};

// Run the benchmark with a specified number of iterations and threads
const iterationsPerThread = 50000;  // Number of times the WASM function should run per thread
const threadCount = 4;  // Number of threads to run in parallel

benchmarkWasm(iterationsPerThread, threadCount);

