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

    const int pageSize = 10;
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

    const int pageSize = 10;
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
    const int pageSize = 10;
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
        query = sqlite3_mprintf(
                "WITH UserInput AS ("
                "    SELECT ? AS PassionName, ? AS SkillName, ? AS SkillLevel "
                "    UNION ALL "
                "    SELECT ?, ?, ? "
                "), "
                "MatchingPassions AS ("
                "    SELECT c.CourseID, COUNT(cp.PassionID) AS PassionMatchScore "
                "    FROM Courses c "
                "    JOIN course_passions cp ON c.CourseID = cp.CourseID "
                "    JOIN passions p ON cp.PassionID = p.PassionID "
                "    JOIN UserInput ui ON p.PassionName = ui.PassionName "
                "    GROUP BY c.CourseID "
                "), "
                "MatchingSkills AS ("
                "    SELECT c.CourseID, COUNT(cs.SkillID) AS SkillMatchScore "
                "    FROM Courses c "
                "    JOIN course_skills cs ON c.CourseID = cs.CourseID "
                "    JOIN skills s ON cs.SkillID = s.SkillID "
                "    JOIN UserInput ui ON s.SkillName = ui.SkillName "
                "    WHERE cs.SkillID <= ui.SkillLevel "
                "    GROUP BY c.CourseID "
                ") "
                "SELECT "
                "    Courses.CourseID, "
                "    Courses.CourseName, "
                "    Category.Category, "
                "    IFNULL(mp.PassionMatchScore, 0) AS PassionMatchScore, "
                "    IFNULL(ms.SkillMatchScore, 0) AS SkillMatchScore, "
                "    (IFNULL(mp.PassionMatchScore, 0) + IFNULL(ms.SkillMatchScore, 0)) AS TotalScore "
                "FROM Courses "
                "INNER JOIN Category ON Courses.CategoryID = Category.CategoryID "
                "LEFT JOIN MatchingPassions mp ON Courses.CourseID = mp.CourseID "
                "LEFT JOIN MatchingSkills ms ON Courses.CourseID = ms.CourseID "
                "ORDER BY TotalScore DESC, PassionMatchScore DESC, SkillMatchScore DESC "
                "LIMIT ? OFFSET ?;"
        );

        // Prepare the statement
        sqlite3_prepare_v2(db, query, -1, &stmt, NULL);

        // Bind user inputs (Passions, Skills, Skill Levels)
        sqlite3_bind_text(stmt, 1, "Passion1", -1, SQLITE_STATIC); // 1st passion
        sqlite3_bind_text(stmt, 2, "Skill1", -1, SQLITE_STATIC);   // 1st skill
        sqlite3_bind_int(stmt, 3, 3);                             // 1st skill level
        sqlite3_bind_text(stmt, 4, "Passion2", -1, SQLITE_STATIC); // 2nd passion
        sqlite3_bind_text(stmt, 5, "Skill2", -1, SQLITE_STATIC);   // 2nd skill
        sqlite3_bind_int(stmt, 6, 5);                             // 2nd skill level

        // Bind pagination parameters
        sqlite3_bind_int(stmt, 7, pageSize);  // Limit
        sqlite3_bind_int(stmt, 8, offset);   // Offset


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