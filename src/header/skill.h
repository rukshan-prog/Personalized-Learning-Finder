//
// Created by [your name] on [date].
//

#ifndef C_GROUP_PROJECT_SKILL_H
#define C_GROUP_PROJECT_SKILL_H

// single skill
typedef struct {
    char skillName[100];
    char level[100];
} Skill;


// array of skills
typedef struct {
    Skill skills[3]; // array of skills
    int skillCount;
} Skills;

// function to get skill
Skills* getSkill();



#endif //C_GROUP_PROJECT_SKILL_H
