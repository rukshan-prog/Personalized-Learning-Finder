#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <input.h>
#include <errno.h>
#include <color.h>

// Options for global use
char* option[] = {"yes", "no"};

// Function to get a string
char* getString(char *prompt) {
    char *str;

    // Loop until a non-empty string is entered
    do {
        do {
            // Check if the prompt is not empty
            if (strcmp(prompt, "") != 0) {
                printf("%s%s :%s", INPUT, prompt, RESET);
            } else {
                printf("%s%s :%s", INPUT, "Enter a string", RESET);
            }



            // Allocate memory for the string length of 100
            str = malloc(100);

            // Check if the memory allocation was successful
            if (str == NULL) {
                fprintf(stderr, "Memory allocation failed\n");
                exit(EXIT_FAILURE);
            }

            // Read the string
            fgets(str, 100, stdin);
            // Remove newline character
            str[strcspn(str, "\n")] = '\0';

            // Check if the string is empty
            if (strlen(str) == 0) {
                printf("%s%s%s\n", ERROR, "Empty string.\nPlease try again.\n", RESET);
            }

            // check if the string is empty
        } while (strlen(str) == 0);
        system("cls");
        printf("%s%s%s%s\n\n", SUCCESS, "You entered: ", RESET, str);
    } while (strcmp(getChoice(option, 2, "Do you want to continue"), "yes") != 0);
    return str;
}


// Function to get an integer
int getInteger(const char *prompt) {
    char buffer[256]; // Buffer for user input
    char *endptr;
    long value;

    while (1) {
        // Display the prompt
        if (prompt && strcmp(prompt, "") != 0) {
            printf("%s%s:%s", INPUT, prompt, RESET);
        } else {
            printf("%s%s%s" , INPUT, "Enter an integer", RESET);
        }

        // Read input
        if (!fgets(buffer, sizeof(buffer), stdin)) {
            printf("%s%s%s\n", ERROR, "Error reading input. Please try again.", RESET);
            continue;
        }

        // Remove trailing newline if present
        buffer[strcspn(buffer, "\n")] = '\0';

        // Convert string to integer
        errno = 0; // Reset errno before conversion
        value = strtol(buffer, &endptr, 10);

        // Check for errors
        if (errno == ERANGE) {
            printf("%s%s%s\n", WARNING, "Number out of range", RESET);
            continue;
        }

        if (endptr == buffer || *endptr != '\0') {
            printf("%s%s%s\n", WARNING, "Invalid input. Please enter a valid integer", RESET);
            continue;
        }

        // Success: return the integer value
        return (int)value;
    }
}


// Function to get a choice
char *getChoice(char *options[], int numOptions, char *prompt) {
    if (options == NULL || numOptions <= 0) {
        printf("%s%s%s\n", ERROR, "No options provided.", RESET);
        exit(1); // Handle invalid input
    }

    int choice;

    while (1) {
        // Display options
        printf("%s%s:%s\n", INFO, prompt, RESET);
        for (int i = 0; i < numOptions; ++i) {
            if (options[i]) {
                printf("%s%d: %s%s\n", INFO, i + 1, options[i], RESET);
            }
        }

        // Get user choice
        choice = getInteger("Choose an option number") - 1;  // Adjust for 0-based indexing

        // Validate choice
        if (choice >= 0 && choice < numOptions && options[choice] != NULL) {
            break;  // Valid choice, exit loop
        } else {
            printf("%sInvalid choice.\nPlease enter a number between 1 and %d.%s\n",WARNING, numOptions, RESET);
        }
    }

    return options[choice];  // Return the selected option
}

