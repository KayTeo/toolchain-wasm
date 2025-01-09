#include <iostream>
#include <atomic>
#include <thread>
#include <random>

constexpr size_t NUM_THREADS = 4;
constexpr size_t NUM_ITERATIONS = 1'000'000;

// Shared variables to operate on
std::atomic<bool> start_flag{false};
std::atomic<int> threads_ready{0};

// Starting pistol
void wait_for_start() {
	threads_ready.fetch_add(1);
	while (!start_flag.load()){
		//
	}
}

void benchmark_atomic_rel(std::vector<double>& times) {
	std::vector<std::thread> threads;
	volatile std::atomic<int> shared_counter{0};

	for (size_t t = 0; t < NUM_THREADS; t++) {
		threads.emplace_back( [&times, t, &shared_counter](){
	                std::mt19937 gen(std::random_device{}());		
			//Threading code
			wait_for_start();

			auto start = std::chrono::high_resolution_clock::now();
			for(size_t i = 0; i < NUM_ITERATIONS; i++){
				//Benchmarked atomic
				
				//shared_counter.store(gen() + shared_counter.load(), std::memory_order_release);
				shared_counter.store(1, std::memory_order_release);
			}
			auto end = std::chrono::high_resolution_clock::now();

			times[t] = std::chrono::duration<double, std::nano>(end - start).count() / NUM_ITERATIONS;
		});
	}

	threads_ready = 0;
	start_flag = true;

	for (auto& thread : threads) {
		thread.join();
	}

	start_flag = false;

	printf("Benchmark final result: %d\n", shared_counter.load());
}

int main(){
	double net = 0;
	std::vector<double> times(NUM_THREADS, 0.0);
	benchmark_atomic_rel(times);
	for(int i = 0; i < times.size(); i++){
		net += times[i];
		printf("Thread %d, time %f\n", i, times[i]);
	}
	net = net / NUM_THREADS;
	printf("Total average time: %f\n", net);
	return 0;
}
