//
// Created by Rasintha_Rukshan on 22/12/2024.
//

#ifndef PERSONALIZED_LEARNING_FINDER_DBCON_H
#define PERSONALIZED_LEARNING_FINDER_DBCON_H

#include <sqlite3.h>


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
int initDbConnection();



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
 *
 */
int executeQuery(const char *query);

#endif //PERSONALIZED_LEARNING_FINDER_DBCON_H