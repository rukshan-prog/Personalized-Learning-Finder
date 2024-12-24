//
// Created by Rasintha_Rukshan on 23/12/2024.
//

#include <color.h>
#include <stdio.h>
#include <dbcon.h>


sqlite3 *db = NULL; // Define the global variable for the database connection



// Initialize the database connection
int initDbConnection() {

    const char *db_name = "plf.db";

    fprintf(stdout, "%sInitializing database connection...%s\n", INFO, RESET);

    int rc = sqlite3_open(db_name, &db);
    if (rc) {
        fprintf(stderr, "%sCan't open database: %s%s\n", ERROR, sqlite3_errmsg(db), RESET);
        return 0; // Failure
    }
    fprintf(stdout, "%sDatabase connection opened successfully.%s\n", SUCCESS, RESET);

    return 1;
}




// Close the database connection
void closeDbConnection() {
    if (db) {
        sqlite3_close(db);
        fprintf(stdout, "%sDatabase connection closed successfully.%s\n", SUCCESS, RESET);
    }
}




// Sample query execution function
int executeQuery(const char *query) {
    char *err_msg = NULL;
    int rc = sqlite3_exec(db, query, NULL, NULL, &err_msg);
    if (rc != SQLITE_OK) {
        fprintf(stderr, "%sSQL error: %s%s\n", ERROR, err_msg, RESET);
        sqlite3_free(err_msg);
        return 0; // Failure
    }
    fprintf(stdout, "%sQuery executed successfully.%s\n", SUCCESS, RESET);
    return 1; // Success
}