#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <input.h>


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
int getInteger(char *prompt) {
    int integer;

    // print the prompt to get int
    if (strcmp(prompt, "") != 0) {
        printf("%s: ", prompt);
    } else {
        printf("Enter an integer: ");
    }

    // Read input and check for success
    while (scanf("%d", &integer) != 1) {
        printf("Invalid input.\nPlease enter an integer.\n");
        // print the prompt to get int
        if (strcmp(prompt, "") != 0) {
            printf("%s: ", prompt);
        } else {
            printf("Enter an integer: ");
        }
        while (getchar() != '\n'); // Clear the input buffer
    }

    return integer;
}


// Function to get a choice
char* getChoice(char* options[], int numOptions) {
    int choice;

    while (1) {
        // Print options
        for (int i = 0; i < numOptions; ++i) {
            printf("%d: %s\n", i + 1, options[i]);
        }

        // Get user choice
        choice = getInteger("Choose an option") - 1;  // Adjust for 0-based index

        // Validate choice
        if (choice >= 0 && choice < numOptions) {
            break;  // Valid choice, exit loop
        } else {
            printf("Invalid choice. Please try again.\n");
        }
    }

    return options[choice];  // Return the selected option
}

