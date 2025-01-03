//
// Created by Rasintha_Rukshan on 24/12/2024.
//


#include <stdbool.h>
#include <course_recommendation.h>
#include <user.h>
#include <handle_tables.h>
#include <stdio.h>



void run() {
    // Initialize user data
    UserData user_data;

    if (create_tables()) {
        printf("\n");

        // Get user data
        getUserData(&user_data);
    }

}