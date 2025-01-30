/*
Name:            _____________
Age:             _____________
Gender:          _____________
Education Level: _____________
Passion:         _____________
Your skill list:  Skill                         Level
                1.____                          ____
                2.____                          ____
*/



-- Get mach gender
SELECT Gender.GenderID
FROM Gender
WHERE Gender.GenderType = ? OR Gender.GenderType = 'Any';

-- Get mach education level
SELECT *
FROM MinEducationLevel
WHERE MinEducationLevel.EducationLevelID >= (
    SELECT MinEducationLevel.EducationLevelID
    FROM MinEducationLevel
    WHERE MinEducationLevel.EducationLevelName = ?
);

-- Get mach passion
SELECT *
FROM passions
WHERE PassionName LIKE ?;








-- Get mach skills
SELECT Courses.CourseID, Courses.CourseName
FROM Courses
         JOIN course_passions ON Courses.CourseID = course_passions.CourseID
         JOIN course_skills ON Courses.CourseID = course_skills.CourseID
WHERE
    GenderID IN (
        SELECT Gender.GenderID
        FROM Gender
        WHERE Gender.GenderType IN ('Male', 'Any')
    )
  AND MinEducationLevelID IN (
    SELECT MinEducationLevel.EducationLevelID
    FROM MinEducationLevel
    WHERE MinEducationLevel.EducationLevelID >= (
        SELECT MinEducationLevel.EducationLevelID
        FROM MinEducationLevel
        WHERE EducationLevelName = 'A/L'
    )
)
  AND PassionID = (
    SELECT passions.PassionID
    FROM passions
    WHERE PassionName = 'Technology'
)
  AND SkillID = (
    SELECT skills.SkillID
    FROM skills
    WHERE SkillName = 'Programming'
);






WITH MatchedCourses AS (
    SELECT
        c.CourseID,
        c.CourseName,
        c.Description,
        c.Duration,
        c.Fee,
        i.InstitutionName,
        COUNT(DISTINCT cp.PassionID) AS MatchedPassions,
        COUNT(DISTINCT cs.SkillID) AS MatchedSkills
    FROM Courses c
             JOIN Institution i ON c.InstitutionID = i.InstitutionID
             LEFT JOIN Course_Passions cp ON c.CourseID = cp.CourseID
             LEFT JOIN Passions p ON cp.PassionID = p.PassionID
             LEFT JOIN Course_Skills cs ON c.CourseID = cs.CourseID
             LEFT JOIN Skills s ON cs.SkillID = s.SkillID
    WHERE
        c.MinAge <= :userAge AND (c.MaxAge >= :userAge OR c.MaxAge IS NULL) -- Age match
      AND (c.GenderID = :userGender OR c.GenderID = 3)                     -- Gender match (3 = "Other" or all genders)
      AND c.MinEducationLevelID <= :userEducationLevel                   -- Education level match
      AND (p.PassionID IN (:userPassionIDs) OR :userPassionIDs IS NULL)  -- Passions match
      AND (s.SkillID IN (:userSkillIDs) OR :userSkillIDs IS NULL)        -- Skills match
    GROUP BY c.CourseID
)
SELECT
    CourseID,
    CourseName,
    Description,
    Duration,
    Fee,
    InstitutionName,
    MatchedPassions,
    MatchedSkills,
    (MatchedPassions + MatchedSkills) AS TotalMatches
FROM MatchedCourses
ORDER BY TotalMatches DESC, Fee ASC
LIMIT 1;






WITH UserSkills AS (
    SELECT 1 AS SkillID, 'Advanced' AS SkillLevel UNION ALL
    SELECT 2 AS SkillID, 'Intermediate' UNION ALL
    SELECT 3 AS SkillID, 'Beginner'
),
     SkillPriority AS (
         SELECT
             SkillID,
             CASE
                 WHEN SkillLevel = 'Advanced' THEN 3
                 WHEN SkillLevel = 'Intermediate' THEN 2
                 WHEN SkillLevel = 'Beginner' THEN 1
                 ELSE 0 -- Default if no level is specified
                 END AS Priority
         FROM UserSkills
     ),
     MatchedCourses AS (
         SELECT
             c.CourseID,
             c.CourseName,
             c.Description,
             c.Duration,
             c.Fee,
             i.InstitutionName,
             s.SkillID,
             sp.Priority
         FROM Courses c
                  JOIN Course_Skills cs ON c.CourseID = cs.CourseID
                  JOIN Skills s ON cs.SkillID = s.SkillID
                  JOIN SkillPriority sp ON s.SkillID = sp.SkillID
                  JOIN Institution i ON c.InstitutionID = i.InstitutionID
     )
SELECT
    CourseID,
    CourseName,
    Description,
    Duration,
    Fee,
    InstitutionName,
    SkillID,
    Priority
FROM MatchedCourses
ORDER BY Priority DESC, Fee ASC;


























-- Insert sample data into Category table
INSERT INTO Category (Category) VALUES
                                    ('Technology'),
                                    ('Business'),
                                    ('Arts'),
                                    ('Science');

-- Insert sample data into Currency table
INSERT INTO Currency (CurrencyName) VALUES
                                        ('USD'),
                                        ('LKR'),
                                        ('EUR');

-- Insert sample data into Gender table
INSERT INTO Gender (GenderType) VALUES
                                    ('Male'),
                                    ('Female'),
                                    ('Other');

-- Insert sample data into Institution table
INSERT INTO Institution (InstitutionName) VALUES
                                              ('ABC University'),
                                              ('XYZ Institute'),
                                              ('Global Academy');

-- Insert sample data into MinEducationLevel table
INSERT INTO MinEducationLevel (EducationLevelName) VALUES
                                                       ('High School'),
                                                       ('Diploma'),
                                                       ('Bachelor’s Degree');

-- Insert sample data into Passions table
INSERT INTO Passions (PassionName) VALUES
                                       ('Programming'),
                                       ('Painting'),
                                       ('Data Analysis'),
                                       ('Entrepreneurship');

-- Insert sample data into Skills table
INSERT INTO Skills (SkillName) VALUES
                                   ('JavaScript'),
                                   ('Graphic Design'),
                                   ('Excel'),
                                   ('Marketing');

-- Insert sample data into Courses table
INSERT INTO Courses (CourseName, InstitutionID, CategoryID, Description, Duration, Fee, CurrencyID, MinAge, MaxAge, GenderID, MinEducationLevelID) VALUES
                                                                                                                                                       ('Web Development Bootcamp', 1, 1, 'Learn how to build websites using HTML, CSS, and JavaScript.', '3 months', 500, 1, 18, 40, 3, 1),
                                                                                                                                                       ('Business Management Basics', 2, 2, 'A foundation course in business management.', '6 months', 1000, 2, 20, 50, 3, 2),
                                                                                                                                                       ('Creative Painting', 3, 3, 'A course for beginners to learn painting techniques.', '2 months', 300, 3, 15, 35, 3, 1),
                                                                                                                                                       ('Data Science with Python', 1, 4, 'Learn data science concepts and programming with Python.', '4 months', 800, 1, 21, 45, 3, 2);

-- Insert sample data into Course_Passions table
INSERT INTO Course_Passions (CourseID, PassionID) VALUES
                                                      (1, 1), -- Web Development linked to Programming
                                                      (2, 4), -- Business Management linked to Entrepreneurship
                                                      (3, 2), -- Painting linked to Painting
                                                      (4, 3); -- Data Science linked to Data Analysis

-- Insert sample data into Course_Skills table
INSERT INTO Course_Skills (CourseID, SkillID) VALUES
                                                  (1, 1), -- Web Development linked to JavaScript
                                                  (2, 4), -- Business Management linked to Marketing
                                                  (3, 2), -- Painting linked to Graphic Design
                                                  (4, 3); -- Data Science linked to Excel










