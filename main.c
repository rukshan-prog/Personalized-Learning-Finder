#include <stdio.h>
#include <stdlib.h>
#include <input.h>
#include <skill.h>
#include <passion.h>


int main(void) {



    char** skill = (char **) getSkill();
    for (int i = 0; i < 3; i++) {
        printf("%s\n", skill[i]);
    }


    char** passion = (char **) getPassion();
    for (int i = 0; i < 3; i++) {
        printf("%s\n", passion[i]);
    }

    // Free dynamically allocated memory
    free(skill);
    free(passion);

    return 0;
}
