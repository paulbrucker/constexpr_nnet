#include <vector>

class Container
{
private:
    template <typename T, typename... Args>
    void myPushBack(std::vector<T> &v, Args &&...args)
    {
        (v.push_back(args), ...); // (1)
    }
};