//
// Created by Rasintha_Rukshan on 20/01/2025.
//

#include <stdio.h>
#include <time.h>
#include <string.h>
#include <color.h>
#include <stdlib.h>




/**
 * Logs an error message to the error log file with a timestamp.
 *
 * This function appends an error message along with the current timestamp
 * to a log file named "error_log.txt". If the file cannot be opened, it
 * outputs a message to the standard error stream. The log message is
 * formatted to include the date, time, and message content.
 *
 * @param message The error message to be logged.
 */
void logError(const char *message) {

    // clear screen
    system("cls");

    // Open log file
    FILE *file = fopen("error_log.txt", "a"); // Open the file in append mode
    if (file == NULL) {
        fprintf(stderr, "Failed to open log file.\n");
        return;
    }

    // Get the current date and time
    time_t now = time(NULL);
    struct tm *timeinfo = localtime(&now);

    // Format the timestamp
    char timestamp[100];
    strftime(timestamp, sizeof(timestamp), "%Y-%m-%d %H:%M:%S", timeinfo);

    // Write the log message
    fprintf(file, "[%s] %sERROR:%s %s\n", timestamp, ERROR, RESET, message);

    // Close the file
    fclose(file);
}



/**
 * Reads the error log file and prints out all error messages.
 *
 * This function reads the "error_log.txt" file and prints out all the
 * error messages to the standard output.
 */
void readErrors() {
    FILE *file = fopen("error_log.txt", "r");
    if (file == NULL) {
        fprintf(stderr, "Failed to open log file for reading.\n");
        return;
    }

    char line[256];
    printf("---- Error Log ----\n");

    while (fgets(line, sizeof(line), file)) {
        printf("%s", line);
    }

    printf("\n---- End of Log ----\n");

    fclose(file);
}
