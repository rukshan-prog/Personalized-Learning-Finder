//
// Created by Rasintha_Rukshan on 23/12/2024.
//

#include <color.h>
#include <stdio.h>
#include <dbcon.h>


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
    int rc = sqlite3_open("plf.db", &db);  // Open the database connection

    if (rc) {
        fprintf(stderr, "%sCan't open database: %s%s\n", ERROR, sqlite3_errmsg(db), RESET);
        return 0; // Failure
    }

    rc = sqlite3_exec(db, query, NULL, NULL, &err_msg);
    if (rc != SQLITE_OK) {
        fprintf(stderr, "%sSQL error: %s%s\n", ERROR, err_msg, RESET);
        sqlite3_free(err_msg);
        sqlite3_close(db);
        return 0; // Failure
    }

    fprintf(stdout, "%s%s%s\n", SUCCESS, prompt, RESET);
    sqlite3_close(db);  // Close the database connection
    return 1; // Success
}
