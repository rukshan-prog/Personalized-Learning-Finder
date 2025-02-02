//
// Created by Rasintha_Rukshan on 23/12/2024.
//


#include <stdio.h>
#include <stdbool.h>
#include <dbcon.h>
#include <color.h>
#include <handle_tables.h>
#include <errrorlog.h>

bool create_institution_table();
bool create_category_table();
bool create_currency_table();
bool create_gender_table();
bool create_min_education_level_table();
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
bool drop_institution_table();
bool drop_category_table();
bool drop_currency_table();
bool drop_gender_table();
bool drop_min_education_level_table();


bool create_tables() {

    // Create all required tables in order
    if (!create_institution_table() ||
        !create_category_table() ||
        !create_currency_table() ||
        !create_gender_table() ||
        !create_min_education_level_table() ||
        !create_course_table() ||
        !create_skill_table() ||
        !create_passion_table() ||
        !create_course_skill_table() ||
        !create_course_passion_table()) {
        printf("%sOne or more tables failed to create.%s\n", ERROR, RESET);
        logError("One or more tables failed to create");
        return false;
    }

    //printf("%sTables created successfully.%s\n", SUCCESS, RESET);

    closeDbConnection();
    return true;
}


bool drop_tables() {

    if (!drop_institution_table() ||
        !drop_category_table() ||
        !drop_currency_table() ||
        !drop_gender_table() ||
        !drop_min_education_level_table() ||
        !drop_course_table() ||
        !drop_skill_table() ||
        !drop_passion_table() ||
        !drop_course_skill_table() ||
        !drop_course_passion_table()) {
        printf("%sOne or more tables failed to drop.%s\n", ERROR, RESET);
        logError("One or more tables failed to drop");
        return false;
    }

    //printf("%sTables dropped successfully.%s\n", SUCCESS, RESET);
    return true;
}

bool create_institution_table() {
    const char *sql = "CREATE TABLE If Not Exists Institution (\n"
                      "                             InstitutionID INTEGER PRIMARY KEY AUTOINCREMENT,\n"
                      "                             InstitutionName TEXT NOT NULL UNIQUE\n"
                      ");";

    char *prompt = "Institution table created successfully.";

    if ( executeQuery(sql, prompt) == 0) {
        printf("%sInstitution table creation failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool create_category_table() {
    const char *sql = "CREATE TABLE If Not Exists Category (\n"
                      "                          CategoryID INTEGER PRIMARY KEY AUTOINCREMENT,\n"
                      "                          Category TEXT NOT NULL UNIQUE\n"
                      ");";

    char *prompt = "Category table created successfully.";
    if ( executeQuery(sql, prompt) == 0) {
        printf("%sCategory table creation failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool create_currency_table() {
    const char *sql = "CREATE TABLE If Not Exists Currency (\n"
                      "                        CurrencyID INTEGER PRIMARY KEY AUTOINCREMENT,\n"
                      "                        CurrencyName TEXT NOT NULL UNIQUE\n"
                      ");";

    char *prompt = "Currency table created successfully.";
    if (executeQuery(sql, prompt) == 0) {
        printf("%sCurrency table creation failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool create_gender_table() {
    const char *sql = "CREATE TABLE If Not Exists Gender (\n"
                      "                        GenderID INTEGER PRIMARY KEY AUTOINCREMENT,\n"
                      "                        GenderType TEXT NOT NULL UNIQUE -- e.g., 'Male', 'Female', 'Any'\n"
                      ");";
    char *prompt = "Gender table created successfully.";

    if ( executeQuery(sql, prompt) == 0) {
        printf("%sGender table creation failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool create_min_education_level_table() {
    const char *sql = "CREATE TABLE If Not Exists MinEducationLevel (\n"
                      "                                   EducationLevelID INTEGER PRIMARY KEY AUTOINCREMENT,\n"
                      "                                   EducationLevelName TEXT NOT NULL UNIQUE -- e.g., 'High School', 'Bachelor's'\n"
                      ");";

    char *prompt = "Min education level table created successfully.";

    if ( executeQuery(sql, prompt) == 0) {
        printf("%sMin education level table creation failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool create_course_table() {
    const char *sql = "CREATE TABLE IF NOT EXISTS Courses (\n"
                      "    CourseID INTEGER PRIMARY KEY AUTOINCREMENT,\n"
                      "    CourseName TEXT NOT NULL,\n"
                      "    InstitutionID INTEGER,\n"
                      "    CategoryID INTEGER,\n"
                      "    Description TEXT,\n"
                      "    Duration TEXT,\n"
                      "    Fee REAL,\n"
                      "    CurrencyID INTEGER,\n"
                      "    MinAge INTEGER,\n"
                      "    MaxAge INTEGER,\n"
                      "    GenderID INTEGER,\n"
                      "    MinEducationLevelID INTEGER,\n"
                      "    Level TEXT DEFAULT NULL,\n"
                      "    FOREIGN KEY (InstitutionID) REFERENCES Institution (InstitutionID),\n"
                      "    FOREIGN KEY (CategoryID) REFERENCES Category (CategoryID),\n"
                      "    FOREIGN KEY (CurrencyID) REFERENCES Currency (CurrencyID),\n"
                      "    FOREIGN KEY (GenderID) REFERENCES Gender (GenderID),\n"
                      "    FOREIGN KEY (MinEducationLevelID) REFERENCES MinEducationLevel (EducationLevelID)\n"
                      ");";

    char *prompt = "Course table created successfully.";

    if ( executeQuery(sql, prompt) == 0) {
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

    char *prompt = "Skill table created successfully.";

    if ( executeQuery(sql, prompt) == 0) {
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

    char *prompt = "Passion table created successfully.";

    if ( executeQuery(sql, prompt) == 0) {
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

    char *prompt = "Course skill table created successfully.";

    if ( executeQuery(sql, prompt) == 0) {
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

    char *prompt = "Course passion table created successfully.";

    if ( executeQuery(sql, prompt) == 0) {
        printf("%sCourse passion table creation failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool drop_course_skill_table() {
    const char *sql = "DROP TABLE IF EXISTS course_skills;";
    char *prompt = "Course skill table dropped successfully.";
    if ( executeQuery(sql, prompt) == 0) {
        printf("%sCourse skill table drop failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool drop_course_passion_table() {
    const char *sql = "DROP TABLE IF EXISTS course_passions;";
    char *prompt = "Course passion table dropped successfully.";
    if ( executeQuery(sql, prompt) == 0) {
        printf("%sCourse passion table drop failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool drop_course_table() {
    const char *sql = "DROP TABLE IF EXISTS courses;";
    char *prompt = "Courses table dropped successfully.";
    if ( executeQuery(sql, prompt) == 0) {
        printf("%sCourse table drop failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool drop_skill_table() {
    const char *sql = "DROP TABLE IF EXISTS skills;";
    char *prompt = "Skills table dropped successfully.";
    if ( executeQuery(sql, prompt) == 0) {
        printf("%sUser skill table drop failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool drop_passion_table() {
    const char *sql = "DROP TABLE IF EXISTS passions;";
    char *prompt = "Passions table dropped successfully.";
    if ( executeQuery(sql, prompt) == 0) {
        printf("%sUser passion table drop failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool drop_institution_table() {
    const char *sql = "DROP TABLE IF EXISTS institution;";
    char *prompt = "Institution table dropped successfully.";
    if ( executeQuery(sql, prompt) == 0) {
        printf("%sInstitution table drop failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool drop_category_table() {
    const char *sql = "DROP TABLE IF EXISTS category;";
    char *prompt = "Category table dropped successfully.";
    if ( executeQuery(sql, prompt) == 0) {
        printf("%sCategory table drop failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool drop_currency_table() {
    const char *sql = "DROP TABLE IF EXISTS currency;";
    char *prompt = "Currency table dropped successfully.";
    if ( executeQuery(sql, prompt) == 0) {
        printf("%sCurrency table drop failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool drop_gender_table() {
    const char *sql = "DROP TABLE IF EXISTS gender;";
    char *prompt = "Gender table dropped successfully.";
    if ( executeQuery(sql, prompt) == 0) {
        printf("%sGender table drop failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

bool drop_min_education_level_table() {
    const char *sql = "DROP TABLE IF EXISTS MinEducationLevel;";
    char *prompt = "Min education level table dropped successfully.";
    if ( executeQuery(sql, prompt) == 0) {
        printf("%sMin education level table drop failed.%s\n", ERROR, RESET);
        return false;
    }
    return true;
}

