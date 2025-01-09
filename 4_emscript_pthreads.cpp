#include <atomic>
#include <cstdio>
#include <pthread.h>

std::atomic<int> global_value{0};  // Global atomic variable

void* task_1(void* arg) {
	global_value.store(314159, std::memory_order_seq_cst);
	return nullptr;
}

void* task_2(void* arg) {
	global_value.store(271828, std::memory_order_seq_cst);
	return nullptr;
}

void* task_3(void* arg) {
	global_value.store(1618033, std::memory_order_seq_cst);
	return nullptr;
}

int main() {

	pthread_t thread_1;
	pthread_t thread_2;
	pthread_t thread_3;

	pthread_create(&thread_1, NULL, task_1, NULL);
	pthread_create(&thread_2, NULL, task_2, NULL);
	pthread_create(&thread_3, NULL, task_2, NULL);
	
	// Load to verify
	int loaded = global_value.load(std::memory_order_seq_cst);
	printf("Loaded value: %d\n", loaded);
    	pthread_join(thread_1, NULL);
    	pthread_join(thread_2, NULL);
    	pthread_join(thread_3, NULL);
	return 0;
}
