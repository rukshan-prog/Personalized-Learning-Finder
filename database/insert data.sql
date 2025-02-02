-- Insert into Institution
INSERT OR IGNORE INTO Institution (InstitutionID, InstitutionName) VALUES
(1, 'Harvard University'),
(2, 'MIT'),
(3, 'Stanford University');


-- Insert into Category
INSERT OR IGNORE INTO Category (CategoryID, Category) VALUES
(1, 'Computer Science'),
(2, 'Business'),
(3, 'Arts');

-- Insert into MinEducationLevel
INSERT OR IGNORE INTO MinEducationLevel (EducationLevelID, EducationLevelName) VALUES
(1, 'O/L'),
(2, 'A/L'),
(3, 'Bachelor'),
(4, 'Master'),
(5, 'PHD');

-- Insert into Currency
INSERT OR IGNORE INTO Currency (CurrencyID, CurrencyName) VALUES
(1, 'USD'),
(2, 'EUR'),
(3, 'GBP'),
(4, 'LKR');

-- Insert into Gender
INSERT OR IGNORE INTO Gender (GenderID, GenderType) VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'Any');

-- Insert into Skills
INSERT OR IGNORE INTO skills (SkillID, SkillName) VALUES
(1, 'Python Programming'),
(2, 'Data Analysis'),
(3, 'Marketing');

-- Insert into Passions
INSERT OR IGNORE INTO passions (PassionID, PassionName) VALUES
(1, 'Technology'),
(2, 'Entrepreneurship'),
(3, 'Design');

-- Insert into Courses
INSERT OR IGNORE INTO Courses (CourseID, CourseName, InstitutionID, CategoryID, Description, Duration, Fee, CurrencyID, MinAge, MaxAge, GenderID, MinEducationLevelID, level) VALUES
(1, 'Intro to Python', 1, 1, 'Learn Python basics', '3 months', 500, 1, 18, 50, 1, 1, 'Beginner'),
(2, 'Data Science Bootcamp', 2, 1, 'Comprehensive Data Science course', '6 months', 1500, 1, 20, 45, 2, 2, 'Intermediate'),
(3, 'Business Strategy', 3, 2, 'Learn to formulate business strategies', '4 months', 1000, 2, 22, 50, 3, 2, 'Advanced');

-- Insert into course_skills (associating skills with courses)
INSERT OR IGNORE INTO course_skills (CourseID, SkillID) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert into course_passions (associating passions with courses)
INSERT OR IGNORE INTO course_passions (CourseID, PassionID) VALUES
(1, 1),
(3, 2);
