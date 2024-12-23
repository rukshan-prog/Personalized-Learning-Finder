#include <stdio.h>
#include <stdlib.h>
#include <input.h>
#include <skill.h>
#include <passion.h>
#include <color.h>
#include <user.h>
#include <dbcon.h>



int main(void) {

    // Pointer to the database connection
    sqlite3 *db = NULL;

    // Create a connection to the database
    if (!createConnection(&db)) {
        // Failed to connect
        printf("Failed to connect to the database.\n");

    } else {
        // Successfully connected
        printf("Database connection established.\n");

        // code here

        // Close the database connection when done
        sqlite3_close(db);
    }





    fixForCloseConsole();
    return 0;
}


// close console
void fixForCloseConsole() {
    char c;
    printf("Press any key to close...");
    scanf("%c", &c);
}