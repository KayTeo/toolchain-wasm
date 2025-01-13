#include <atomic>
#include <iostream>
#include <thread>
#include <vector>
#include <cassert>
#include <chrono>

//Minimally need 2 atomics to test for ordering race conditions
std::atomic<int> x{0};
std::atomic<int> y{0};

int r1, r2;  // Non-atomic variables to store observations

//Testing two kinds of ordering guarantees, relaxed and seq cst
void thread1_relaxed() {
    x.store(31415, std::memory_order_relaxed);
    r1 = y.load(std::memory_order_relaxed);
}

void thread2_relaxed() {
    y.store(31415, std::memory_order_relaxed);
    r2 = x.load(std::memory_order_relaxed);
}

void thread1_seq_cst() {
    x.store(31415, std::memory_order_seq_cst);
    r1 = y.load(std::memory_order_seq_cst);
}

void thread2_seq_cst() {
    y.store(31415, std::memory_order_seq_cst);
    r2 = x.load(std::memory_order_seq_cst);
}

void test_relaxed(int iterations) {
    int race_found = 0;

    auto start = std::chrono::high_resolution_clock::now();

    for(int i = 0; i < iterations; i++) {
        x = 0;
        y = 0;
        r1 = r2 = 0;
        
        std::thread t1(thread1_relaxed);
        std::thread t2(thread2_relaxed);
        
        t1.join();
        t2.join();
        
        // Check if we observed the race condition
        // r1 = r2 = 0 means both loads happened before both stores
        if(r1 == 0 && r2 == 0) {
            race_found++;
        }
    }
 
    auto end = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end - start);
    printf("Time (ms): %d\n", duration / 1000);   
    std::cout << "Relaxed ordering race conditions found: " 
              << race_found << " out of " << iterations << std::endl;
}

void test_seq_cst(int iterations) {
    int race_found = 0;
    
    auto start = std::chrono::high_resolution_clock::now();

    for(int i = 0; i < iterations; i++) {
        x = 0;
        y = 0;
        r1 = r2 = 0;
        
        std::thread t1(thread1_seq_cst);
        std::thread t2(thread2_seq_cst);
        
        t1.join();
        t2.join();
        
        // This should never happen with sequential consistency
        if(r1 == 0 && r2 == 0) {
            race_found++;
        }
    }
    
    auto end = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end - start);
    printf("Time (ms): %d\n", duration.count() / 1000);
    std::cout << "Sequential consistency race conditions found: " 
              << race_found << " out of " << iterations << std::endl;
}

int main() {
    const int iterations = 543;
    printf("Starting test...\n");    
    std::cout << "Testing with relaxed memory ordering...\n";
    test_relaxed(iterations);
    
    std::cout << "\nTesting with sequential consistency...\n";
    test_seq_cst(iterations);
    
    return 0;
}
