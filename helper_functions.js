//Code to run in each web worker instance
//Waits for a message containing the WebAssembly module and shared memory
//Returns an object containing the execution time and final value
function workerCode() {
    onmessage = function(event){
        try{
            data = event.data
            const memory = data.memory
            const instance = new WebAssembly.Instance(data.module, {
                env: { memory }
            });
            let result = 0;
            const start = performance.now()      
            //result = instance.exports.atomic_add_one_loop(0, 20000);
            //result = instance.exports.atomic_store_and_load(0, 10000);
            result = instance.exports.atomic_store(0, 500000);
            
            const end = performance.now()
            postMessage({
                data: instance.exports.getValue(0),
                time: end - start
            });
        } catch(e) {
            console.log("Error occured in workerCode()");
            postMessage('ERROR: ' + e);
        }
    }
}

//Helper function that sends a message to a worker and returns a Promise
async function sendMessageToWorker(data, workerN){
    return new Promise((resolve, reject) => {
        workerN.onmessage = function(event){
            resolve(event.data);
            console.log("Resolving worker message");
        };

        workerN.onerror = function(error){
          resolve(error);
        };

       workerN.postMessage(data);
    });
}

//Helper function to run num workers
async function runWorkers(module, memory, workerFunction, num){
  let workerArray = []; //Worker array

  //Initalize num workers who will wait for onmessage to start triggering
  for (let i = 0; i < num; i++){
    let worker = new Worker(workerFunction, {type: 'function'});
    workerArray.push(worker);
  }

  let promiseArray = [];
  for (let i = 0; i < num; i++){
    promiseArray.push(sendMessageToWorker(
      {module: module, memory: memory},
      workerArray[i]
      )
    );
  }
  const results = await Promise.all(promiseArray);
  for (let i = 0; i < num; i++){
    workerArray[i].terminate();
  }
  return results;
}
