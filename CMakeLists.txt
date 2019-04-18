cmake_minimum_required(VERSION 3.11)

project(FMM)

list (APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")
list (APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake/modules")

list (APPEND Eigen3_ROOT "/HTOpt/libs/eigen/3.3.4/")
list (APPEND EIGEN3_ROOT "/HTOpt/libs/eigen/3.3.4/")
list (APPEND EIGEN3_ROOT_DIR "/HTOpt/libs/eigen/3.3.4/")

add_subdirectory(lib)
add_subdirectory(app)
add_subdirectory(tests)

enable_testing()