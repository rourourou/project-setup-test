project(FMM-tests)


set(TARGET_NAME tests)

add_executable(${TARGET_NAME}
        main.cpp
        util.test.cpp
        )

set_target_properties(${TARGET_NAME} PROPERTIES
        CXX_STANDARD 14)

target_link_libraries(${TARGET_NAME}
        PUBLIC util)

target_include_directories(${TARGET_NAME}
        PUBLIC ../external/catch2/)

include(CTest)
include(ParseAndAddCatchTests)
ParseAndAddCatchTests(tests)
