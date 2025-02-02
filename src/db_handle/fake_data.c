//
// Created by Rasintha_Rukshan on 03/01/2025.
//


#include <stdbool.h>
#include <dbcon.h>
#include <handle_tables.h>

bool add_fake_data() {

char *sql1 = "-- Insert into Institution\n"
             "INSERT OR IGNORE INTO Institution (InstitutionID, InstitutionName) VALUES\n"
             "(1, 'Harvard University'),\n"
             "(2, 'MIT'),\n"
             "(3, 'Stanford University');\n"
             "\n"
             "-- Insert into Category\n"
             "INSERT OR IGNORE INTO Category (CategoryID, Category) VALUES\n"
             "(1, 'Computer Science'),\n"
             "(2, 'Business'),\n"
             "(3, 'Arts');\n"
             "\n"
             "-- Insert into MinEducationLevel\n"
             "INSERT OR IGNORE INTO MinEducationLevel (EducationLevelID, EducationLevelName) VALUES\n"
             "(1, 'O/L'),\n"
             "(2, 'A/L'),\n"
             "(3, 'Bachelor'),\n"
             "(4, 'Master'),\n"
             "(5, 'PHD');\n"
             "\n"
             "-- Insert into Currency\n"
             "INSERT OR IGNORE INTO Currency (CurrencyID, CurrencyName) VALUES\n"
             "(1, 'USD'),\n"
             "(2, 'EUR'),\n"
             "(3, 'GBP'),\n"
             "(4, 'LKR');\n"
             "\n"
             "-- Insert into Gender\n"
             "INSERT OR IGNORE INTO Gender (GenderID, GenderType) VALUES\n"
             "(1, 'Male'),\n"
             "(2, 'Female'),\n"
             "(3, 'Any');\n"
             "\n"
             "-- Insert into Skills\n"
             "INSERT OR IGNORE INTO skills (SkillID, SkillName) VALUES\n"
             "(1, 'Python Programming'),\n"
             "(2, 'Data Analysis'),\n"
             "(3, 'Marketing');\n"
             "\n"
             "-- Insert into Passions\n"
             "INSERT OR IGNORE INTO passions (PassionID, PassionName) VALUES\n"
             "(1, 'Technology'),\n"
             "(2, 'Entrepreneurship'),\n"
             "(3, 'Design');\n"
             "\n"
             "-- Insert into Courses\n"
             "INSERT OR IGNORE INTO Courses (CourseID, CourseName, InstitutionID, CategoryID, Description, Duration, Fee, CurrencyID, MinAge, MaxAge, GenderID, MinEducationLevelID, level) VALUES\n"
             "(1, 'Intro to Python', 1, 1, 'Learn Python basics', '3 months', 500, 1, 18, 50, 1, 2, 'Beginner'),\n"
             "(2, 'Data Science Bootcamp', 2, 1, 'Comprehensive Data Science course', '6 months', 1500, 1, 20, 45, 2, 2, 'Intermediate'),\n"
             "(3, 'Business Strategy', 3, 2, 'Learn to formulate business strategies', '4 months', 1000, 2, 22, 50, 3, 2, 'Advanced');\n"
             "\n"
             "-- Insert into course_skills (associating skills with courses)\n"
             "INSERT OR IGNORE INTO course_skills (CourseID, SkillID) VALUES\n"
             "(1, 1),\n"
             "(2, 2), \n"
             "(3, 3); \n"
             "\n"
             "-- Insert into course_passions (associating passions with courses)\n"
             "INSERT OR IGNORE INTO course_passions (CourseID, PassionID) VALUES\n"
             "(1, 1),  \n"
             "(3, 2);";
    drop_tables();
    create_tables();
    executeQuery(sql1, "Inserting data into individual table successful.");
    //executeQuery(sql2, "Inserting 100 rows into courses table successful.");


return true;
}

