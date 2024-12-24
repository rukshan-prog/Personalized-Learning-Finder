//
// Created by Rasintha_Rukshan on 23/12/2024.
//

#include <stdlib.h>
#include <stdio.h>
#include <dbcon.h>
#include <handle_tables.h>

int drop_tables();

int create_tables() {
    initDbConnection();
    closeDbConnection();
    return 1;
}

int drop_tables() {
    initDbConnection();
    closeDbConnection();
    return 1;
}


