 #include <atomic>
#include <chrono>
#include <iostream>
#include <thread>
#include <vector>

void benchmark_stores(int num_threads, int num_iterations) {
    std::atomic<int32_t> seq_counter{0};
    std::atomic<int32_t> rel_counter{0};
    
    // Sequential Consistency Test
    auto start = std::chrono::high_resolution_clock::now();
    
    std::vector<std::thread> threads;
    for (int i = 0; i < num_threads; ++i) {
        threads.emplace_back([&]() {
            for (int j = 0; j < num_iterations; ++j) {
                seq_counter.store(j, std::memory_order_seq_cst);
            }
        });
    }
    
    for (auto& t : threads) {
        t.join();
    }
    
    auto end = std::chrono::high_resolution_clock::now();
    double seq_time = std::chrono::duration<double, std::milli>(end - start).count();
    
    // Release Test
    threads.clear();
    start = std::chrono::high_resolution_clock::now();
    
    for (int i = 0; i < num_threads; ++i) {
        threads.emplace_back([&]() {
            for (int j = 0; j < num_iterations; ++j) {
                rel_counter.store(j, std::memory_order_release);
            }
        });
    }
    
    for (auto& t : threads) {
        t.join();
    }
    
    end = std::chrono::high_resolution_clock::now();
    double rel_time = std::chrono::duration<double, std::milli>(end - start).count();
    
    // Print results
    std::cout << "Results for " << num_threads << " threads, " 
              << num_iterations << " iterations each:\n";
    std::cout << "Sequential consistency: " << seq_time << " ms\n";
    std::cout << "Release: " << rel_time << " ms\n";
    std::cout << "Release is " << ((seq_time / rel_time - 1.0) * 100) 
              << "% faster\n\n";
}

int main() {
    const std::vector<int> thread_counts = {4};
    const int iterations = 10000000;
    
    std::cout << "Comparing sequential consistency vs release store ordering\n\n";
    
    for (int threads : thread_counts) {
        benchmark_stores(threads, iterations);
    }
    
    return 0;
}
