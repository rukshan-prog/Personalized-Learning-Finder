#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <input.h>
#include <errno.h>
#include <color.h>

char* option[] = {"yes", "no"};

/*
 * Function to get a string from the user
 * It will keep prompting the user until they enter a non-empty string
 * And it will display an error message if the string is empty
 * User can change the string if they want
 *
 * @param prompt The prompt to display to the user
 * @return The string entered by the user
 *
 */
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


/*
 *
 * Function to get an integer from the user
 * It will keep prompting the user until they enter a valid integer
 * And it will display an error message if the integer is invalid
 *
 * @param prompt The prompt to display to the user
 * @return The integer entered by the user
 */
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


/*
 *
 * Function to get a choice from the user
 * It will keep prompting the user until they enter a valid choice
 * And it will display an error message if the choice is invalid
 *
 * @param options The array of options
 * @param numOptions The number of options
 * @param prompt The prompt to display to the user
 * @return The choice as a string entered by the user
 */
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

/*
 *
 * Function to get a string from the user
 * It will keep prompting the user until they enter a valid string
 * And it will display an error message if the string is invalid
 * user can't change the string after it is entered
 *
 * @param prompt The prompt to display to the user
 * @return The string entered by the user
 *
 */
char *getStringWithoutConform(char *prompt) {
    char *str;
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

    return str;
}


/*
 *
 * Function to get a string from the user
 * It will not prompt the user
 * And it will display an error message if the string is invalid
 * user can't change the string after it is entered
 *
 * @param prompt The prompt to display to the user
 * @return The string entered by the user
 *
 */
char *getStringWithoutPrompt() {
    char *str;
    do {
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
    } while (strlen(str) == 0);

    return str;
}

/*
 *
 * Function to get YES or NO from the user
 * It will keep prompting the user until they enter YES or NO
 *
 * @param prompt The prompt to display to the user
 * @return The string entered by the user
 *
 */
char *getChoiceYesNo(char *prompt) {
    char *choice;
    do {
        if (strcmp(prompt, "") != 0) {
            printf("%s%s (YES/NO) :%s", INPUT, prompt, RESET);
        } else {
            printf("%s%s (YES/NO) :%s", INPUT, "Enter", RESET);
        }

        choice = getStringWithoutPrompt();


    } while (
            strcmp(choice, "yes") != 0 &&
            strcmp(choice, "no") != 0 &&
            strcmp(choice, "YES") != 0 &&
            strcmp(choice, "NO") != 0 &&
            strcmp(choice, "Yes") != 0 &&
            strcmp(choice, "No") != 0 &&
            strcmp(choice, "y") != 0 &&
            strcmp(choice, "n") != 0 &&
            strcmp(choice, "Y") != 0 &&
            strcmp(choice, "N") != 0);

    if (
            strcmp(choice, "yes") == 0 ||
            strcmp(choice, "YES") == 0 ||
            strcmp(choice, "y") == 0 ||
            strcmp(choice, "Y") == 0) {
        choice = "yes";
    } else if (
            strcmp(choice, "no") == 0 ||
            strcmp(choice, "NO") == 0 ||
            strcmp(choice, "n") == 0 ||
            strcmp(choice, "N") == 0) {
        choice = "no";
    }

    return choice;
}
