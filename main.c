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



// Main function
int main(void) {


    run();


    fixForCloseConsole();
    return 0;
}



// close console
void fixForCloseConsole() {
    char c;
    printf("\n\nPress any key to close...");
    scanf("%c", &c);
}