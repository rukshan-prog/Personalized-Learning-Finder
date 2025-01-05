//
// Created by Rasintha_Rukshan on 22/12/2024.
//

#ifndef PERSONALIZED_LEARNING_FINDER_DBCON_H
#define PERSONALIZED_LEARNING_FINDER_DBCON_H

#include <sqlite3.h>
#include <stdbool.h>


/**
 *
 * Global variable for the database connection
 *
 */
extern sqlite3 *db;



/*
 * Initialize the database connection
 *
 * @return 1 on success, 0 on failure
 */
bool initDbConnection();



/*
 * Close the database connection
 *
 */
void closeDbConnection();


/*
 *
 * Execute a query on the database
 *
 * @param query The query to execute
 * @param prompt for the success
 *
 */
int executeQuery(const char *query, char *prompt);

#endif //PERSONALIZED_LEARNING_FINDER_DBCON_H
