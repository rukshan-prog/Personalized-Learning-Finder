//
// Created by Rasintha_Rukshan on 19/12/2024.
//

#ifndef C_GROUP_PROJECT_INPUT_H
#define C_GROUP_PROJECT_INPUT_H

char* getString(char *prompt);
int getInteger(const char *prompt);
char *getChoice(char *options[], int i, char *prompt);
int getChoiceNumber(char *options[], int numOptions, char *prompt);
void fixForCloseConsole();
char* KeyInput();
char* getStringWithoutVerification(char *prompt);

#endif //C_GROUP_PROJECT_INPUT_H
