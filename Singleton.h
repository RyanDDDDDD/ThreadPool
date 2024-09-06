#include <iostream>
#include <mutex>

template<typename T>
class Singleton{
public:
    static std::shared_ptr<T> getInstance() {
        static std::once_flag flag;
        std::call_once(flag, []{
            _instance = std::shared_ptr<T>(new T());
        });

        return _instance;
    }

    ~Singleton() = default;
private:
    Singleton() = default;
    Singleton(const Singleton&) = delete;
    Singleton& operator=(const Singleton&) = delete;

private:
    inline static std::shared_ptr<T> _instance = nullptr;
};