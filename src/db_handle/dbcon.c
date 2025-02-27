//
// Created by Rasintha_Rukshan on 23/12/2024.
//

#include <color.h>
#include <stdio.h>
#include <dbcon.h>
#include <output.h>
#include <errrorlog.h>


sqlite3 *db = NULL; // Define the global variable for the database connection


// Initialize the database connection
bool initDbConnection() {
    const char *db_name = "plf.db";

    int rc = sqlite3_open(db_name, &db);

    if (rc != SQLITE_OK) {
        fprintf(stderr, "%sCan't open database: %s%s\n", ERROR, sqlite3_errmsg(db), RESET);
        logError("Can't open database");
        db = NULL;
        return false;
    }

    //fprintf(stdout, "%sDatabase connection opened successfully.%s\n", SUCCESS, RESET);
    return true;
}


// Close the database connection
void closeDbConnection() {
    if (db) {
        sqlite3_close(db);
        //fprintf(stdout, "%sDatabase connection closed successfully.%s\n", SUCCESS, RESET);
    }
}


// query execution function
int executeQuery(const char *query, char *prompt) {
    char *err_msg = NULL;

    bool rc;

    initDbConnection();
    rc = sqlite3_exec(db, query, NULL, NULL, &err_msg);
    if (rc != SQLITE_OK) {
        fprintf(stderr, "%sSQL error: %s%s\n", ERROR, err_msg, RESET);
        logError("SQL error");
        sqlite3_free(err_msg);
        return 0;
    }

    //fprintf(stdout, "%s%s%s\n", SUCCESS, prompt, RESET);
    closeDbConnection();
    return 1;
}


// Function to retrieve data from the database and print as a table
int retrieveData(const char *query, sqlite3_stmt **pStmt) {
    char *err_msg = NULL;

    bool rc = initDbConnection();
    if (!rc) {
        fprintf(stderr, "%sFailed to initialize the database connection.%s\n", ERROR, RESET);
        logError("Failed to initialize the database connection");
        return 0; // Failure
    }

    //fprintf(stdout, "%sExecuting query: %s%s\n", INFO, query, RESET);

    sqlite3_stmt *stmt;
    rc = sqlite3_prepare_v2(db, query, -1, &stmt, 0);
    if (rc != SQLITE_OK) {
        fprintf(stderr, "%sFailed to fetch data: %s%s\n", ERROR,sqlite3_errmsg(db), RESET);
        logError("Failed to fetch data");
        //closeDbConnection();
        return 1;
    }
    *pStmt = stmt;


    //closeDbConnection(); // Close the database connection
    return 1; // Success
}

