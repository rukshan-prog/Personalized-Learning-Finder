#include <stdio.h>
#include <stdlib.h>
#include <input.h>
#include <skill.h>
#include <passion.h>


int main(void) {



    char *skill = getSkill();
    printf("%s\n", skill);

    char *passion = getPassion();
    printf("%s\n", passion);

    return 0;
}
