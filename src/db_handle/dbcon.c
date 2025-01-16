//
// Created by Rasintha_Rukshan on 23/12/2024.
//

#include <color.h>
#include <stdio.h>
#include <dbcon.h>
#include <string.h>
#include <stdlib.h>
#include <output.h>


sqlite3 *db = NULL; // Define the global variable for the database connection



// Initialize the database connection
bool initDbConnection() {

    const char *db_name = "plf.db";

    fprintf(stdout, "%sInitializing database connection...%s\n", INFO, RESET);

    if (db) {
        fprintf(stdout, "%sDatabase connection already initialized.%s\n", INFO, RESET);
        return true;
    } else {
        int rc = sqlite3_open(db_name, &db);
        if (rc) {
            fprintf(stderr, "%sCan't open database: %s%s\n", ERROR, sqlite3_errmsg(db), RESET);
            return false; // Failure
        } else {
            fprintf(stdout, "%sDatabase connection opened successfully.%s\n", SUCCESS, RESET);
            return true;
        }
    }
}




// Close the database connection
void closeDbConnection() {
    if (db) {
        sqlite3_close(db);
        fprintf(stdout, "%sDatabase connection closed successfully.%s\n", SUCCESS, RESET);
    }
}




// query execution function
int executeQuery(const char *query, char *prompt) {
    char *err_msg = NULL;

    bool rc = initDbConnection();

    if (rc) {
        fprintf(stderr, "%sCan't open database: %s%s\n", ERROR, sqlite3_errmsg(db), RESET);
        return 0; // Failure
    }

    rc = sqlite3_exec(db, query, NULL, NULL, &err_msg);
    if (rc != SQLITE_OK) {
        fprintf(stderr, "%sSQL error: %s%s\n", ERROR, err_msg, RESET);
        sqlite3_free(err_msg);
        closeDbConnection();
        return 0; // Failure
    }

    fprintf(stdout, "%s%s%s\n", SUCCESS, prompt, RESET);
    closeDbConnection();  // Close the database connection
    return 1; // Success
}







// Function to retrieve data from the database and print as a table
int retrieveData(const char *query, sqlite3_stmt **pStmt) {
    char *err_msg = NULL;

    bool rc = initDbConnection();
    if (!rc) {
        fprintf(stderr, "%sFailed to initialize the database connection.%s\n", ERROR, RESET);
        return 0; // Failure
    }

    fprintf(stdout, "%sExecuting query: %s%s\n", INFO, query, RESET);

    sqlite3_stmt *stmt;
    rc = sqlite3_prepare_v2(db, query, -1, &stmt, 0);
    if (rc != SQLITE_OK) {
        fprintf(stderr, "%sFailed to fetch data: %s%s\n", ERROR,sqlite3_errmsg(db), RESET);
        closeDbConnection();
        return 1;
    }
    *pStmt = stmt;


    closeDbConnection(); // Close the database connection
    return 1; // Success
}

