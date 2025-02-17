SELECT
    c.CourseID,
    c.CourseName,
    cat.Category,
    c.level
FROM
    Courses c
        JOIN
    Institution i ON c.InstitutionID = i.InstitutionID
        JOIN
    Category cat ON c.CategoryID = cat.CategoryID
        JOIN
    Currency cu ON c.CurrencyID = cu.CurrencyID
        JOIN
    Gender g ON c.GenderID = g.GenderID
        JOIN
    MinEducationLevel mel ON c.MinEducationLevelID = mel.EducationLevelID
        LEFT JOIN
    course_skills cs ON c.CourseID = cs.CourseID
        LEFT JOIN
    course_passions cp ON c.CourseID = cp.CourseID
WHERE
    (cs.SkillID IN (SELECT SkillID FROM Skills WHERE SkillName IN ('Python Programming', 'Data Analysis')))
  AND (cp.PassionID IN (SELECT PassionID FROM Passions WHERE PassionName IN ('Technology', 'Entrepreneurship')))
  AND c.MinAge <= 25 AND c.MaxAge >= 25
  AND g.GenderType IN ('Male', 'Any')
  AND mel.EducationLevelName IN ('O/L')
ORDER BY
    c.Fee
    LIMIT 10 OFFSET 0;



SELECT
    c.CourseID,
    c.CourseName,
    cat.Category,
    c.level
FROM
    Courses c
        JOIN
    Institution i ON c.InstitutionID = i.InstitutionID
        JOIN
    Category cat ON c.CategoryID = cat.CategoryID
        JOIN
    Currency cu ON c.CurrencyID = cu.CurrencyID
        JOIN
    Gender g ON c.GenderID = g.GenderID
        JOIN
    MinEducationLevel mel ON c.MinEducationLevelID = mel.EducationLevelID
        LEFT JOIN
    course_skills cs ON c.CourseID = cs.CourseID
        LEFT JOIN
    course_passions cp ON c.CourseID = cp.CourseID
WHERE
    (cs.SkillID IN (SELECT SkillID FROM Skills WHERE SkillName IN ('Python Programming', 'Data Analysis')))
  AND (cp.PassionID IN (SELECT PassionID FROM Passions WHERE PassionName IN ('Technology', 'Entrepreneurship')))
  AND c.MinAge <= 25 AND c.MaxAge >= 25
  AND g.GenderType IN ('Male', 'Any')
  AND mel.EducationLevelName IN ('O/L')
LIMIT 10 OFFSET 0;


SELECT
                     c.CourseID,
                     c.CourseName,
                     cat.Category,
                     c.level
                 FROM
                     Courses c
                         JOIN
                     Institution i ON c.InstitutionID = i.InstitutionID
                         JOIN
                     Category cat ON c.CategoryID = cat.CategoryID
                         JOIN
                     Currency cu ON c.CurrencyID = cu.CurrencyID
                         JOIN
                     Gender g ON c.GenderID = g.GenderID
                         JOIN
                     MinEducationLevel mel ON c.MinEducationLevelID = mel.EducationLevelID
                         LEFT JOIN
                     course_skills cs ON c.CourseID = cs.CourseID
                         LEFT JOIN
                     course_passions cp ON c.CourseID = cp.CourseID
                 WHERE
                     (cs.SkillID IN (SELECT SkillID FROM Skills WHERE SkillName IN (?)))
                   AND (cp.PassionID IN (SELECT PassionID FROM Passions WHERE PassionName IN (?)))
                   AND c.MinAge <= ? AND c.MaxAge >= ?
                   AND g.GenderType IN (?, 'Any')
                   AND mel.EducationLevelName IN (?)
                 LIMIT 10;