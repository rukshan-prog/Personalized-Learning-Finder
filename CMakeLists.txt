# Specify CMake version
cmake_minimum_required(VERSION 3.16)

# Set project name
project(personalized_learning_finder)

# Set C standard
set(CMAKE_C_STANDARD 11)

# Add Include Directories
include_directories(src/header)

# Add executable
add_executable(plf main.c
        src/input/skill.c
        src/header/skill.h
        src/header/input.h
        src/input/input.c
        src/header/passion.h
        src/input/passion.c
        src/header/dbcon.h
        src/header/color.h
        src/input/user.c
        src/header/user.h
        src/db_handle/dbcon.c
        src/header/dbcon.h
        src/header/sqlite3.h
        src/db_handle/handle_tables.c
        src/header/handle_tables.h
        src/app/course_recommendation.c
        src/header/course_recommendation.h
        src/output/output.c
        src/header/output.h
        src/input/courses.c
        src/header/courses.c.h
        src/db_handle/inseart.c
        src/header/inseart.h
        src/db_handle/retrieve.c
        src/header/retrieve.h
)

# Add SQLite library path
set(SQLITE3_LIB_DIR ${CMAKE_SOURCE_DIR}/lib/sqLite3)
set(SQLITE3_INCLUDE_DIR ${SQLITE3_LIB_DIR}) # Assuming headers are in the same directory

# Include SQLite headers
include_directories(${SQLITE3_INCLUDE_DIR})

# Link SQLite library
target_link_libraries(plf PRIVATE ${SQLITE3_LIB_DIR}/libsqlite3.a)





