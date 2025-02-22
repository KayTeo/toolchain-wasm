#include <iostream>
#include <atomic>
#include <thread>
#include <vector>
#include <chrono>

const int numIterations = 5000000;
void benchmarkRelease(std::atomic<int>& flag, int startValue, int threadId) {
    for (int i = 0; i < numIterations; ++i) {
	//flag.store(31415, std::memory_order_release);  // Release store
	//flag.store(1612, std::memory_order_release);  // Release store
	//flag.store(2152, std::memory_order_release);  // Release store
	//flag.store(4403, std::memory_order_release);  // Release store
        //flag.store(6241, std::memory_order_release);  // Release store
        flag.store(1425, std::memory_order_release);  // Release store
    }
}

int main() {
    // Shared atomic flag to store values
    std::atomic<int> flag(0);
    // Reset the atomic flag
    flag.store(0, std::memory_order_relaxed);

    // Start benchmark for release store
    auto startRelease = std::chrono::high_resolution_clock::now();

    // Launch 4 threads to perform release stores
    std::vector<std::thread> threadsRelease;
    for (int i = 0; i < 4; ++i) {
        threadsRelease.push_back(std::thread(benchmarkRelease, std::ref(flag), i, i));
    }

    for (auto& th : threadsRelease) {
        th.join();
    }

    auto endRelease = std::chrono::high_resolution_clock::now();
    auto durationRelease = std::chrono::duration_cast<std::chrono::milliseconds>(endRelease - startRelease);
    std::cout << "Time taken for 4 threads with memory_order_release: " << durationRelease.count() << " ms" << std::endl;

    return 0;
}

