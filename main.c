#include <stdio.h>
#include <stdlib.h>
#include <input.h>
#include <skill.h>
#include <passion.h>
#include <color.h>
#include <user.h>
#include <dbcon.h>
#include <handle_tables.h>
#include <course_recommendation.h>
#include <output.h>




int main() {
    // run();

     //view_all_courses_pagination(1, 5);
    //test();

    while (1) {

        int x = getKeyInput();

        switch (x) {
            case 72: // up
                return "UP";
                break;
        }
    }



    fixForCloseConsole();
    return 0;
}



// close console
void fixForCloseConsole() {
    char c;
    printf("\n\nPress any key to close...");
    scanf("%c", &c);
}

