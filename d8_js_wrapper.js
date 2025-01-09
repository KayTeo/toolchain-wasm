//Load wasm module
const bytes = readbuffer(arguments[0]);

//Load directory for helper_functions.js
const dir = arguments[1];

//Load helper functions
load(dir + '/helper_functions.js')

// Create a shared memory instance
const sharedMemory = new WebAssembly.Memory({
  initial: 10,
  maximum: 100,
  shared: true
});

//Initialise module
const memory = sharedMemory
const module  = new WebAssembly.Module(bytes);
  
async function main(){
  const results = await runWorkers(module, memory, workerCode, 5);
  console.log("##Benchmark Start##");
    for(let i = 0; i < results.length; i++){
        console.log("Worker " + i + " Value: " + results[i].data + " Time (ms): " + results[i].time);
    }
  const instance = new WebAssembly.Instance(module, {
    env: { memory }
  });
  console.log("Final total count: " + instance.exports.getValue(0));
  console.log("##Benchmark End##");
}

main().then(() => {
  console.log("Finished.");
}).catch((err) => {
  console.log("Error: " + err);
});