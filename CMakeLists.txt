cmake_minimum_required(VERSION 3.28)
project(ThreadPool)

set(CMAKE_CXX_STANDARD 20)



add_executable(ThreadPool main.cpp
                ThreadPool.h
                ThreadPool.cpp
                Singleton.h)

