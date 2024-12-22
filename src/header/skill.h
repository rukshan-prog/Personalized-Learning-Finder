//
// Created by [your name] on [date].
//

#ifndef C_GROUP_PROJECT_SKILL_H
#define C_GROUP_PROJECT_SKILL_H

// struct for skill
typedef struct {
    char skillName[100];
    char level[100];
} Skill;

// function to get skill
Skill* getSkill();


#endif //C_GROUP_PROJECT_SKILL_H
