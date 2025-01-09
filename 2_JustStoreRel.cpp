#include <atomic>
#include <iostream>

volatile std::atomic<int> shared_int{0};

void store_atomic_int(std::atomic<int> &atomInt){
	atomInt.store(42, std::memory_order_seq_cst);
};
