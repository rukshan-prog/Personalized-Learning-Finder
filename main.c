#include <stdio.h>
#include <stdlib.h>
#include <input.h>
#include <skill.h>
#include <passion.h>
#include <color.h>



int main(void) {

    /*
    char *str = getString("Enter Your Name");
    system("cls");
    */

    Skill *skills = getSkill();
    /*for (int i = 0; i < 3; i++) {
        printf("Skill name: %s\n", skills[i].skillName);
        printf("Skill level: %s\n", skills[i].level);
    }*/

    /*printf("get skill end\n");

    char** passion = (char **) getPassion();
    for (int i = 0; i < 3; i++) {
        printf("%s\n", passion[i]);
    }

    printf("get passion end\n");*/

    while (1) {
        int i;
        scanf("%d", &i);
    }
    return 0;
}
