-- Create Tables

-- Institution Table
CREATE TABLE IF NOT EXISTS Institution (
    InstitutionID INTEGER PRIMARY KEY AUTOINCREMENT,
    InstitutionName TEXT NOT NULL UNIQUE
);

-- Category Table
CREATE TABLE IF NOT EXISTS Category (
    CategoryID INTEGER PRIMARY KEY AUTOINCREMENT,
    Category TEXT NOT NULL UNIQUE
);

-- Currency Table
CREATE TABLE IF NOT EXISTS Currency (
    CurrencyID INTEGER PRIMARY KEY AUTOINCREMENT,
    CurrencyName TEXT NOT NULL UNIQUE
);

-- Gender Table
CREATE TABLE IF NOT EXISTS Gender (
    GenderID INTEGER PRIMARY KEY AUTOINCREMENT,
    GenderType TEXT NOT NULL UNIQUE
);

-- Min Education Level Table
CREATE TABLE IF NOT EXISTS MinEducationLevel (
    EducationLevelID INTEGER PRIMARY KEY AUTOINCREMENT,
    EducationLevelName TEXT NOT NULL UNIQUE
);

-- Courses Table
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
    MaxAge INTEGER,
    GenderID INTEGER,
    MinEducationLevelID INTEGER,
    FOREIGN KEY (InstitutionID) REFERENCES Institution (InstitutionID),
    FOREIGN KEY (CategoryID) REFERENCES Category (CategoryID),
    FOREIGN KEY (CurrencyID) REFERENCES Currency (CurrencyID),
    FOREIGN KEY (GenderID) REFERENCES Gender (GenderID),
    FOREIGN KEY (MinEducationLevelID) REFERENCES MinEducationLevel (EducationLevelID)
);

-- Skills Table
CREATE TABLE IF NOT EXISTS Skills (
    SkillID INTEGER PRIMARY KEY AUTOINCREMENT,
    SkillName TEXT NOT NULL UNIQUE
);

-- Passions Table
CREATE TABLE IF NOT EXISTS Passions (
    PassionID INTEGER PRIMARY KEY AUTOINCREMENT,
    PassionName TEXT NOT NULL UNIQUE
);

-- Course Skills Table
CREATE TABLE IF NOT EXISTS Course_Skills (
    CourseSkillID INTEGER PRIMARY KEY AUTOINCREMENT,
    CourseID INTEGER NOT NULL,
    SkillID INTEGER NOT NULL,
    FOREIGN KEY (CourseID) REFERENCES Courses (CourseID),
    FOREIGN KEY (SkillID) REFERENCES Skills (SkillID)
);

-- Course Passions Table
CREATE TABLE IF NOT EXISTS Course_Passions (
    CoursePassionID INTEGER PRIMARY KEY AUTOINCREMENT,
    CourseID INTEGER NOT NULL,
    PassionID INTEGER NOT NULL,
    FOREIGN KEY (CourseID) REFERENCES Courses (CourseID),
    FOREIGN KEY (PassionID) REFERENCES Passions (PassionID)
);

