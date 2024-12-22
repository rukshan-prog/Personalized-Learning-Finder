//
// Created by Rasintha_Rukshan on 22/12/2024.
//


#include <stdio.h>
#include <input.h>
#include <string.h>
#include <skill.h>
#include <stdlib.h>


/*
 *
// test for get string
char *str = getString("Enter a string");
printf("You entered : %s\n", str);

// test get integer
int integer = getInteger("Enter a number");
printf("Your entered : %d\n", integer);

// test get choice
char* options[] = { // array of options
        "Option 1",
        "Option 2",
        "Option 3"
};
int numOptions = 3;  // number of options
char* choice = getChoice(options, numOptions);
printf("You selected: %s\n", choice);
 *
 */


/* create an array.
 * add 1 or more skill and skill level to the array (max 3).
 * use getString, getChoice and getInteger function to get the skill from the user.
 * return the array.
 */




// get skill from the user
Skill* getSkill() {

    int skillCount;

    skillCount = getInteger("Enter the number of skills you want to add");


    Skill* skills = malloc(skillCount * sizeof(Skill)); // Allocate memory for dynamic skills

    if (!skills) {
        fprintf(stderr, "Memory allocation failed\n");
        exit(EXIT_FAILURE);
    }

    for (int i = 0; i < 3; i++) {

        char* skillName = getString("Enter the skill you want to add");

        char prompt[100];
        snprintf(prompt, sizeof(prompt), "Enter level of the skill %s", skillName);

        char* levels[3] = {
                "Beginner",
                "Intermediate",
                "Advanced"
        };

        char* level = getChoice(levels, 3, prompt);

        strcpy(skills[i].skillName, skillName);
        strcpy(skills[i].level, level);
        printf("You entered Skill list");
        for (int j = 0; j < i; ++j) {
            printf("skill name: %s \t level: %s\n",skills[j].skillName,skills[j].level);
        }

       /* // ask the user if they want to add another skill
        char* condition[2] = {
                "yes",
                "no"
        };

        if ((strcmp(getChoice(condition, 2, "Do you want to add another skill?"), "no") == 0) ) {
            break;
        }*/
    }

    return skills;
}

