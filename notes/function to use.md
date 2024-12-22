# Console Utility Functions for User Interaction
## Description

This project provides a set of utilities for console-based applications in C. It includes functions to clear the console, get strings, integers, and handle user choices with ease. This makes user interaction more intuitive and dynamic.

## Features

- **Clear Console**: Clear the console screen.
- **Get String**: Prompt the user and retrieve a string input.
- **Get Integer**: Prompt the user and retrieve an integer input.
- **Get Choice**: Prompt the user to select from a list of options.

## How to Use

### 1. Clear the Console

To clear the console screen, simply include the `stdlib.h` library and call the `system("cls")` function (for Windows). On Unix-like systems, you can use `system("clear")`.

#### Example:
```c
#include <stdlib.h>

// Clear console screen
system("cls");  // For Windows
// or 
system("clear");  // For Unix/Linux/macOS
```

### 2. Get String Input

Use the `getString()` function to prompt the user and get a string input. This is useful for capturing textual input.

#### Example:
```c
char *str = getString("Your message");
printf("You entered: %s\n", str);
```

- The `getString()` function takes a prompt message and returns the string inputted by the user.

### 3. Get Integer Input

To get an integer from the user, use the `getInteger()` function.

#### Example:
```c
int integer = getInteger("Your message");
printf("You entered: %d\n", integer);
```

- The `getInteger()` function prompts the user and returns the integer input.

### 4. Get User Choice from Options

If you want to let the user choose from a predefined set of options (like "yes" or "no"), you can use the `getChoice()` function.

#### Example:
```c
// Define available choices
char* options[] = {
    "yes",
    "no"
};
int numOptions = 2; // Number of options

// Get choice from the user
char* choice = getChoice(options, numOptions, "Choose an option");
printf("You selected: %s\n", choice);
```

- `getChoice()` will display the options to the user, and the user can select one. It returns the chosen option as a string.

