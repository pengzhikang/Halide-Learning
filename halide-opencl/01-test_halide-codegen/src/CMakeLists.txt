

#<-------------------------------------------------->

#设置c++的版本并添加多线程的使用
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -pthread")

#设置输出文件的路径
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/release)
#添加依赖库路径
set(Halide_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../3rdparty/halide/lib/cmake/Halide")
find_package(Halide REQUIRED)
link_directories(/usr/lib)
# link_directories(/usr/local/lib)
link_directories("${CMAKE_CURRENT_SOURCE_DIR}/../3rdparty/halide/lib")
# set(OPENCV_dep_LIBS opencv_imgproc opencv_imgcodecs opencv_core opencv_dnn opencv_highgui opencv_videoio )
# set(TENGINE_dep_LIBS tengine-lite)
# set(ACL_dep_LIBS arm_compute_core arm_compute arm_compute_graph)

#添加opencv、acl、tengine的头文件路径
include_directories(/usr/include)
# include_directories(/usr/local/include)
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/../3rdparty/halide/share/tools")
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/../3rdparty/halide/include")
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/../include")

# add_definitions(D__SSE2__)
# add_definitions(D__OPENMP)

# 查找当前目录的所有源文件
set(REQUIRE_CPP 
    lesson_12_using_the_gpu.cpp
)
#指定生成目标
add_executable(test ${REQUIRE_CPP})
target_link_libraries(test Halide)
target_link_libraries(test Halide::ImageIO)
target_link_libraries(test stdc++fs)

