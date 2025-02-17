#include <output.h>
#include <sqlite3.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <color.h>
#include <input.h>

void print_data_as_table(sqlite3_stmt *stmt) {
    int columnCount = sqlite3_column_count(stmt);
    if (columnCount <= 0) return; // Handle no columns case
    int *maxLengths = (int *)malloc(sizeof(int) * columnCount);
    const char **columnNames = (const char **)malloc(sizeof(char*) * columnCount);
    if (!maxLengths || !columnNames) {
        fprintf(stderr, "Memory allocation failed\n");
        return;
    }
    char *separator = NULL;
    char *tab = "    ";
    int separatorLength = 0;

    // Initialize maxLengths and get column names
    for (int i = 0; i < columnCount; i++) {
        maxLengths[i] = 0;
        columnNames[i] = sqlite3_column_name(stmt, i);
        if (columnNames[i]) {
            unsigned int nameLen = strlen(columnNames[i]);
            maxLengths[i] = (int) nameLen;
        }
    }

    // First pass to find maximum lengths
    while (sqlite3_step(stmt) == SQLITE_ROW) {
        for (int i = 0; i < columnCount; i++) {
            const unsigned char *value = sqlite3_column_text(stmt, i);
            if (value) {
                unsigned len = strlen((const char*)value);
                if (len > maxLengths[i]) {
                    maxLengths[i] = (int) len;
                }
            }
        }
    }

    sqlite3_reset(stmt); // Important: Reset the statement

    // Calculate separator length and allocate memory
    for (int i = 0; i < columnCount; i++) {
        separatorLength += maxLengths[i] + strlen(tab);
    }
    separatorLength += 1; // For null terminator
    separator = (char *)malloc(separatorLength * sizeof(char));
    if (!separator) {
        fprintf(stderr, "Memory allocation failed\n");
        free(maxLengths);
        free(columnNames);
        return;
    }
    separator[0] = '\0'; // Initialize as empty string

    printf("\n");

    // Print header and build separator
    for (int i = 0; i < columnCount; i++) {
        printf("%-*s%s", maxLengths[i], columnNames[i] ? columnNames[i] : "", tab);
        for (int j = 0; j < maxLengths[i] + strlen(tab); j++) {
            strcat(separator, "-");
        }
    }

    printf("\n");
    printf("%s\n", separator);

    // Second pass to print data
    while (sqlite3_step(stmt) == SQLITE_ROW) {
        for (int i = 0; i < columnCount; i++) {
            if (sqlite3_column_type(stmt, i) == SQLITE_INTEGER) {
                printf("%-*d%s", maxLengths[i], sqlite3_column_int(stmt, i), tab);
            } else {
                const unsigned char *value = sqlite3_column_text(stmt, i);
                printf("%-*s%s", maxLengths[i], value ? (const char*)value : "", tab);
            }
        }
        printf("\n");
    }
    printf("\n");
    free(separator);
    free(maxLengths);
    free(columnNames);

}


void print_course_details(sqlite3_stmt *stmt) {
    // Initialize variables
    const char *courseName;
    const char *description;
    const char *level;
    const char *duration;
    int fee = 0;
    const char *currency;
    int minAge = 10;
    int maxAge = 60;
    const char *gender;
    const char *minEducationLevel;
    const char *institution;
    const char *category;

    // Get data from the statement
    int courseID = sqlite3_column_int(stmt, 0);
    courseName = (char *)sqlite3_column_text(stmt, 1);
    description = (char *)sqlite3_column_text(stmt, 2);
    level = (char *)sqlite3_column_text(stmt, 3);
    duration = (char *)sqlite3_column_text(stmt, 4);
    fee = sqlite3_column_int(stmt, 5);
    currency = (char *)sqlite3_column_text(stmt, 6);
    minAge = sqlite3_column_int(stmt, 7);
    maxAge = sqlite3_column_int(stmt, 8);
    gender = (char *)sqlite3_column_text(stmt, 9);
    minEducationLevel = (char *)sqlite3_column_text(stmt, 10);
    institution = (char *)sqlite3_column_text(stmt, 11);
    category = (char *)sqlite3_column_text(stmt, 12);

    // Print data
    system("cls");
    printf("%sCourse id:%s %d\n", WARNING, RESET, courseID);
    printf("%sCourse Name:%s %s\n", WARNING, RESET, courseName);
    printf("%sDescription:%s %s\n", WARNING, RESET, description);
    printf("%sLevel:%s %s\n", WARNING, RESET, level);
    printf("%sDuration:%s %s\n", WARNING, RESET, duration);
    if (fee == 0) {
        printf("%sFee:%s %s\n", WARNING, RESET, "Free");
    } else {
        printf("%sFee:%s %s %d\n", WARNING, RESET, currency, fee);
    }
    if (minAge == 0) {
        printf("%sMin Age:%s %s\n", WARNING, RESET, "Any one");
    } else {
        printf("%sMin Age:%s %d\n", WARNING, RESET, minAge);
    }
    if (maxAge == 0){
        printf("%sMax Age:%s %s\n", WARNING, RESET, "Any one");
    } else {
        printf("%sMax Age:%s %d\n", WARNING, RESET, maxAge);
    }
    printf("%sGender:%s %s\n", WARNING, RESET, gender);
    printf("%sMin Education Level:%s %s\n", WARNING, RESET, minEducationLevel);
    printf("%sInstitution:%s %s\n", WARNING, RESET, institution);
    printf("%sCategory:%s %s\n", WARNING, RESET, category);
}