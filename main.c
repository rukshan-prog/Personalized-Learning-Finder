#include <stdio.h>
#include <stdlib.h>
#include <input.h>
#include <skill.h>
#include <passion.h>
#include <color.h>



int main(void) {

    char *passions = getPassion();

    printf("%s\n", passions);


    // Skill *skills = getSkill();

    return 0;
}
