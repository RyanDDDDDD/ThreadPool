//
// Created by user on 8/23/2024.
//

#ifndef THREADPOOL_H
#define THREADPOOL_H

#include <atomic>
#include <functional>
#include <future>
#include <mutex>
#include <queue>
#include <thread>
#include <vector>

#include "Singleton.h"

class ThreadPool {
public:
    ~ThreadPool ();

    void start ();
    void stop ();
    int getThreadCount ();
    void addTask (std::function<void ()> task);

private:
    friend class Singleton<ThreadPool>;
    ThreadPool ();
    ThreadPool (const ThreadPool& other)            = delete;
    ThreadPool& operator= (const ThreadPool& other) = delete;

    void run ();
    bool notStopped ();

private:
    const uint32_t _num;
    std::queue<std::function<void ()>> _tasks;
    std::vector<std::thread> _threads;
    std::mutex _mtx;
    std::condition_variable _cd;
    std::atomic_bool _stop;
};


#endif // THREADPOOL_H
