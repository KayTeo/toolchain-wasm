#include <atomic>
#include <cstdio>
#include <thread>
#include <vector>

std::atomic<int> global_value{0};  // Global atomic variable

int main() {
	
	std::vector<std::thread> threads;

	threads.emplace_back( [](){
		global_value.store(314159, std::memory_order_release);
	});

	threads.emplace_back( [](){
		global_value.store(271828, std::memory_order_release);
	});

	// Store operation with sequential consistency
	global_value.store(1618033, std::memory_order_release);
    
	for(auto& thread : threads){
		thread.join();
	}

	
	// Load to verify
	int loaded = global_value.load(std::memory_order_seq_cst);
	printf("Loaded value: %d\n", loaded);
    
	return 0;
}
