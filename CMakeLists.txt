cmake_minimum_required(VERSION 3.11)
project(project_setup_test)

#message(STATUS "CMAKE_PREFIX_PATH is:" $ENV{CMAKE_PREFIX_PATH})
#message(STATUS "CPATH is:" $ENV{CPATH})

find_package(Eigen3 3.3 REQUIRED NO_MODULE)

set(CMAKE_CXX_STANDARD 14)


add_executable(project_setup_test main.cpp)
target_link_libraries(project_setup_test Eigen3::Eigen)