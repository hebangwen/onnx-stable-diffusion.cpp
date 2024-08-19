cmake_minimum_required(VERSION 3.0)

project(onnx-stable-diffusion.cpp)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")

set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR})

# include onnxruntime cmake file
list(APPEND CMAKE_PREFIX_PATH ${PROJECT_SOURCE_DIR}/3rd_party/onnxruntime/lib64/cmake/onnxruntime)
find_package(onnxruntime REQUIRED)

add_subdirectory(src)
