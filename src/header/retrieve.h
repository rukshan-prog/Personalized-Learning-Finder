//
// Created by Rasintha_Rukshan on 26/12/2024.
//

#ifndef PERSONALIZED_LEARNING_FINDER_RETRIEVE_H
#define PERSONALIZED_LEARNING_FINDER_RETRIEVE_H

#include <course_recommendation.h>
#include <sqlite3.h>

void recommend_courses_by_skills_and_passions(UserData *userData);

int count_rows(sqlite3_stmt *stmt);

void view_course_details(int courseID);



#endif //PERSONALIZED_LEARNING_FINDER_RETRIEVE_H
