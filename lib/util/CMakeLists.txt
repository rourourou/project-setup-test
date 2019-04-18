project(FMM-lib-util)


if(POLICY CMP0074)
    cmake_policy(SET CMP0074 NEW)
endif()


#list (APPEND Eigen3_ROOT "/HTOpt/libs/eigen/3.3.4/")
#list (APPEND EIGEN3_ROOT "/HTOpt/libs/eigen/3.3.4/")
#list (APPEND EIGEN3_ROOT_DIR "/HTOpt/libs/eigen/3.3.4/")

find_package(Eigen3 3.3.4 REQUIRED)



set(TARGET_NAME util)
set(${TARGET_NAME}_SOURCES
        src/util.cpp
        )

add_library(${TARGET_NAME} STATIC ${${TARGET_NAME}_SOURCES})

set_target_properties(${TARGET_NAME} PROPERTIES
        CXX_STANDARD 14)

target_link_libraries(${TARGET_NAME} Eigen3::Eigen)

target_include_directories(${TARGET_NAME}
        PUBLIC include
        PRIVATE src
        )



