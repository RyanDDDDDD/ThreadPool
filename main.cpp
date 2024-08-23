#include <iostream>

#include "ThreadPool.h"

int main() {
    std::cout << "=======================" << std::endl;
    auto task = []{std::cout << "add task" << std::endl;};

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
