//
// Created by Rasintha_Rukshan on 24/12/2024.
//

#ifndef PERSONALIZED_LEARNING_FINDER_OUTPUT_H
#define PERSONALIZED_LEARNING_FINDER_OUTPUT_H

#include <sqlite3.h>

void print_data_as_table(sqlite3_stmt *stmt);

void test();

void print_course_details(sqlite3_stmt *stmt);

#endif //PERSONALIZED_LEARNING_FINDER_OUTPUT_H
