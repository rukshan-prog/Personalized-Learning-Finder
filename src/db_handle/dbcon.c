//
// Created by Rasintha_Rukshan on 23/12/2024.
//

#include <color.h>
#include <stdio.h>
#include <dbcon.h>


int createConnection(sqlite3 **db) {
    int rc;

    // Open the database
    rc = sqlite3_open("plf.db", db);

    if (rc) {
        fprintf(stderr, "Can't open database:%s %s %s\n",ERROR, sqlite3_errmsg(*db), RESET);
        return 0;  // Return failure
    } else {
        fprintf(stdout, "%sDatabase successfully connected.%s\n", SUCCESS, RESET);
        return 1; // Return success
    }
}


