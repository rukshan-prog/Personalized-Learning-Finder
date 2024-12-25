//
// Created by Rasintha_Rukshan on 23/12/2024.
//

#include <stdlib.h>
#include <stdio.h>
#include <dbcon.h>
#include <handle_tables.h>

int drop_tables();
int create_user_table();
int create_course_table();
int create_skill_table();
int create_passion_table();
int create_course_skill_table();
int create_course_passion_table();
int create_user_skill_table();
int create_user_passion_table();
int create_user_course_table();
int create_user_skill_passion_table();
int create_course_skill_passion_table();
int drop_user_table();
int drop_course_table();
int drop_skill_table();
int drop_passion_table();
int drop_course_skill_table();
int drop_course_passion_table();
int drop_user_skill_table();
int drop_user_passion_table();
int drop_user_course_table();
int drop_user_skill_passion_table();
int drop_course_skill_passion_table();



int create_tables() {
    initDbConnection();
    create_user_table();
    create_course_table();
    create_skill_table();
    create_passion_table();
    create_course_skill_table();
    create_course_passion_table();
    create_user_skill_table();
    create_user_passion_table();
    create_user_course_table();
    create_user_skill_passion_table();
    create_course_skill_passion_table();
    closeDbConnection();
    return 1;
}

int drop_tables() {
    initDbConnection();
    drop_user_table();
    drop_course_table();
    drop_skill_table();
    drop_passion_table();
    drop_course_skill_table();
    drop_course_passion_table();
    drop_user_skill_table();
    drop_user_passion_table();
    drop_user_course_table();
    drop_user_skill_passion_table();
    drop_course_skill_passion_table();
    closeDbConnection();
    return 1;
}

int create_user_table() {
    return 1;
}

int create_course_table() {
    return 1;
}

int create_skill_table() {
    return 1;
}

int create_passion_table() {
    return 1;
}

int create_course_skill_table() {
    return 1;
}

int create_course_passion_table() {
    return 1;
}

int create_user_skill_table() {
    return 1;
}

int create_user_passion_table() {
    return 1;
}

int create_user_course_table() {
    return 1;
}

int create_user_skill_passion_table() {
    return 1;
}

int create_course_skill_passion_table() {
    return 1;
}

int drop_user_table() {
    return 1;
}

int drop_course_table() {
    return 1;
}

int drop_skill_table() {
    return 1;
}

int drop_passion_table() {
    return 1;
}

int drop_course_skill_table() {
    return 1;
}

int drop_course_passion_table() {
    return 1;
}

int drop_user_skill_table() {
    return 1;
}

int drop_user_passion_table() {
    return 1;
}

int drop_user_course_table() {
    return 1;
}

int drop_user_skill_passion_table() {
    return 1;
}

int drop_course_skill_passion_table() {
    return 1;
}