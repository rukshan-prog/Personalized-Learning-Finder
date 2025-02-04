//
// Created by samitha dilum on 22/12/2024.
//


#include <stdio.h>
#include <input.h>
#include <string.h>
#include <skill.h>
#include <stdlib.h>
#include <color.h>




// get skill from the user
Skill* getSkill() {
    char* option[] = {"yes", "no"};
    Skill* skills;
    do {
        // ask the user how many skills they want to add
        int skillCount = getInteger("Enter the number of skills you want to add");

        printf("\n");

        // Allocate memory for dynamic skills
        skills = malloc(skillCount * sizeof(Skill));

        // Check if the memory allocation was successful
        if (!skills) {
            fprintf(stderr, "Memory allocation failed\n");
            exit(EXIT_FAILURE);
        }

        // Loop to get the skills
        for (int i = 0; i < 3; i++) {
            // create the skill name
            char prompt1[100];
            snprintf(prompt1, sizeof(prompt1), "Enter skill %d", i + 1);
            char* skillName = getString(prompt1);
            system("cls");
            printf("%sYou entered skill : %s%s\n\n", SUCCESS, skillName, RESET);
            char prompt2[100];
            snprintf(prompt2, sizeof(prompt2), "Enter your skill level for %s%s%s", SUCCESS,skillName,RESET);

            char* levels[3] = {
                    "Beginner",
                    "Intermediate",
                    "Advanced"
            };

            char* level = getChoice(levels, 3, prompt2);
            system("cls");
            strcpy(skills[i].skillName, skillName);
            strcpy(skills[i].level, level);
            printf(  "%s%s%s\n\n", RESET, "Your Skill list", RESET);
            printf("%sSkill\t\t\tLevel%s\n", INFO, RESET);
            for (int j = 0; j < i+1; ++j) {
                printf("%s%s\t\t\t%s%s\n", RESET, skills[j].skillName, skills[j].level, RESET);
            }
            printf("\n");
        }
    } while (strcmp(getChoice(option, 2, "Do you want to continue"), "yes") != 0);

    return skills;
}

