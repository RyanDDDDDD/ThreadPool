#include <iostream>
#include <random>

#include "ThreadPool.h"

int main() {
    std::cout << "=======================" << std::endl;
    auto task = []{std::this_thread::sleep_for(std::chrono::milliseconds((std::rand() % 10) + 1));};

    ThreadPool threadPool(3);
    threadPool.start();

    for (int i = 0; i < 100; ++i) {
        threadPool.addTask(task);
    }
    threadPool.stop();

    for (int i = 0; i < 100; ++i) {
        threadPool.addTask(task);
    }

    std::cout << "=======================" << std::endl;

    return 0;
}
