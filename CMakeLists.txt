cmake_minimum_required(VERSION 3.16)

project(personalized_learning_finder)

set(CMAKE_C_STANDARD 11)

include_directories(src/header)


add_executable(plf main.c
        src/input/skill.c
        src/header/skill.h
        src/header/input.h
        src/input/input.c
        database/db.c
        src/header/passion.h
        src/input/passion.c
        src/header/db.h
        src/ui/ui.c
        src/header/createUi.h)

