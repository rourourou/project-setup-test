project(FFM-app)


set(app_SOURCES
        src/main.cpp
        )

add_executable(app ${app_SOURCES})
set_target_properties(app PROPERTIES
        CXX_STANDARD 14)
target_link_libraries(app PRIVATE util)
