//
// Created by Rasintha_Rukshan on 24/12/2024.
//


#include <stdbool.h>
#include <course_recommendation.h>
#include <user.h>
#include <handle_tables.h>
#include <stdio.h>
#include <fake_data.h>
#include <stdlib.h>
#include <input.h>
#include <color.h>



void control();
void viewCourses();
void searchCourses();
void next();
void personalRecommendations();

UserData user_data;

_Noreturn void run() {
    if (create_tables() && add_fake_data() ) {
        while (true) {
            next();
            control();
        }
    }
    drop_tables();
    exit(0);
}

void control() {

    char *option[] = {
            "View Courses",
            "Search Courses",
            "Personal Recommendations",
            "Exit"
    };

    int numOptions = sizeof(option) / sizeof(option[0]);
    system("cls");
    int choice = getChoiceNumber(option, numOptions, "SELECT AN OPTION IN THE MENU");

    switch (choice) {
        case 0:
            viewCourses();
            break;
        case 1:
            searchCourses();
            break;
        case 2:
            personalRecommendations();
            break;
        case 3:
            exit(0);
            break;
        default:
            printf("%sInvalid Number Please try again%s\n", WARNING, RESET);
            break;
    }
}

void personalRecommendations() {
    system("cls");
    getUserData(&user_data); // Get user data

}

void viewCourses() {
    system("cls");
    printf("Displaying available courses...\n");
}

void searchCourses() {
    system("cls");
    printf("Displaying available courses...\n");
}

void next() {
    char c;
    printf("\n\nPress any key to continue...");
    scanf("%c", &c);
}

