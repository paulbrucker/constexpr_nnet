#ifndef CT_VECTOR_H
#define CT_VECTOR_H

#include <type_traits>
#include <initializer_list>
#include <stdexcept>
#include <string>

// Workaround data container that wraps a simple array. Its purpose is to be initialized at compile time, however it can also be
// instanciated at runtime (but beyond memory unefficiency). Public functions working analoge to
// to std::vector. !Size of memory that will be allocated on the stack (at compile time) will be
// MAX_SIZE * sizeof(T)!

template <typename T, std::size_t MAX_SIZE>
class CTVector
{
private:
    T data[MAX_SIZE] = {};
    std::size_t m_size = 0; // Number of elements in the array

public:
    // CONSTRUCTORS
    constexpr CTVector() = default;

    constexpr CTVector(T value)
    {
        m_size = MAX_SIZE;
        for(int i = 0; i < m_size; ++i)
        {
            data[i] = value;
        }
    }

    constexpr CTVector(std::initializer_list<T> d)
    {
        if (d.size() > MAX_SIZE)
        {
            throw std::out_of_range("Too many elements in initializer list.");
        }

        auto i = 0;
        for (auto &e : d)
        {
            data[i] = e;
            ++i;
        }
        m_size = d.size();
    }

    // SIZE
    constexpr std::size_t size(void) const { return m_size; }
    constexpr std::size_t max_size(void) const { return MAX_SIZE; }

    // BACK
    constexpr T &back()
    {
        if (m_size == 0)
        {
            throw std::range_error("Vector is empty.");
        }
        return data[m_size - 1];
    }

    constexpr const T &back() const
    {
        if (m_size == 0)
        {
            throw std::range_error("Vector is empty.");
        }
        return data[m_size - 1];
    }

    // MODIFIERS
    constexpr void push_back(const T &e)
    {
        if (m_size < MAX_SIZE)
        {
            data[m_size] = e;
            ++m_size;
        }
    }

    // DIRECT ACCESS
    constexpr const T &operator[](const std::size_t index) const
    {
        if (index >= m_size)
        {
            throw std::out_of_range("Index " + std::to_string(index) + " out of range.");
        }

        return data[index];
    }

    constexpr T &operator[](const std::size_t index)
    {
        if (index >= m_size)
        {
            throw std::out_of_range("Index " + std::to_string(index) + " out of range.");
        }

        return data[index];
    }

    // ITERATORS
    constexpr const T *begin(void) const
    {
        return data;
    }

    constexpr const T *end(void) const
    {
        return data + m_size;
    }
};

#endif