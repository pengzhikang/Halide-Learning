
# CMake 最低版本号要求
cmake_minimum_required (VERSION 3.19)

# set(CMAKE_BUILD_TYPE "Release")
# 项目信息
project (mobilenet_shoot)

set(CMAKE_CXX_FLAGS "-O0 -Wall -Wextra -std=c++17")
set(CMAKE_CXX_FLAGS_RELEASE "$ENV{CMAKE_CXX_FLAGS}")
#设置c++的版本并添加多线程的使用
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -pthread")

add_subdirectory(./src)



