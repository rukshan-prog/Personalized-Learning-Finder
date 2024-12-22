#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <input.h>
#include <errno.h>


// Function to get a string
char* getString(char *prompt) {
    char *str;

    // Loop until a non-empty string is entered
    do {
        // Check if the prompt is not empty
        if (strcmp(prompt, "") != 0) {
            printf("%s: ", prompt);
        } else {
            printf("Enter a string: ");
        }

        // Allocate memory for the string length of 100
        str = malloc(100);

        // Check if the memory allocation was successful
        if (str == NULL) {
            printf("Memory allocation failed\n");
            return NULL;
        }

        // Read the string
        fgets(str, 100, stdin);
        // Remove newline character
        str[strcspn(str, "\n")] = '\0';

        // Check if the string is empty
        if (strlen(str) == 0) {
            printf("Invalid input.\nPlease enter a non-empty string.\n");
        }

    } while (strlen(str) == 0);

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
            printf("%s: ", prompt);
        } else {
            printf("Enter an integer: ");
        }

        // Read input
        if (!fgets(buffer, sizeof(buffer), stdin)) {
            printf("Error reading input. Please try again.\n");
            continue;
        }

        // Remove trailing newline if present
        buffer[strcspn(buffer, "\n")] = '\0';

        // Convert string to integer
        errno = 0; // Reset errno before conversion
        value = strtol(buffer, &endptr, 10);

        // Check for errors
        if (errno == ERANGE) {
            printf("Number out of range. Please enter a valid integer.\n");
            continue;
        }

        if (endptr == buffer || *endptr != '\0') {
            printf("Invalid input. Please enter a valid integer.\n");
            continue;
        }

        // Success: return the integer value
        return (int)value;
    }
}


// Function to get a choice
char* getChoice(char* options[], int numOptions) {
    if (options == NULL || numOptions <= 0) {
        printf("Error: No options provided.\n");
        return NULL; // Handle invalid input
    }

    int choice;

    while (1) {
        // Display options
        printf("Please choose from the following options:\n");
        for (int i = 0; i < numOptions; ++i) {
            if (options[i]) {  // Ensure option string is not NULL
                printf("%d: %s\n", i + 1, options[i]);
            }
        }

        // Get user choice
        choice = getInteger("Choose an option") - 1;  // Adjust for 0-based indexing

        // Validate choice
        if (choice >= 0 && choice < numOptions && options[choice] != NULL) {
            break;  // Valid choice, exit loop
        } else {
            printf("Invalid choice. Please enter a number between 1 and %d.\n", numOptions);
        }
    }

    return options[choice];  // Return the selected option
}

