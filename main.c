#include <stdio.h>
#include <stdlib.h>
#include <input.h>
#include <skill.h>
#include <passion.h>
#include <color.h>
#include <user.h>
#include <dbcon.h>
#include <handle_tables.h>
#include <course_recommendation.h>
#include <admin.h>


// Main function
int main(void) {

    char who[20];
    // Define available choices
    char* options[] = {
            "User",
            "Admin"
    };
    int numOptions = 2; // Number of options

    // Get choice from the user
    char* choice = getChoice(options, numOptions, "Who are you?");

    system("cls");

    if (choice == options[0]) {
        runUser();
    } else {
        runAdmin();
    }


    fixForCloseConsole();
    return 0;
}



// close console
void fixForCloseConsole() {
    char c;
    printf("\n\nPress any key to close...");
    scanf("%c", &c);
}