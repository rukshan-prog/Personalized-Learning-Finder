//
// Created by [your name] on [date].
//

#include <stdio.h>
#include <input.h>
#include <string.h>
#include <stdlib.h>


// get passion from the user
char* getPassion() {
    char *passion;
    passion = getString("Enter Your Passion");
    return passion;
}