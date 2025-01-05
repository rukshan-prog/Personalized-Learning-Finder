-- 1. Create the Institution table
CREATE TABLE  Institution (
                             InstitutionID INTEGER PRIMARY KEY AUTOINCREMENT,
                             InstitutionName TEXT NOT NULL UNIQUE
);

-- 2. Create the Category table
CREATE TABLE Category (
                          CategoryID INTEGER PRIMARY KEY AUTOINCREMENT,
                          CategoryName TEXT NOT NULL UNIQUE
);

-- 3. Create the Currency table
CREATE TABLE IF NOT EXISTS Currency (
                          CurrencyID INTEGER PRIMARY KEY AUTOINCREMENT,
                          CurrencyCode TEXT NOT NULL UNIQUE -- e.g., 'USD', 'EUR'
);

-- 4. Create the Gender table
CREATE TABLE Gender (
                        GenderID INTEGER PRIMARY KEY AUTOINCREMENT,
                        GenderType TEXT NOT NULL UNIQUE -- e.g., 'Male', 'Female', 'Any'
);

-- 5. Create the MinEducationLevel table
CREATE TABLE MinEducationLevel (
                                   EducationLevelID INTEGER PRIMARY KEY AUTOINCREMENT,
                                   EducationLevelName TEXT NOT NULL UNIQUE -- e.g., 'High School', 'Bachelor's'
);

-- 1. Create the Courses table
CREATE TABLE IF NOT EXISTS Courses (
                         CourseID INTEGER PRIMARY KEY AUTOINCREMENT,
                         CourseName TEXT NOT NULL,
                         InstitutionID INTEGER,
                         CategoryID INTEGER,
                         Description TEXT,
                         Duration TEXT,
                         Fee REAL,
                         CurrencyID INTEGER,
                         MinAge INTEGER,
                         GenderID INTEGER,
                         MinEducationLevelID INTEGER,
                         FOREIGN KEY (InstitutionID) REFERENCES Institution (InstitutionID),
                         FOREIGN KEY (CategoryID) REFERENCES Category (CategoryID),
                         FOREIGN KEY (CurrencyID) REFERENCES Currency (CurrencyID),
                         FOREIGN KEY (GenderID) REFERENCES Gender (GenderID),
                         FOREIGN KEY (MinEducationLevelID) REFERENCES MinEducationLevel (EducationLevelID)
);

-- 2. Create the Skills table
CREATE TABLE IF NOT EXISTS Skills (
                        SkillID INTEGER PRIMARY KEY AUTOINCREMENT,
                        SkillName TEXT NOT NULL UNIQUE
);

-- 3. Create the Passions table
CREATE TABLE IF NOT EXISTS Passions (
                          PassionID INTEGER PRIMARY KEY AUTOINCREMENT,
                          PassionName TEXT NOT NULL UNIQUE
);

-- 4. Create the CourseSkills table (many-to-many relationship between Courses and Skills)
CREATE TABLE IF NOT EXISTS CourseSkills (
                              CourseSkillID INTEGER PRIMARY KEY AUTOINCREMENT,
                              CourseID INTEGER NOT NULL,
                              SkillID INTEGER NOT NULL,
                              FOREIGN KEY (CourseID) REFERENCES Courses (CourseID),
                              FOREIGN KEY (SkillID) REFERENCES Skills (SkillID)
);

-- 5. Create the CoursePassions table (many-to-many relationship between Courses and Passions)
CREATE TABLE IF NOT EXISTS CoursePassions (
                                CoursePassionID INTEGER PRIMARY KEY AUTOINCREMENT,
                                CourseID INTEGER NOT NULL,
                                PassionID INTEGER NOT NULL,
                                FOREIGN KEY (CourseID) REFERENCES Courses (CourseID),
                                FOREIGN KEY (PassionID) REFERENCES Passions (PassionID)
);






