-- 1. Create the Courses table
CREATE TABLE IF NOT EXISTS Courses (
                         CourseID INTEGER PRIMARY KEY AUTOINCREMENT,
                         CourseName TEXT NOT NULL,
                         Institution TEXT NOT NULL,
                         Category TEXT NOT NULL, -- e.g., "Programming", "Arts"
                         Description TEXT,
                         Duration TEXT, -- e.g., "3 months", "6 weeks"
                         Fee REAL, -- Course fee amount
                         Currency TEXT DEFAULT 'USD', -- Currency code, e.g., 'USD', 'EUR'
                         MinAge INTEGER, -- Minimum age to enroll
                         Gender TEXT CHECK(Gender IN ('Male', 'Female', 'Any')) DEFAULT 'Any', -- Gender requirement
                         MinEducationLevel TEXT -- e.g., "High School", "Bachelor's"
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






