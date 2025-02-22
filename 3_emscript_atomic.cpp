#include <atomic>
#include <cstdio>
#include <thread>
#include <vector>

std::atomic<int> global_value{0};  // Global atomic variable

void threadFunction() {
	for(int i = 0; i < 10000000; i++){
		global_value.store(314159, std::memory_order_release);
	}
}

int main() {
	
	std::vector<std::thread> threads;

	threads.emplace_back(threadFunction);
	threads.emplace_back(threadFunction);
	threads.emplace_back(threadFunction);
	threads.emplace_back(threadFunction);
	
	for(auto& thread : threads){
		thread.join();
	}

	
	// Load to verify
	int loaded = global_value.load(std::memory_order_seq_cst);
	printf("Loaded value: %d\n", loaded);
    
	return 0;
}

