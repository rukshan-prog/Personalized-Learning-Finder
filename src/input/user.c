# include <stdio.h>
#include <input.h>
#include <color.h>
#include <ctype.h>

/**** Declare functions ****/
char getGender();
char* getGender1();



char* getUserData() {
    // Prompt user for name
    char *user_name = getString("Enter Your Name");

    // Print success message with user's name
    printf("%sYou entered your name : %s%s\n\n", SUCCESS, user_name, RESET);

    int user_age;

    // Loop until a valid age is entered
    while (1) {
        // Prompt user for age
        user_age = getInteger("Enter Your Age");

        // Check if age is within valid range
        if (40 >= user_age && user_age >= 10) {
            // Print success message with user's age
            printf("%sYou entered your age : %d%s\n\n", SUCCESS, user_age, RESET);
            break;
        }else {
            printf("%s Invalid age please enter an age between 10 and 40  %s\n\n", ERROR, RESET);


        }
    }

    /******   call getGender function ******/
    char gender = getGender();
    printf("%sYou entered your gender : %c%s\n\n", SUCCESS, gender, RESET);

    char* gender1 = getGender1();
    printf("%sYou entered your gender : %s%s\n\n", SUCCESS, gender1, RESET);

}

/* problem is you not call getGender function */
char getGender() {
    char gender;

    printf("Enter your gender (Male=M Female=F Other=O): ");
    scanf(" %c", &gender);

    while (gender != 'M' && gender != 'F' && gender != 'O') {
        printf("Invalid input. Please enter M (Male), F (Female), or O (Other): ");
        scanf(" %c", &gender);
    }

    return gender;
}

/********* you can use it like this **********/
char* getGender1() {
    char* options[] = {
        "Male",
        "Female",
        "Other"
    };
    int numOfOptions = 3;
    char* choice = getChoice(options, numOfOptions, "Select your gender");

    return choice;
}






