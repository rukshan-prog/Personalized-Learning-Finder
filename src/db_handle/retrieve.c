//
// Created by Rasintha_Rukshan on 26/12/2024.
//

#include <stdio.h>
#include <stdlib.h>
#include <sqlite3.h>
#include <string.h>
#include <color.h>
#include <course_recommendation.h>
#include <dbcon.h>
#include <input.h>
#include <retrieve.h>
#include <output.h>


void view_all_courses() {

    const int pageSize = 5;
    int offset = 0;

    while (1) {
        sqlite3_stmt *stmt;
        char *query;
        int rows = 0;

        // Count total rows
        query = sqlite3_mprintf("SELECT COUNT(*) FROM Courses;");
        retrieveData(query, &stmt);
        if (sqlite3_step(stmt) == SQLITE_ROW) {
            rows = sqlite3_column_int(stmt, 0);
        }
        sqlite3_reset(stmt);
        sqlite3_free(query);

        printf("%sTotal number of courses: %d%s\n", INFO, rows, RESET);

        // Fetch current page data
        query = sqlite3_mprintf("SELECT \n"
                                "    Courses.CourseID, \n"
                                "    Courses.CourseName, \n"
                                "    Category.Category\n"
                                "FROM \n"
                                "    Courses\n"
                                "INNER JOIN \n"
                                "    Category ON Courses.CategoryID = Category.CategoryID\n"
                                "LIMIT %d OFFSET %d;", pageSize, offset);
        retrieveData(query, &stmt);
        print_data_as_table(stmt);
        sqlite3_free(query);

        // Display pagination
        int pages = rows % pageSize == 0 ? rows / pageSize : (rows / pageSize) + 1;
        int viewPage = offset / pageSize + 1;
        printf("%sView page:%s ", INFO, RESET);
        for (int x = 1; x <= pages; x++) {
            if (x == viewPage) {
                printf(" %s%d%s", SUCCESS, x, RESET);
            } else {
                printf(" %d", x);
            }
        }
        printf("\n");

        printf("%s--Use Left Arrow to go back.\n--Right Arrow to go forward.\n--Enter to select a course%s", INFO, RESET);

        // Handle navigation input
        char *key = KeyInput();
        if (strcmp(key, "Left Arrow") == 0 && offset >= pageSize) {
            offset -= pageSize;
        } else if (strcmp(key, "Right Arrow") == 0 && offset + pageSize < rows) {
            offset += pageSize;
        } else if (strcmp(key, "Enter") == 0) {
            // Clear screen and reset statement
            sqlite3_reset(stmt);
            break;
        }
        system("cls");
    }

    // Ask user to view course details
    char* options[] = {
            "yes",
            "no"
    };
    int numOptions = 2;
    char* choice = getChoice(options, numOptions, "\n\nDo you want to view course details?");
    if (strcmp(choice, "yes") == 0) {
        view_course_details(getInteger("To view course details enter course id"));
    }

}

void view_course_details(int courseID) {
    sqlite3_stmt *stmt;
    char *query;
    query = sqlite3_mprintf("SELECT \n"
                            "    Courses.CourseID, \n"
                            "    Courses.CourseName, \n"
                            "    Courses.Description, \n"
                            "    Courses.Level, \n"
                            "    Courses.Duration, \n"
                            "    Courses.Fee, \n"
                            "    Currency.CurrencyName, \n"
                            "    Courses.MinAge, \n"
                            "    Courses.MaxAge, \n"
                            "    Gender.GenderType, \n"
                            "    MinEducationLevel.EducationLevelName, \n"
                            "    Institution.InstitutionName, \n"
                            "    Category.Category\n"
                            "FROM \n"
                            "    Courses\n"
                            "INNER JOIN \n"
                            "    Currency ON Courses.CurrencyID = Currency.CurrencyID\n"
                            "INNER JOIN \n"
                            "    Gender ON Courses.GenderID = Gender.GenderID\n"
                            "INNER JOIN \n"
                            "    MinEducationLevel ON Courses.MinEducationLevelID = MinEducationLevel.EducationLevelID\n"
                            "INNER JOIN \n"
                            "    Institution ON Courses.InstitutionID = Institution.InstitutionID\n"
                            "INNER JOIN \n"
                            "    Category ON Courses.CategoryID = Category.CategoryID\n"
                            "WHERE \n"
                            "    Courses.CourseID = %d;", courseID);
    retrieveData(query, &stmt);
    sqlite3_reset(stmt);


    if (sqlite3_step(stmt) == SQLITE_ROW) {
        print_course_details(stmt);
    } else{
        printf("%sCourses Id '%d' has not exist!%s", ERROR, courseID, RESET);
    }


}

void search_courses() {
    char *str = getStringWithoutVerification("Search");

    const int pageSize = 5;
    int offset = 0;

    while (1) {
        sqlite3_stmt *stmt;
        char *query;
        int rows = 0;

        // Count total rows
        query = sqlite3_mprintf("SELECT COUNT(*) FROM Courses WHERE Courses.CourseName LIKE '%%%q%%';", str);
        retrieveData(query, &stmt);
        if (sqlite3_step(stmt) == SQLITE_ROW) {
            rows = sqlite3_column_int(stmt, 0);
        }
        sqlite3_reset(stmt);
        sqlite3_free(query);

        printf("%sTotal number of courses: %d%s\n", INFO, rows, RESET);

        // Fetch current page data
        query = sqlite3_mprintf("SELECT Courses.CourseID, Courses.CourseName\n"
                                "FROM Courses\n"
                                "WHERE Courses.CourseName LIKE '%%%q%%'\n"
                                "LIMIT %d OFFSET %d;", str, pageSize, offset);
        retrieveData(query, &stmt);
        printf("\n%s---------------------Search result------------------%s\n", WARNING, RESET);
        print_data_as_table(stmt);
        sqlite3_free(query);

        // Display pagination
        int pages = rows % pageSize == 0 ? rows / pageSize : (rows / pageSize) + 1;
        int viewPage = offset / pageSize + 1;
        printf("%sView page:%s ", INFO, RESET);
        for (int x = 1; x <= pages; x++) {
            if (x == viewPage) {
                printf(" %s%d%s", SUCCESS, x, RESET);
            } else {
                printf(" %d", x);
            }
        }
        printf("\n");

        printf("%s--Use Left Arrow to go back.\n--Right Arrow to go forward.\n--Enter to select a course%s", INFO, RESET);

        // Handle navigation input
        char *key = KeyInput();
        if (strcmp(key, "Left Arrow") == 0 && offset >= pageSize) {
            offset -= pageSize;
        } else if (strcmp(key, "Right Arrow") == 0 && offset + pageSize < rows) {
            offset += pageSize;
        } else if (strcmp(key, "Enter") == 0) {
            // Clear screen and reset statement
            sqlite3_reset(stmt);
            break;
        }
        system("cls");
    }

    // Ask user to view course details
    char* options[] = {
            "yes",
            "no"
    };
    int numOptions = 2;

    char* choice = getChoice(options, numOptions, "\n\nDo you want to view course details?");
    if (strcmp(choice, "yes") == 0) {
        view_course_details(getInteger("To view course details enter course id"));
    }
}

void recommend_courses_by_skills_and_passions(UserData *userData) {


    sqlite3_stmt *stmt = NULL;
    char *query;
    int rows = 0;

    // setup edu level
    char* options[] = {
            "O/L",
            "A/L",
            "Bachelor",
            "Master",
            "PHD"
    };
    int numOptions = sizeof(options) / sizeof(options[0]);
    char* edu;

    // Compare the edu using strcmp
    for (int i = 0; i < numOptions; i++) {
        if (strcmp(userData->educationLevel, options[i]) == 0) {
            if (i < numOptions - 1) {
                edu = options[i + 1]; // Set to next level if not at the last
            } else {
                edu = options[i]; // Set to the current if at the last level
            }
            break;
        }
    }



    // Bind skills
    char *skills = "";
    for (int i = 0; i < userData->skills.skillCount; i++) {
        if (i == 0) {
            skills = sqlite3_mprintf("%s",userData->skills.skills[i].skillName);
        } else {
            skills = sqlite3_mprintf("%s', '%s", skills, userData->skills.skills[i].skillName);
        }
    }

    // Fetch current page data
    query = sqlite3_mprintf(
            "SELECT\n"
            "    c.CourseID,\n"
            "    c.CourseName,\n"
            "    cat.Category,\n"
            "    c.level\n"
            "FROM\n"
            "    Courses c\n"
            "        JOIN\n"
            "    Institution i ON c.InstitutionID = i.InstitutionID\n"
            "        JOIN\n"
            "    Category cat ON c.CategoryID = cat.CategoryID\n"
            "        JOIN\n"
            "    Currency cu ON c.CurrencyID = cu.CurrencyID\n"
            "        JOIN\n"
            "    Gender g ON c.GenderID = g.GenderID\n"
            "        JOIN\n"
            "    MinEducationLevel mel ON c.MinEducationLevelID = mel.EducationLevelID\n"
            "        LEFT JOIN\n"
            "    course_skills cs ON c.CourseID = cs.CourseID\n"
            "        LEFT JOIN\n"
            "    course_passions cp ON c.CourseID = cp.CourseID\n"
            "WHERE\n"
            "    (cs.SkillID IN (SELECT SkillID FROM Skills WHERE SkillName IN ('%s')))\n"
            "  AND (cp.PassionID IN (SELECT PassionID FROM Passions WHERE PassionName IN ('%s')))\n"
            "  AND c.MinAge <= %d AND c.MaxAge >= %d\n"
            "  AND g.GenderType IN ('%s', 'Any')\n"
            "  AND mel.EducationLevelName IN ('%s')\n"
            "LIMIT 1;",
            skills,
            userData->passion,
            userData->age,
            userData->age,
            userData->gender,
            edu
    );

    sqlite3_free(skills);


    retrieveData(query, &stmt);
    print_data_as_table(stmt);
    sqlite3_free(query);



    // Ask user to view course details
    char *options_[] = {"yes", "no"};
    int numOptions_ = 2;
    char *choice = getChoice(options_, numOptions_, "\n\nDo you want to view course details?");
    if (strcmp(choice, "yes") == 0) {
        view_course_details(getInteger("To view course details enter course id"));
    }
}