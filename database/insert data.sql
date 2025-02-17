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

-- Insert additional data into Institution
INSERT OR IGNORE INTO Institution (InstitutionID, InstitutionName) VALUES
(4, 'University of Cambridge'),
(5, 'California Institute of Technology'),
(6, 'University of Oxford'),
(7, 'Princeton University'),
(8, 'Yale University');

-- Insert additional data into Category
INSERT OR IGNORE INTO Category (CategoryID, Category) VALUES
(4, 'Engineering'),
(5, 'Medicine'),
(6, 'Law'),
(7, 'Social Sciences'),
(8, 'Natural Sciences');

-- Insert additional data into Skills
INSERT OR IGNORE INTO skills (SkillID, SkillName) VALUES
(4, 'Java Programming'),
(5, 'Machine Learning'),
(6, 'Financial Analysis'),
(7, 'Public Speaking'),
(8, 'Project Management'),
(9, 'Web Development'),
(10, 'Artificial Intelligence');

-- Insert additional data into Passions
INSERT OR IGNORE INTO passions (PassionID, PassionName) VALUES
(4, 'Healthcare'),
(5, 'Environmental Sustainability'),
(6, 'Education'),
(7, 'Social Justice'),
(8, 'Creative Writing');

-- Insert additional data into Courses
INSERT OR IGNORE INTO Courses (CourseID, CourseName, InstitutionID, CategoryID, Description, Duration, Fee, CurrencyID, MinAge, MaxAge, GenderID, MinEducationLevelID, level) VALUES
(4, 'Advanced Java Programming', 4, 1, 'Deep dive into Java programming', '4 months', 800, 1, 20, 45, 3, 2, 'Intermediate'),
(5, 'Machine Learning Fundamentals', 5, 1, 'Introduction to Machine Learning', '5 months', 1200, 1, 22, 50, 3, 3, 'Intermediate'),
(6, 'Financial Analysis for Managers', 6, 2, 'Learn financial analysis techniques', '3 months', 900, 2, 25, 55, 3, 3, 'Advanced'),
(7, 'Public Speaking Mastery', 7, 3, 'Master the art of public speaking', '2 months', 300, 1, 18, 60, 3, 1, 'Beginner'),
(8, 'Project Management Professional', 8, 2, 'Become a certified project manager', '6 months', 2000, 1, 23, 50, 3, 3, 'Advanced'),
(9, 'Web Development Bootcamp', 1, 1, 'Full-stack web development course', '6 months', 1500, 1, 18, 40, 3, 2, 'Intermediate'),
(10, 'AI and Ethics', 2, 7, 'Explore ethical implications of AI', '3 months', 700, 1, 20, 50, 3, 3, 'Intermediate');

-- Insert additional data into course_skills (associating skills with courses)
INSERT OR IGNORE INTO course_skills (CourseID, SkillID) VALUES
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Insert additional data into course_passions (associating passions with courses)
INSERT OR IGNORE INTO course_passions (CourseID, PassionID) VALUES
(4, 1),
(5, 1),
(6, 2),
(7, 3),
(8, 2),
(9, 1),
(10, 7);


-- Insert additional data into Institution
INSERT OR IGNORE INTO Institution (InstitutionID, InstitutionName) VALUES
(9, 'University of Chicago'),
(10, 'Columbia University'),
(11, 'University of California, Berkeley'),
(12, 'University of Toronto'),
(13, 'ETH Zurich'),
(14, 'University of Tokyo'),
(15, 'National University of Singapore');

-- Insert additional data into Category
INSERT OR IGNORE INTO Category (CategoryID, Category) VALUES
(9, 'Psychology'),
(10, 'History'),
(11, 'Philosophy'),
(12, 'Physics'),
(13, 'Chemistry'),
(14, 'Biology'),
(15, 'Economics');

-- Insert additional data into Skills
INSERT OR IGNORE INTO skills (SkillID, SkillName) VALUES
(11, 'C++ Programming'),
(12, 'Cloud Computing'),
(13, 'Cybersecurity'),
(14, 'Digital Marketing'),
(15, 'UI/UX Design'),
(16, 'Blockchain Development'),
(17, 'DevOps'),
(18, 'Quantum Computing'),
(19, 'Bioinformatics'),
(20, 'Game Development');

-- Insert additional data into Passions
INSERT OR IGNORE INTO passions (PassionID, PassionName) VALUES
(9, 'Space Exploration'),
(10, 'Artificial Life'),
(11, 'Music'),
(12, 'Film Making'),
(13, 'Photography'),
(14, 'Culinary Arts'),
(15, 'Fashion Design');

-- Insert additional data into Courses
INSERT OR IGNORE INTO Courses (CourseID, CourseName, InstitutionID, CategoryID, Description, Duration, Fee, CurrencyID, MinAge, MaxAge, GenderID, MinEducationLevelID, level) VALUES
(11, 'Advanced C++ Programming', 9, 1, 'Master C++ programming', '5 months', 1000, 1, 20, 45, 3, 2, 'Advanced'),
(12, 'Cloud Computing Essentials', 10, 1, 'Learn the basics of cloud computing', '4 months', 1200, 1, 22, 50, 3, 3, 'Intermediate'),
(13, 'Cybersecurity Fundamentals', 11, 1, 'Introduction to cybersecurity', '6 months', 1500, 1, 20, 45, 3, 2, 'Intermediate'),
(14, 'Digital Marketing Strategies', 12, 2, 'Learn digital marketing techniques', '3 months', 800, 2, 18, 50, 3, 1, 'Beginner'),
(15, 'UI/UX Design Principles', 13, 3, 'Master UI/UX design', '4 months', 900, 1, 20, 40, 3, 2, 'Intermediate'),
(16, 'Blockchain Development', 14, 1, 'Learn blockchain technology', '6 months', 2000, 1, 22, 50, 3, 3, 'Advanced'),
(17, 'DevOps Engineering', 15, 1, 'Become a DevOps engineer', '5 months', 1800, 1, 23, 45, 3, 3, 'Advanced'),
(18, 'Quantum Computing Basics', 9, 12, 'Introduction to quantum computing', '3 months', 700, 1, 20, 50, 3, 3, 'Intermediate'),
(19, 'Bioinformatics for Beginners', 10, 14, 'Learn bioinformatics basics', '4 months', 1000, 1, 22, 45, 3, 2, 'Beginner'),
(20, 'Game Development with Unity', 11, 1, 'Create games using Unity', '6 months', 1500, 1, 18, 40, 3, 2, 'Intermediate');

-- Insert additional data into course_skills (associating skills with courses)
INSERT OR IGNORE INTO course_skills (CourseID, SkillID) VALUES
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

-- Insert additional data into course_passions (associating passions with courses)
INSERT OR IGNORE INTO course_passions (CourseID, PassionID) VALUES
(11, 1),
(12, 1),
(13, 1),
(14, 2),
(15, 3),
(16, 1),
(17, 1),
(18, 9),
(19, 10),
(20, 11);
