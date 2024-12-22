//
// Created by Rasintha_Rukshan on 22/12/2024.
//


#include <stdio.h>
#include <input.h>
#include <string.h>


/*
 *
// test for get string
char *str = getString("Enter a string");
printf("You entered : %s\n", str);

// test get integer
int integer = getInteger("Enter a number");
printf("Your entered : %d\n", integer);

// test get choice
char* options[] = { // array of options
        "Option 1",
        "Option 2",
        "Option 3"
};
int numOptions = 3;  // number of options
char* choice = getChoice(options, numOptions);
printf("You selected: %s\n", choice);
 *
 */


/* create an array.
 * add 1 or more skill to the array (max 3).
 * use getString, getChoice and getInteger function to get the skill from the user.
 * return the array.
 */



// get skill from the user
char* getSkill() {
    static char* skill[3] = {
            "skill 1",
            "skill 2",
            "skill 3"
    };
    // code here



    return (char *) skill;
}

