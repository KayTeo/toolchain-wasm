#include <iostream>
#include <atomic>
#include <thread>
#include <vector>
#include <chrono>

const int numIterations = 1000000;

void benchmarkSeqCst(std::atomic<int>& flag, int startValue, int threadId) {
    for (int i = 0; i < numIterations; ++i) {
        flag.store(startValue, std::memory_order_seq_cst);  // Sequentially consistent store
        flag.store(startValue, std::memory_order_seq_cst);  // Sequentially consistent store
        flag.store(startValue, std::memory_order_seq_cst);  // Sequentially consistent store
        flag.store(startValue, std::memory_order_seq_cst);  // Sequentially consistent store
    }
}
int main() {
    // Shared atomic flag to store values
    std::atomic<int> flag(0);

    // Start benchmark for seq_cst store
    auto startSeqCst = std::chrono::high_resolution_clock::now();

    // Launch 4 threads to perform sequentially consistent stores
    std::vector<std::thread> threadsSeqCst;
    for (int i = 0; i < 4; ++i) {
        threadsSeqCst.push_back(std::thread(benchmarkSeqCst, std::ref(flag), i, i));
    }

    for (auto& th : threadsSeqCst) {
        th.join();
    }

    auto endSeqCst = std::chrono::high_resolution_clock::now();
    auto durationSeqCst = std::chrono::duration_cast<std::chrono::milliseconds>(endSeqCst - startSeqCst);
    std::cout << "Time taken for 4 threads with memory_order_seq_cst: " << durationSeqCst.count() << " ms" << std::endl;

    return 0;
}

