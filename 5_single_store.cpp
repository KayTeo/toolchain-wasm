#include <atomic>

std::atomic<int> global_value{0};  // Global atomic variable

int main() {
	//global_value.store(325, std::memory_order_release);
   	global_value.store(374, std::memory_order_seq_cst); 
   	global_value.store(4, std::memory_order_seq_cst); 
	return 0;
}

