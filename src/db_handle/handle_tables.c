//
// Created by Rasintha_Rukshan on 23/12/2024.
//

#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <dbcon.h>
#include <color.h>
#include <handle_tables.h>

bool create_user_table();
bool create_course_table();
bool create_skill_table();
bool create_passion_table();
bool create_course_skill_table();
bool create_course_passion_table();
bool create_user_skill_table();
bool create_user_passion_table();
bool create_user_course_table();
bool create_user_skill_passion_table();
bool create_course_skill_passion_table();
bool drop_user_table();
bool drop_course_table();
bool drop_skill_table();
bool drop_passion_table();
bool drop_course_skill_table();
bool drop_course_passion_table();
bool drop_user_skill_table();
bool drop_user_passion_table();
bool drop_user_course_table();
bool drop_user_skill_passion_table();
bool drop_course_skill_passion_table();


bool create_tables() {
    if (initDbConnection() == false) { printf("%sDatabase connection failed.%s\n", ERROR, RESET); return false; }
    else if (create_user_table() == false) { printf("%sUser table creation failed.%s\n", ERROR, RESET); return false; }
    else if (create_course_table() == false) { printf("%sCourse table creation failed.%s\n", ERROR, RESET); return false; }
    else if (create_skill_table() == false) { printf("%sSkill table creation failed.%s\n", ERROR, RESET); return false; }
    else if (create_passion_table() == false) { printf("%sPassion table creation failed.%s\n", ERROR, RESET); return false; }
    else if (create_course_skill_table() == false) { printf("%sCourse skill table creation failed.%s\n", ERROR, RESET); return false; }
    else if (create_course_passion_table() == false) { printf("%sCourse passion table creation failed.%s\n", ERROR, RESET); return false; }
    else if (create_user_skill_table() == false) { printf("%sUser skill table creation failed.%s\n", ERROR, RESET); return false; }
    else if (create_user_passion_table() == false) { printf("%sUser passion table creation failed.%s\n", ERROR, RESET); return false; }
    else if (create_user_course_table() == false) { printf("%sUser course table creation failed.%s\n", ERROR, RESET); return false; }
    else if (create_user_skill_passion_table() == false) { printf("%sUser skill passion table creation failed.%s\n", ERROR, RESET); return false; }
    else if (create_course_skill_passion_table() == false) { printf("%sCourse skill passion table creation failed.%s\n", ERROR, RESET); return false; }
    else { printf("%sTables created successfully.%s\n", SUCCESS, RESET); closeDbConnection(); }
    return true;
}

bool drop_tables() {
    if (initDbConnection() == false) { printf("%sDatabase connection failed.%s\n", ERROR, RESET); return false; }
    else if (drop_user_table() == false) { printf("%sUser table drop failed.%s\n", ERROR, RESET); return false; }
    else if (drop_course_table() == false) { printf("%sCourse table drop failed.%s\n", ERROR, RESET); return false; }
    else if (drop_skill_table() == false) { printf("%sSkill table drop failed.%s\n", ERROR, RESET); return false; }
    else if (drop_passion_table() == false) { printf("%sPassion table drop failed.%s\n", ERROR, RESET); return false; }
    else if (drop_course_skill_table() == false) { printf("%sCourse skill table drop failed.%s\n", ERROR, RESET); return false; }
    else if (drop_course_passion_table() == false) { printf("%sCourse passion table drop failed.%s\n", ERROR, RESET); return false; }
    else if (drop_user_skill_table() == false) { printf("%sUser skill table drop failed.%s\n", ERROR, RESET); return false; }
    else if (drop_user_passion_table() == false) { printf("%sUser passion table drop failed.%s\n", ERROR, RESET); return false; }
    else if (drop_user_course_table() == false) { printf("%sUser course table drop failed.%s\n", ERROR, RESET); return false; }
    else if (drop_user_skill_passion_table() == false) { printf("%sUser skill passion table drop failed.%s\n", ERROR, RESET); return false; }
    else if (drop_course_skill_passion_table() == false) { printf("%sCourse skill passion table drop failed.%s\n", ERROR, RESET); return false; }
    else { printf("%sTables dropped successfully.%s\n", SUCCESS, RESET); closeDbConnection(); }
    return true;
}

bool create_user_table() {
    return true;
}

bool create_course_table() {
    return true;
}

bool create_skill_table() {
    return true;
}

bool create_passion_table() {
    return true;
}

bool create_course_skill_table() {
    return true;
}

bool create_course_passion_table() {
    return true;
}

bool create_user_skill_table() {
    return true;
}

bool create_user_passion_table() {
    return true;
}

bool create_user_course_table() {
    return true;
}

bool create_user_skill_passion_table() {
    return true;
}

bool create_course_skill_passion_table() {
    return true;
}

bool drop_user_table() {
    return true;
}

bool drop_course_table() {
    return true;
}

bool drop_skill_table() {
    return true;
}

bool drop_passion_table() {
    return true;
}

bool drop_course_skill_table() {
    return true;
}

bool drop_course_passion_table() {
    return true;
}

bool drop_user_skill_table() {
    return true;
}

bool drop_user_passion_table() {
    return true;
}

bool drop_user_course_table() {
    return true;
}

bool drop_user_skill_passion_table() {
    return true;
}

bool drop_course_skill_passion_table() {
    return true;
}