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

#define MAX_QUERY_SIZE 1024

void recommend_courses_by_skills_and_passions(UserData *user) {
    char query[MAX_QUERY_SIZE];
    sqlite3_stmt *stmt;

    // Build the skills condition dynamically
    char skillsCondition[256] = "";
    for (int i = 0; i < user -> skills.skillCount; i++) {
        if (i > 0) strcat(skillsCondition, ", ");
        snprintf(skillsCondition + strlen(skillsCondition),
                 sizeof(skillsCondition) - strlen(skillsCondition),
                 "'%s'", user -> skills.skills[i].skillName);
    }

    // Build the passions condition dynamically
    char passionCondition[256];
    snprintf(passionCondition, sizeof(passionCondition), "'%s'", user -> passion);

    // Construct the SQL query
    snprintf(query, sizeof(query),
             "SELECT c.CourseID, c.CourseName, c.Description, c.Duration, c.Fee, "
             "COUNT(DISTINCT cs.SkillID) AS MatchingSkills, "
             "COUNT(DISTINCT cp.PassionID) AS MatchingPassions "
             "FROM Courses c "
             "LEFT JOIN course_skills cs ON c.CourseID = cs.CourseID "
             "LEFT JOIN course_passions cp ON c.CourseID = cp.CourseID "
             "WHERE cs.SkillID IN (SELECT SkillID FROM Skills WHERE SkillName IN (%s)) "
             "   OR cp.PassionID IN (SELECT PassionID FROM Passions WHERE PassionName = %s) "
             "GROUP BY c.CourseID "
             "ORDER BY (COUNT(DISTINCT cs.SkillID) + COUNT(DISTINCT cp.PassionID)) DESC, c.Fee ASC;",
             skillsCondition, passionCondition);

    // Prepare the SQL statement
    if (sqlite3_prepare_v2(db, query, -1, &stmt, 0) != SQLITE_OK) {
        fprintf(stderr, "%sFailed to prepare query: %s%s\n", ERROR, sqlite3_errmsg(db), RESET);
        return;
    }

    // Execute the query and fetch results
    printf("%sRecommended Courses:%s\n", SUCCESS, RESET);
    printf("%-10s %-30s %-10s %-10s %-10s\n", "CourseID", "CourseName", "Skills", "Passions", "Fee");
    printf("----------------------------------------------------------------------------------\n");
    while (sqlite3_step(stmt) == SQLITE_ROW) {
        int courseID = sqlite3_column_int(stmt, 0);
        const char *courseName = (const char *)sqlite3_column_text(stmt, 1);
        int matchingSkills = sqlite3_column_int(stmt, 5);
        int matchingPassions = sqlite3_column_int(stmt, 6);
        double fee = sqlite3_column_double(stmt, 4);

        printf("%-10d %-30s %-10d %-10d %-10.2f\n", courseID, courseName, matchingSkills, matchingPassions, fee);
    }

    // Finalize the statement and clean up
    sqlite3_finalize(stmt);
}
