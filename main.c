#include <stdio.h>
#include <stdlib.h>
#include "src/header/input.h"


int main(void) {

    // test get string
    printf("output : %s\n", getString("Enter your name"));

    // test get integer
    printf("age is %d\n", getInteger("Enter your age"));

    // test get choice
    char* options[] = {
        "Option 1",
        "Option 2",
        "Option 3"
    };
    int numOptions = 3;

    char* choice = getChoice(options, numOptions);
    printf("You selected: %s\n", choice);


    return 0;
}
