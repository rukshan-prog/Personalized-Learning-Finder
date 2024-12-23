# include <stdio.h>
#include <input.h>
#include <color.h>


char* getUserData() {


    char *name = getString("Enter your name");
    printf("%s\n", name);


    return name;
}

char* getUserName() {
    char *name = getString("Enter your name");
    return name;
}