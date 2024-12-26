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



int main(void) {



    create_tables();
    drop_tables();


    fixForCloseConsole();
    return 0;
}





// close console
void fixForCloseConsole() {
    char c;
    printf("Press any key to close...");
    scanf("%c", &c);
}