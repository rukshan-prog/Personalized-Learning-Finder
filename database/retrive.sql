-- SQL Queries Extracted from the Code

-- 1. Count Total Number of Courses
SELECT COUNT(*) FROM Courses;

-- 2. Fetch Courses for Pagination
SELECT
    Courses.CourseID,
    Courses.CourseName,
    Category.Category
FROM
    Courses
        INNER JOIN
    Category ON Courses.CategoryID = Category.CategoryID
    LIMIT ? OFFSET ?;

-- 3. Fetch Course Details by ID
SELECT
    Courses.CourseID,
    Courses.CourseName,
    Courses.Description,
    Courses.Duration,
    Courses.Fee,
    Currency.CurrencyName,
    Courses.MinAge,
    Courses.MaxAge,
    Gender.GenderType,
    MinEducationLevel.EducationLevelName,
    Institution.InstitutionName,
    Category.Category
FROM
    Courses
        INNER JOIN
    Currency ON Courses.CurrencyID = Currency.CurrencyID
        INNER JOIN
    Gender ON Courses.GenderID = Gender.GenderID
        INNER JOIN
    MinEducationLevel ON Courses.MinEducationLevelID = MinEducationLevel.EducationLevelID
        INNER JOIN
    Institution ON Courses.InstitutionID = Institution.InstitutionID
        INNER JOIN
    Category ON Courses.CategoryID = Category.CategoryID
WHERE
    Courses.CourseID = ?;

-- 4. Search Courses by Name
SELECT
    Courses.CourseID,
    Courses.CourseName
FROM
    Courses
WHERE
    Courses.CourseName LIKE ?
    LIMIT ? OFFSET ?;

-- 5. Count Search Results
SELECT COUNT(*)
FROM Courses
WHERE Courses.CourseName LIKE ?;

-- 6. Recommend Courses Based on Skills and Passions
WITH UserInput AS (
    SELECT ? AS PassionName, ? AS SkillName, ? AS SkillLevel
    UNION ALL
    SELECT ?, ?, ?
),
     MatchingPassions AS (
         SELECT c.CourseID, COUNT(cp.PassionID) AS PassionMatchScore
         FROM Courses c
                  JOIN course_passions cp ON c.CourseID = cp.CourseID
                  JOIN passions p ON cp.PassionID = p.PassionID
                  JOIN UserInput ui ON p.PassionName = ui.PassionName
         GROUP BY c.CourseID
     ),
     MatchingSkills AS (
         SELECT c.CourseID, COUNT(cs.SkillID) AS SkillMatchScore
         FROM Courses c
                  JOIN course_skills cs ON c.CourseID = cs.CourseID
                  JOIN skills s ON cs.SkillID = s.SkillID
                  JOIN UserInput ui ON s.SkillName = ui.SkillName
         WHERE cs.SkillID <= ui.SkillLevel
         GROUP BY c.CourseID
     )
SELECT
    Courses.CourseID,
    Courses.CourseName,
    Category.Category,
    IFNULL(mp.PassionMatchScore, 0) AS PassionMatchScore,
    IFNULL(ms.SkillMatchScore, 0) AS SkillMatchScore,
    (IFNULL(mp.PassionMatchScore, 0) + IFNULL(ms.SkillMatchScore, 0)) AS TotalScore
FROM Courses
         INNER JOIN Category ON Courses.CategoryID = Category.CategoryID
         LEFT JOIN MatchingPassions mp ON Courses.CourseID = mp.CourseID
         LEFT JOIN MatchingSkills ms ON Courses.CourseID = ms.CourseID
ORDER BY TotalScore DESC, PassionMatchScore DESC, SkillMatchScore DESC
    LIMIT ? OFFSET ?;


-- Recommend Courses Based on Skills and Passions

-- Name:            _____________
-- Age:             _____________
-- Gender:          _____________
-- Education Level: _____________
-- Passion:         _____________
-- Your skill list:  Skill                         Level
--                 1.____                          ____
--                 2.____                          ____

    -- age, gender, Education Level, Passion, skill list (max 3 with it level 'biginer, intermediat, advanced')
-- search passion
SELECT * FROM passions WHERE PassionName LIKE '%d' LIMIT ? OFFSET ?;