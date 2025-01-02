//
// Created by Rasintha_Rukshan on 22/12/2024.
//


#include <stdio.h>
#include <input.h>
#include <string.h>
#include <skill.h>
#include <stdlib.h>
#include <color.h>

// get skill from the user
Skills* getSkill() {
    Skills *skills;

    char* option[] = {"yes", "no"};
    int skillCount = 0;


    do {
        // Ask the user how many skills they want to add
        while (1) {
            skillCount = getInteger("Enter number of skills you want to add between 1 and 3");

            if (skillCount > 3) {
                printf("%sYou can add a maximum of 3 skills%s\n", ERROR, RESET);
            } else if (skillCount < 1) {
                printf("%sYou must add at least 1 skill%s\n", ERROR, RESET);
            } else {
                system("cls");
                printf("%sYou have entered %d skills. Now enter your skills%s\n\n", SUCCESS, skillCount, RESET);
                break;
            }
        }

        // Allocate memory for dynamic skills
        skills = (Skills*)malloc(skillCount * sizeof(Skills));

        // Check if the memory allocation was successful
        if (skills == NULL) {
            fprintf(stderr, "Memory allocation failed\n");
            exit(EXIT_FAILURE);
        }

        // Loop to get the skills
        for (int i = 0; i < skillCount; i++) {
            // Prompt for the skill name
            char prompt1[100];
            snprintf(prompt1, sizeof(prompt1), "Enter skill %d", i + 1);
            char* skillName = getString(prompt1);
            system("cls");

            // Prompt for the skill level
            char prompt2[100];
            snprintf(prompt2, sizeof(prompt2), "\nEnter your skill level for %s%s", RESET, skillName);
            char* levels[] = {
                "Beginner",
                "Intermediate",
                "Advanced"
            };
            char* level = getChoice(levels, 3, prompt2);

            // Store the skill
            strcpy(skills->skills[i].skillName, skillName);
            strcpy(skills->skills[i].level, level);


            // Update the skill count
            skills -> skillCount = skillCount;

            // Clear the screen
            system("cls");

            // Display the entered skills
            printf("\n%sYour Skills List:%s ", SUCCESS, RESET);
            printf("%sSkill\t\t\tLevel%s\n",INFO, RESET);
            for (int j = 0; j <= i; j++) {
                printf("\t\t  %s\t\t\t%s\n", skills -> skills[j].skillName, skills -> skills[j].level);
            }
            printf("\n");
        }
    } while (strcmp(getChoice(option, 2, "Do you want to continue?"), "yes") != 0);

    return skills;
}