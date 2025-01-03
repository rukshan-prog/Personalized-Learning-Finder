//
// Created by Rasintha_Rukshan on 23/12/2024.
//

#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <dbcon.h>
#include <color.h>
#include <handle_tables.h>

bool create_course_table();
bool create_skill_table();
bool create_passion_table();
bool create_course_skill_table();
bool create_course_passion_table();
bool drop_course_table();
bool drop_skill_table();
bool drop_passion_table();
bool drop_course_skill_table();
bool drop_course_passion_table();



bool create_tables() {
    if (initDbConnection() == false) { printf("%sDatabase connection failed.%s\n", ERROR, RESET); return false; }
    else if (create_course_table() == false) { printf("%sCourse table creation failed.%s\n", ERROR, RESET); return false; }
    else if (create_skill_table() == false) { printf("%sSkill table creation failed.%s\n", ERROR, RESET); return false; }
    else if (create_passion_table() == false) { printf("%sPassion table creation failed.%s\n", ERROR, RESET); return false; }
    else if (create_course_skill_table() == false) { printf("%sCourse skill table creation failed.%s\n", ERROR, RESET); return false; }
    else if (create_course_passion_table() == false) { printf("%sCourse passion table creation failed.%s\n", ERROR, RESET); return false; }
    else { printf("%sTables created successfully.%s\n", SUCCESS, RESET); closeDbConnection(); }
    return true;
}

bool drop_tables() {
    if (initDbConnection() == false) { printf("%sDatabase connection failed.%s\n", ERROR, RESET); return false; }
    else if (drop_course_table() == false) { printf("%sCourse table drop failed.%s\n", ERROR, RESET); return false; }
    else if (drop_skill_table() == false) { printf("%sSkill table drop failed.%s\n", ERROR, RESET); return false; }
    else if (drop_passion_table() == false) { printf("%sPassion table drop failed.%s\n", ERROR, RESET); return false; }
    else if (drop_course_skill_table() == false) { printf("%sCourse skill table drop failed.%s\n", ERROR, RESET); return false; }
    else if (drop_course_passion_table() == false) { printf("%sCourse passion table drop failed.%s\n", ERROR, RESET); return false; }
    else { printf("%sTables dropped successfully.%s\n", SUCCESS, RESET); closeDbConnection(); }
    return true;
}


bool create_course_table() {
    const char *sql = "CREATE TABLE IF NOT EXISTS courses (\n"
                      "                         CourseID INTEGER PRIMARY KEY AUTOINCREMENT,\n"
                      "                         CourseName TEXT NOT NULL,\n"
                      "                         Institution TEXT NOT NULL,\n"
                      "                         Category TEXT NOT NULL, -- e.g., \"Programming\", \"Arts\"\n"
                      "                         Description TEXT,\n"
                      "                         Duration TEXT, -- e.g., \"3 months\", \"6 weeks\"\n"
                      "                         Fee REAL, -- Course fee amount\n"
                      "                         Currency TEXT DEFAULT 'USD', -- Currency code, e.g., 'USD', 'EUR'\n"
                      "                         MinAge INTEGER, -- Minimum age to enroll\n"
                      "                         Gender TEXT CHECK(Gender IN ('Male', 'Female', 'Any')) DEFAULT 'Any', -- Gender requirement\n"
                      "                         MinEducationLevel TEXT -- e.g., \"High School\", \"Bachelor's\"\n"
                      ");";

    if ( executeQuery(sql) == 0) {
        printf("%sCourse table creation failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool create_skill_table() {
    const char *sql = "CREATE TABLE IF NOT EXISTS skills (\n"
                      "                        SkillID INTEGER PRIMARY KEY AUTOINCREMENT,\n"
                      "                        SkillName TEXT NOT NULL UNIQUE\n"
                      ");";

    if ( executeQuery(sql) == 0) {
        printf("%sSkill table creation failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool create_passion_table() {
    const char *sql = "CREATE TABLE IF NOT EXISTS passions (\n"
                      "                          PassionID INTEGER PRIMARY KEY AUTOINCREMENT,\n"
                      "                          PassionName TEXT NOT NULL UNIQUE\n"
                      ");";

    if ( executeQuery(sql) == 0) {
        printf("%sPassion table creation failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool create_course_skill_table() {
    const char *sql = "CREATE TABLE IF NOT EXISTS course_skills (\n"
                      "                              CourseSkillID INTEGER PRIMARY KEY AUTOINCREMENT,\n"
                      "                              CourseID INTEGER NOT NULL,\n"
                      "                              SkillID INTEGER NOT NULL,\n"
                      "                              FOREIGN KEY (CourseID) REFERENCES Courses (CourseID),\n"
                      "                              FOREIGN KEY (SkillID) REFERENCES Skills (SkillID)\n"
                      ");";

    if ( executeQuery(sql) == 0) {
        printf("%sCourse skill table creation failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool create_course_passion_table() {
    const char *sql = "CREATE TABLE IF NOT EXISTS course_passions (\n"
                      "                                CoursePassionID INTEGER PRIMARY KEY AUTOINCREMENT,\n"
                      "                                CourseID INTEGER NOT NULL,\n"
                      "                                PassionID INTEGER NOT NULL,\n"
                      "                                FOREIGN KEY (CourseID) REFERENCES Courses (CourseID),\n"
                      "                                FOREIGN KEY (PassionID) REFERENCES Passions (PassionID)\n"
                      ");";

    if ( executeQuery(sql) == 0) {
        printf("%sCourse passion table creation failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool drop_course_skill_table() {
    const char *sql = "DROP TABLE IF EXISTS course_skills;";
    if ( executeQuery(sql) == 0) {
        printf("%sCourse skill table drop failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool drop_course_passion_table() {
    const char *sql = "DROP TABLE IF EXISTS course_passions;";
    if ( executeQuery(sql) == 0) {
        printf("%sCourse passion table drop failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool drop_course_table() {
    const char *sql = "DROP TABLE IF EXISTS courses;";
    if ( executeQuery(sql) == 0) {
        printf("%sCourse table drop failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool drop_skill_table() {
    const char *sql = "DROP TABLE IF EXISTS skills;";
    if ( executeQuery(sql) == 0) {
        printf("%sUser skill table drop failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool drop_passion_table() {
    const char *sql = "DROP TABLE IF EXISTS passions;";
    if ( executeQuery(sql) == 0) {
        printf("%sUser passion table drop failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

