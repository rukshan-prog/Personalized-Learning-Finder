#include <output.h>
#include <sqlite3.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h> // Include for malloc/free

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
            int nameLen = strlen(columnNames[i]);
            maxLengths[i] = nameLen;
        }
    }

    // First pass to find maximum lengths
    while (sqlite3_step(stmt) == SQLITE_ROW) {
        for (int i = 0; i < columnCount; i++) {
            const unsigned char *value = sqlite3_column_text(stmt, i);
            if (value) {
                int len = strlen((const char*)value);
                if (len > maxLengths[i]) {
                    maxLengths[i] = len;
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

    free(separator);
    free(maxLengths);
    free(columnNames);
}