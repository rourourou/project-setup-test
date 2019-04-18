cmake_minimum_required(VERSION 3.11)

project(project_setup_test)


list (APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")
list (APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake/modules")
message(STATUS "CMAKE_PREFIX_PATH is:" $ENV{CMAKE_PREFIX_PATH})
message(STATUS "CPATH is:" $ENV{CPATH})

#find_package(Eigen3 3.3 REQUIRED NO_MODULE)

if(POLICY CMP0074)
    cmake_policy(SET CMP0074 NEW)
endif()

list (APPEND EIGEN3_ROOT_DIR "/HTOpt/libs/eigen/3.3.4")
list (APPEND EIGEN3_ROOT "/HTOpt/libs/eigen/3.3.4")
find_package(Eigen3 3.3 REQUIRED)

set(CMAKE_CXX_STANDARD 14)


add_executable(project_setup_test main.cpp)
target_link_libraries(project_setup_test Eigen3::Eigen)