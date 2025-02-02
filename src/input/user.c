# include <stdio.h>
#include <input.h>
#include <color.h>

#include <course_recommendation.h>
#include <skill.h>
#include <user.h>
#include <passion.h>
#include <string.h>
#include <stdlib.h>

char* getName();
char* getGender();
int getAge();
char *getEducationLevel();
void displayUserData(UserData *userData);


// Get user data
void getUserData(UserData *userData) {

    // Initialize userData to avoid undefined behavior
    userData->name = NULL;
    userData->age = 0;
    userData->gender = NULL;
    userData->educationLevel = NULL;
    userData->passion = NULL;
    userData->skills.skillCount = 0;
    memset(userData->skills.skills, 0, sizeof(userData->skills.skills));

    // Get user data
    displayUserData(userData);
    userData -> name = getName();
    system("cls");
    displayUserData(userData);
    userData -> age =  getAge();
    system("cls");
    displayUserData(userData);
    userData -> gender = getGender();
    system("cls");
    displayUserData(userData);
    userData -> educationLevel = getEducationLevel();
    system("cls");
    displayUserData(userData);
    userData -> passion = getPassion();
    system("cls");
    displayUserData(userData);
    userData -> skills = *getSkill();
    system("cls");
    displayUserData(userData);
}

// update user data in to the display
void displayUserData(UserData *userData) {
    printf("%sFILL THE FORM%s\n\n", INFO, RESET);

    // name
    if (userData -> name == NULL) {
        printf("Name:\t\t %s\n", "_____________");
    }else {
        printf("Name:\t\t %s\n", userData -> name);
    }

    // age
    if (userData -> age == 0) {
        printf("Age:\t\t %s\n", "_____________");
    }else {
        printf("Age:\t\t %d\n", userData -> age);
    }

    // gender
    if (userData -> gender == NULL) {
        printf("Gender:\t\t %s\n", "_____________");
    }else {
        printf("Gender:\t\t %s\n", userData -> gender);
    }

    // education level
    if (userData -> educationLevel == NULL) {
        printf("Education Level: %s\n", "_____________");
    }else {
        printf("Education Level: %s\n", userData -> educationLevel);
    }
    // passion
    if (userData -> passion == NULL) {
        printf("Passion:\t %s\n", "_____________");
    }else {
        printf("Passion:\t %s\n", userData -> passion);
    }

    // skill
    printf("%sYour skill list: %s", RESET, RESET);
    printf("%s Skill\t\t\t\tLevel%s\n",INFO, RESET);

    if (userData -> skills . skillCount <= 0) {
        for (int j = 1; j <= 2; j++) {
            printf("\t\t%d.%s\t\t\t\t%s\n", j, "____", "____");
        }
    } else {
        for (int i = 0; i < userData -> skills . skillCount; i++) {
            char skillName[256];
            char skillLevel[20];
            strcpy(skillName, userData -> skills.skills[i].skillName);
            strcpy(skillLevel, userData -> skills.skills[i].level);


            printf("\t\t%d.%s\t\t\t\t%s\n", i + 1, skillName, skillLevel);
        }
    }
    printf("\n%sPlease enter your details here:%s\n\n", INFO, RESET);
}

// Get age from user
int getAge() {
    int age;
    while (1) {
        // Prompt user for age
        age = getInteger("Enter Your Age");

        // Check if age is within valid range
        if (80 >= age && age >= 10) {
            // Print success message with user's age
            printf("%sYou entered your age : %d%s\n\n", SUCCESS, age, RESET);
            break;
        }else {
            printf("%s Invalid age please enter an age between 10 and 80  %s\n\n", ERROR, RESET);
        }
    }
    return age;
}

// Get name from user
char* getName() {
    char *name;
    name = getString("Enter Your Name");
    return name;
}

// Get gender from user
char* getGender() {
    char* options[] = {
            "Male",
            "Female"
    };
    int numOptions = 2;
    char* choice = getChoice(options, numOptions, "Select your gender");
    return choice;
}

// Get education level from user
char *getEducationLevel() {
    char* options[] = {
            "O/L",
            "A/L",
            "Bachelor",
            "Master",
            "PHD"
    };
    int numOptions = sizeof(options) / sizeof(options[0]);
    char* choice = getChoice(options, numOptions, "Select your highest education level");

    return choice;
}










