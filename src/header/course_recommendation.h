//
// Created by Rasintha_Rukshan on 24/12/2024.
//

#ifndef PERSONALIZED_LEARNING_FINDER_COURSE_RECOMMENDATION_H
#define PERSONALIZED_LEARNING_FINDER_COURSE_RECOMMENDATION_H

#include <skill.h>

typedef struct {
    char* name;
    int age;
    char* gender;
    char* educationLevel;
    char* passion;
    Skills skills;
} UserData;

void run();


#endif //PERSONALIZED_LEARNING_FINDER_COURSE_RECOMMENDATION_H
