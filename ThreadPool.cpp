//
// Created by user on 8/23/2024.
//

#include "ThreadPool.h"

ThreadPool::ThreadPool(uint32_t num)
    :_num{std::max(num, std::thread::hardware_concurrency() + 1)}
    ,_stop{true}
{

}

ThreadPool::~ThreadPool() {
    _stop.store(true, std::memory_order_release);
    _cd.notify_all();
    for(uint32_t i = 0; i < _num; ++i) {
        if (_threads[i].joinable()) {
            _threads[i].join();
        }
    }
}

void ThreadPool::start() {
    _stop.store(false, std::memory_order_release);
    for(uint32_t i = 0; i < _num; ++i) {
        _threads.emplace_back(&ThreadPool::run, this);
    }
}

void ThreadPool::stop() {
    std::lock_guard<std::mutex> lock(_mtx);
    _stop.store(true, std::memory_order_release);
}

int ThreadPool::getThreadCount() {
    return _num;
}

void ThreadPool::addTask(std::function<void()> task) {
    std::lock_guard<std::mutex> lock(_mtx);
    if (_stop.load(std::memory_order_acquire))
        return;

    _tasks.push(std::move(task));
    _cd.notify_one();
}

void ThreadPool::run() {
    while(notStopped()) {
        std::unique_lock<std::mutex> lock(_mtx);
        _cd.wait(lock, [&] {
            return !_stop.load(std::memory_order_acquire) || !_tasks.empty();
        });

        if (_tasks.empty())
            break;

        std::function<void()> task = std::move(_tasks.front());
        task();
        _tasks.pop();
    }
}

bool ThreadPool::notStopped() {
    std::lock_guard<std::mutex> lock(_mtx);
    return !_stop.load(std::memory_order_acquire) || !_tasks.empty();
}
