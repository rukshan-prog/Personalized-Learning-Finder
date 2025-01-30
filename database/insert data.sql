-- Insert data

-- Institution Table
INSERT OR IGNORE INTO Institution (InstitutionName)
VALUES
    ('University of Colombo'),
    ('University of Peradeniya'),
    ('University of Sri Jayewardenepura'),
    ('University of Kelaniya'),
    ('University of Moratuwa'),
    ('University of Jaffna'),
    ('University of Ruhuna'),
    ('The Open University of Sri Lanka'),
    ('Eastern University, Sri Lanka'),
    ('South Eastern University of Sri Lanka'),
    ('Rajarata University of Sri Lanka'),
    ('Sabaragamuwa University of Sri Lanka'),
    ('Uva Wellassa University'),
    ('University of the Visual and Performing Arts'),
    ('Wayamba University of Sri Lanka'),
    ('Gampaha Wickramarachchi University of Indigenous Medicine'),
    ('University of Vavuniya'),
    ('Aquinas College of Higher Studies'),
    ('Colombo International Nautical and Engineering College'),
    ('Horizon Campus'),
    ('Saegis Campus'),
    ('Institute of Chartered Accountants of Sri Lanka'),
    ('Institute of Surveying and Mapping'),
    ('Institute of Technological Studies'),
    ('KAATSU'),
    ('National Institute of Business Management'),
    ('National Institute of Social Development'),
    ('National School of Business Management'),
    ('SANASA Campus'),
    ('South Asian Institute of Technology and Medicine'),
    ('Sri Lanka Institute of Development Administration'),
    ('Sri Lanka Institute of Information Technology'),
    ('Sri Lanka Institute of Nanotechnology'),
    ('Sri Lanka International Buddhist Academy'),
    ('Esoft Metro Campus'),
    ('International College of Business and Technology'),
    ('SLTC Research University'),
    ('Business Management School'),
    ('Royal Institute Colombo'),
    ('International Institute of Health Science'),
    ('University of Colombo School of Computing'),
    ('Postgraduate Institute of Medicine'),
    ('Postgraduate Institute of Agriculture'),
    ('Postgraduate Institute of Pali & Buddhist Studies'),
    ('Postgraduate Institute of Archaeology'),
    ('Postgraduate Institute of Management'),
    ('Postgraduate Institute of Science'),
    ('Postgraduate Institute of English'),
    ('Institute of Human Resource Advancement'),
    ('Institute of Indigenous Medicine'),
    ('General Sir John Kotelawala Defence University'),
    ('ICBT Campus'),
    ('Institute of Chemistry Ceylon'),
    ('National Institute of Business Management (Sri Lanka)'),
    ('National School of Business Management'),
    ('Ocean University of Sri Lanka'),
    ('University of Vocational Technology'),
    ('The Adolescent and Adult Thalassemia Care Unit'),
    ('Environmental Laboratory & Consultancy Services (ELCS)'),
    ('Laboratory for Cultural Material Analysis'),
    ('National Building Research Organization (NBRO)'),
    ('Palmyrah Research Institute'),
    ('Ceylon Petroleum Storage Terminal Limited'),
    ('Sri Lanka Institute of Information Technology (SLIIT)'),
    ('Ceylon Petroleum Corporation'),
    ('National Aquatic Resources Research and Development Agency (NARA)'),
    ('Postgraduate Institute of Medicine'),
    ('Postgraduate Institute of Agriculture'),
    ('Postgraduate Institute of Pali & Buddhist Studies'),
    ('Postgraduate Institute of Archaeology'),
    ('Postgraduate Institute of Management'),
    ('Postgraduate Institute of Science'),
    ('Postgraduate Institute of English'),
    ('Institute of Human Resource Advancement'),
    ('Institute of Indigenous Medicine'),
    ('University of Colombo School of Computing'),
    ('General Sir John Kotelawala Defence University'),
    ('ICBT Campus'),
    ('Institute of Chemistry Ceylon'),
    ('National Institute of Business Management (Sri Lanka)'),
    ('National School of Business Management'),
    ('Ocean University of Sri Lanka'),
    ('University of Vocational Technology'),
    ('The Adolescent and Adult Thalassemia Care Unit'),
    ('Environmental Laboratory & Consultancy Services (ELCS)'),
    ('Laboratory for Cultural Material Analysis'),
    ('National Building Research Organization (NBRO)'),
    ('Palmyrah Research Institute'),
    ('Ceylon Petroleum Storage Terminal Limited'),
    ('Sri Lanka Institute of Information Technology (SLIIT)'),
    ('Ceylon Petroleum Corporation'),
    ('National Aquatic Resources Research and Development Agency (NARA)');

-- Gender Table
INSERT OR IGNORE INTO Gender (GenderType)
VALUES
    ('Male'),
    ('Female'),
    ('Any');

-- Min Education Level Table
INSERT OR IGNORE INTO MinEducationLevel (EducationLevelName)
VALUES
    ('Primary'),
    ('O/L'),
    ('A/L'),
    ('Bachelor'),
    ('Master'),
    ('PHD'),
    ('Any');

-- Category Table
INSERT OR IGNORE INTO Category (Category) VALUES
    ('Medicine'),
    ('Engineering'),
    ('Computer Science'),
    ('Information Technology'),
    ('Business Administration'),
    ('Management'),
    ('Marketing'),
    ('Finance'),
    ('Accounting'),
    ('Law'),
    ('Arts'),
    ('Humanities'),
    ('Social Sciences'),
    ('Psychology'),
    ('Sociology'),
    ('Anthropology'),
    ('Political Science'),
    ('Economics'),
    ('History'),
    ('Philosophy'),
    ('Literature'),
    ('Languages'),
    ('Education'),
    ('Nursing'),
    ('Pharmacy'),
    ('Dentistry'),
    ('Veterinary Science'),
    ('Agriculture'),
    ('Architecture'),
    ('Design'),
    ('Fine Arts'),
    ('Performing Arts'),
    ('Music'),
    ('Dance'),
    ('Drama'),
    ('Film'),
    ('Journalism'),
    ('Mass Communication'),
    ('Sports Science'),
    ('Physical Education'),
    ('Tourism'),
    ('Hospitality'),
    ('Culinary Arts'),
    ('Aviation'),
    ('Aerospace'),
    ('Marine Biology'),
    ('Environmental Science'),
    ('Biotechnology'),
    ('Biochemistry'),
    ('Microbiology'),
    ('Genetics'),
    ('Biomedical Engineering'),
    ('Chemical Engineering'),
    ('Civil Engineering'),
    ('Electrical Engineering'),
    ('Mechanical Engineering'),
    ('Software Engineering'),
    ('Data Science'),
    ('Artificial Intelligence'),
    ('Cybersecurity'),
    ('Network Engineering'),
    ('Telecommunications'),
    ('Electronics'),
    ('Mathematics'),
    ('Physics'),
    ('Chemistry'),
    ('Biology'),
    ('Zoology'),
    ('Botany'),
    ('Geology'),
    ('Geography'),
    ('Meteorology'),
    ('Oceanography'),
    ('Astronomy'),
    ('International Relations'),
    ('Development Studies'),
    ('Public Administration'),
    ('Social Work'),
    ('Criminology'),
    ('Archaeology'),
    ('Linguistics'),
    ('Communication Studies'),
    ('Media Studies'),
    ('Film Studies'),
    ('Theatre Studies'),
    ('Music Studies'),
    ('Dance Studies'),
    ('Art History'),
    ('Design Studies'),
    ('Architecture Studies'),
    ('Urban Planning'),
    ('Landscape Architecture'),
    ('Environmental Studies'),
    ('Biomedical Science'),
    ('Bioinformatics'),
    ('Neuroscience'),
    ('Marine Science'),
    ('Forestry'),
    ('Public Health'),
    ('Health Administration'),
    ('Midwifery'),
    ('Physiotherapy'),
    ('Occupational Therapy'),
    ('Speech-Language Pathology'),
    ('Dietetics'),
    ('Nutrition'),
    ('Kinesiology'),
    ('Sports Medicine'),
    ('Graphic Design'),
    ('Industrial Design'),
    ('Interior Design'),
    ('Fashion Design'),
    ('Visual Arts'),
    ('Theatre'),
    ('Creative Writing'),
    ('English Literature'),
    ('Comparative Literature'),
    ('Foreign Languages'),
    ('Translation Studies'),
    ('Religious Studies'),
    ('Theology'),
    ('Hospitality Management'),
    ('Tourism Management'),
    ('Event Management'),
    ('Retail Management'),
    ('Supply Chain Management'),
    ('Logistics'),
    ('Project Management'),
    ('Human Resources Management'),
    ('Business Analytics'),
    ('Machine Learning'),
    ('Robotics'),
    ('Nanotechnology'),
    ('Materials Science'),
    ('Environmental Engineering'),
    ('Aerospace Engineering'),
    ('Industrial Engineering'),
    ('Architectural Engineering'),
    ('Construction Management'),
    ('Geophysics'),
    ('Sustainability Studies'),
    ('Renewable Energy'),
    ('Horticulture'),
    ('Animal Science'),
    ('Food Science'),
    ('Forestry'),
    ('Marine Biology'),
    ('Biochemistry'),
    ('Microbiology'),
    ('Genetics'),
    ('Molecular Biology'),
    ('Biophysics'),
    ('Pharmacology'),
    ('Toxicology'),
    ('Immunology'),
    ('Neuroscience'),
    ('Cognitive Science');

-- Currency Table
INSERT OR IGNORE INTO Currency (CurrencyName)
VALUES
    ('LKR'),
    ('USD');

-- Skills Table
INSERT OR IGNORE INTO Skills (SkillName) VALUES
    ('Programming'),
    ('Software Development'),
    ('Data Analysis'),
    ('Data Science'),
    ('Machine Learning'),
    ('Artificial Intelligence'),
    ('Cybersecurity'),
    ('Cloud Computing'),
    ('Networking'),
    ('Database Administration'),
    ('Web Development'),
    ('Mobile App Development'),
    ('UI/UX Design'),
    ('Project Management'),
    ('Communication'),
    ('Teamwork'),
    ('Problem-Solving'),
    ('Critical Thinking'),
    ('Creativity'),
    ('Leadership'),
    ('Time Management'),
    ('Negotiation'),
    ('Customer Service'),
    ('Presentation Skills'),
    ('Public Speaking'),
    ('Writing'),
    ('Research'),
    ('Analytical Skills'),
    ('Decision Making'),
    ('Conflict Resolution'),
    ('Adaptability'),
    ('Flexibility'),
    ('Interpersonal Skills'),
    ('Cross-cultural Communication'),
    ('Foreign Languages'),
    ('Business Communication'),
    ('Technical Writing'),
    ('Report Writing'),
    ('Presentation Software (PowerPoint, Google Slides, etc.)'),
    ('Spreadsheet Software (Excel, Google Sheets, etc.)'),
    ('Word Processing (Word, Google Docs, etc.)'),
    ('Data Visualization (Tableau, Power BI, etc.)'),
    ('Statistical Software (R, Python, SPSS, etc.)'),
    ('Programming Languages (Java, Python, C++, C#, JavaScript, etc.)'),
    ('Database Systems (SQL, MySQL, Oracle, etc.)'),
    ('Operating Systems (Windows, Linux, macOS, etc.)'),
    ('Networking Protocols (TCP/IP, HTTP, etc.)'),
    ('Cloud Platforms (AWS, Azure, GCP, etc.)'),
    ('Cybersecurity Tools (Firewalls, Antivirus, Intrusion Detection Systems, etc.)'),
    ('Data Mining'),
    ('Big Data'),
    ('Data Wrangling'),
    ('Data Cleaning'),
    ('Business Intelligence'),
    ('Marketing'),
    ('Sales'),
    ('Digital Marketing'),
    ('Social Media Marketing'),
    ('Search Engine Optimization (SEO)'),
    ('Search Engine Marketing (SEM)'),
    ('Content Marketing'),
    ('E-commerce'),
    ('Customer Relationship Management (CRM)'),
    ('Finance'),
    ('Accounting'),
    ('Economics'),
    ('Business Law'),
    ('Management'),
    ('Leadership'),
    ('Teamwork'),
    ('Negotiation'),
    ('Communication'),
    ('Problem-Solving'),
    ('Decision Making'),
    ('Strategic Planning'),
    ('Operations Management'),
    ('Supply Chain Management'),
    ('Human Resources Management'),
    ('Project Management'),
    ('Change Management'),
    ('Risk Management'),
    ('Quality Management'),
    ('Innovation'),
    ('Entrepreneurship'),
    ('Customer Service'),
    ('Sales'),
    ('Marketing'),
    ('Communication'),
    ('Negotiation'),
    ('Presentation Skills'),
    ('Public Speaking'),
    ('Writing'),
    ('Research'),
    ('Analytical Skills'),
    ('Decision Making'),
    ('Problem-Solving'),
    ('Critical Thinking'),
    ('Creativity'),
    ('Leadership'),
    ('Teamwork'),
    ('Time Management'),
    ('Adaptability'),
    ('Flexibility'),
    ('Interpersonal Skills'),
    ('Cross-cultural Communication'),
    ('Foreign Languages'),
    ('Business Communication'),
    ('Technical Writing'),
    ('Report Writing'),
    ('Presentation Software (PowerPoint, Google Slides, etc.)'),
    ('Spreadsheet Software (Excel, Google Sheets, etc.)'),
    ('Word Processing (Word, Google Docs, etc.)'),
    ('Data Visualization (Tableau, Power BI, etc.)'),
    ('Statistical Software (R, Python, SPSS, etc.)'),
    ('Programming Languages (Java, Python, C++, C#, JavaScript, etc.)'),
    ('Database Systems (SQL, MySQL, Oracle, etc.)'),
    ('Operating Systems (Windows, Linux, macOS, etc.)'),
    ('Networking Protocols (TCP/IP, HTTP, etc.)'),
    ('Cloud Platforms (AWS, Azure, GCP, etc.)'),
    ('Cybersecurity Tools (Firewalls, Antivirus, Intrusion Detection Systems, etc.)'),
    ('Data Mining'),
    ('Big Data'),
    ('Data Wrangling'),
    ('Data Cleaning'),
    ('Business Intelligence'),
    ('Marketing'),
    ('Sales'),
    ('Digital Marketing'),
    ('Social Media Marketing'),
    ('Search Engine Optimization (SEO)'),
    ('Search Engine Marketing (SEM)'),
    ('Content Marketing'),
    ('E-commerce'),
    ('Customer Relationship Management (CRM)'),
    ('Finance'),
    ('Accounting'),
    ('Economics'),
    ('Business Law'),
    ('Management'),
    ('Leadership'),
    ('Teamwork'),
    ('Negotiation'),
    ('Communication'),
    ('Problem-Solving'),
    ('Decision Making'),
    ('Strategic Planning'),
    ('Operations Management'),
    ('Supply Chain Management'),
    ('Human Resources Management'),
    ('Project Management'),
    ('Change Management'),
    ('Risk Management'),
    ('Quality Management'),
    ('Innovation'),
    ('Entrepreneurship'),
    ('Customer Service'),
    ('Sales'),
    ('Marketing'),
    ('Communication'),
    ('Negotiation'),
    ('Presentation Skills'),
    ('Public Speaking'),
    ('Writing'),
    ('Research'),
    ('Analytical Skills'),
    ('Decision Making'),
    ('Problem-Solving'),
    ('Critical Thinking'),
    ('Creativity'),
    ('Leadership'),
    ('Teamwork'),
    ('Time Management'),
    ('Adaptability'),
    ('Flexibility'),
    ('Interpersonal Skills'),
    ('Cross-cultural Communication'),
    ('Foreign Languages'),
    ('Business Communication'),
    ('Technical Writing'),
    ('Report Writing'),
    ('Presentation Software (PowerPoint, Google Slides, etc.)'),
    ('Spreadsheet Software (Excel, Google Sheets, etc.)'),
    ('Word Processing (Word, Google Docs, etc.)'),
    ('Data Visualization (Tableau, Power BI, etc.)'),
    ('Statistical Software (R, Python, SPSS, etc.)'),
    ('Programming Languages (Java, Python, C++, C#, JavaScript, etc.)'),
    ('Database Systems (SQL, MySQL, Oracle, etc.)'),
    ('Operating Systems (Windows, Linux, macOS, etc.)'),
    ('Networking Protocols (TCP/IP, HTTP, etc.)'),
    ('Cloud Platforms (AWS, Azure, GCP, etc.)'),
    ('Cybersecurity Tools (Firewalls, Antivirus, Intrusion Detection Systems, etc.)'),
    ('Data Mining'),
    ('Big Data'),
    ('Data Wrangling'),
    ('Data Cleaning'),
    ('Business Intelligence'),
    ('Marketing'),
    ('Sales'),
    ('Digital Marketing'),
    ('Social Media Marketing'),
    ('Search Engine Optimization (SEO)'),
    ('Search Engine Marketing (SEM)'),
    ('Content Marketing'),
    ('E-commerce'),
    ('Customer Relationship Management (CRM)'),
    ('Finance'),
    ('Accounting'),
    ('Economics'),
    ('Business Law'),
    ('Management'),
    ('Leadership'),
    ('Teamwork'),
    ('Negotiation'),
    ('Communication'),
    ('Problem-Solving'),
    ('Decision Making'),
    ('Strategic Planning'),
    ('Operations Management'),
    ('Supply Chain Management'),
    ('Human Resources Management'),
    ('Project Management'),
    ('Change Management'),
    ('Risk Management'),
    ('Quality Management'),
    ('Innovation'),
    ('Entrepreneurship'),
    ('Customer Service'),
    ('Sales'),
    ('Marketing'),
    ('Communication'),
    ('Negotiation'),
    ('Presentation Skills'),
    ('Public Speaking'),
    ('Writing'),
    ('Research'),
    ('Analytical Skills'),
    ('Decision Making'),
    ('Problem-Solving'),
    ('Critical Thinking'),
    ('Creativity'),
    ('Leadership'),
    ('Teamwork'),
    ('Time Management'),
    ('Adaptability'),
    ('Flexibility'),
    ('Interpersonal Skills'),
    ('Cross-cultural Communication'),
    ('Foreign Languages'),
    ('Business Communication'),
    ('Technical Writing'),
    ('Report Writing'),
    ('Presentation Software (PowerPoint, Google Slides, etc.)'),
    ('Spreadsheet Software (Excel, Google Sheets, etc.)'),
    ('Word Processing (Word, Google Docs, etc.)'),
    ('Data Visualization (Tableau, Power BI, etc.)'),
    ('Statistical Software (R, Python, SPSS, etc.)'),
    ('Programming Languages (Java, Python, C++, C#, JavaScript, etc.)'),
    ('Database Systems (SQL, MySQL, Oracle, etc.)'),
    ('Operating Systems (Windows, Linux, macOS, etc.)'),
    ('Networking Protocols (TCP/IP, HTTP, etc.)'),
    ('Cloud Platforms (AWS, Azure, GCP, etc.)'),
    ('Cybersecurity Tools (Firewalls, Antivirus, Intrusion Detection Systems, etc.)'),
    ('Data Mining'),
    ('Big Data'),
    ('Data Wrangling'),
    ('Data Cleaning'),
    ('Business Intelligence'),
    ('Marketing'),
    ('Sales'),
    ('Digital Marketing'),
    ('Social Media Marketing'),
    ('Search Engine Optimization (SEO)'),
    ('Search Engine Marketing (SEM)'),
    ('Content Marketing'),
    ('E-commerce'),
    ('Customer Relationship Management (CRM)'),
    ('Finance'),
    ('Accounting'),
    ('Economics'),
    ('Business Law'),
    ('Management'),
    ('Leadership'),
    ('Teamwork'),
    ('Negotiation'),
    ('Communication'),
    ('Problem-Solving'),
    ('Decision Making'),
    ('Strategic Planning'),
    ('Operations Management'),
    ('Supply Chain Management'),
    ('Human Resources Management'),
    ('Project Management'),
    ('Change Management'),
    ('Risk Management'),
    ('Quality Management'),
    ('Innovation'),
    ('Entrepreneurship'),
    ('Customer Service'),
    ('Sales'),
    ('Marketing'),
    ('Communication'),
    ('Negotiation'),
    ('Presentation Skills'),
    ('Public Speaking'),
    ('Writing'),
    ('Research'),
    ('Analytical Skills'),
    ('Decision Making'),
    ('Problem-Solving'),
    ('Critical Thinking'),
    ('Creativity'),
    ('Leadership'),
    ('Teamwork'),
    ('Time Management'),
    ('Adaptability'),
    ('Flexibility'),
    ('Interpersonal Skills'),
    ('Cross-cultural Communication'),
    ('Foreign Languages'),
    ('Business Communication'),
    ('Technical Writing'),
    ('Report Writing'),
    ('Presentation Software (PowerPoint, Google Slides, etc.)'),
    ('Spreadsheet Software (Excel, Google Sheets, etc.)'),
    ('Word Processing (Word, Google Docs, etc.)'),
    ('Data Visualization (Tableau, Power BI, etc.)'),
    ('Statistical Software (R, Python, SPSS, etc.)'),
    ('Programming Languages (Java, Python, C++, C#, JavaScript, etc.)'),
    ('Database Systems (SQL, MySQL, Oracle, etc.)'),
    ('Operating Systems (Windows, Linux, macOS, etc.)'),
    ('Networking Protocols (TCP/IP, HTTP, etc.)'),
    ('Cloud Platforms (AWS, Azure, GCP, etc.)'),
    ('Cybersecurity Tools (Firewalls, Antivirus, Intrusion Detection Systems, etc.)'),
    ('Data Mining'),
    ('Big Data'),
    ('Data Wrangling'),
    ('Data Cleaning'),
    ('Business Intelligence'),
    ('Marketing'),
    ('Sales'),
    ('Digital Marketing'),
    ('Social Media Marketing'),
    ('Search Engine Optimization (SEO)'),
    ('Search Engine Marketing (SEM)'),
    ('Content Marketing'),
    ('E-commerce'),
    ('Customer Relationship Management (CRM)'),
    ('Finance'),
    ('Accounting'),
    ('Economics'),
    ('Business Law'),
    ('Management'),
    ('Leadership'),
    ('Teamwork'),
    ('Negotiation'),
    ('Communication'),
    ('Problem-Solving'),
    ('Decision Making'),
    ('Strategic Planning'),
    ('Operations Management'),
    ('Supply Chain Management'),
    ('Human Resources Management'),
    ('Project Management'),
    ('Change Management'),
    ('Risk Management'),
    ('Quality Management'),
    ('Innovation'),
    ('Entrepreneurship'),
    ('Customer Service'),
    ('Sales'),
    ('Marketing'),
    ('Communication'),
    ('Negotiation'),
    ('Presentation Skills'),
    ('Public Speaking'),
    ('Writing'),
    ('Research'),
    ('Analytical Skills'),
    ('Decision Making'),
    ('Problem-Solving'),
    ('Critical Thinking'),
    ('Creativity'),
    ('Leadership'),
    ('Teamwork'),
    ('Time Management'),
    ('Adaptability'),
    ('Flexibility'),
    ('Interpersonal Skills'),
    ('Cross-cultural Communication'),
    ('Foreign Languages'),
    ('Business Communication'),
    ('Technical Writing'),
    ('Report Writing'),
    ('Presentation Software (PowerPoint, Google Slides, etc.)'),
    ('Spreadsheet Software (Excel, Google Sheets, etc.)'),
    ('Word Processing (Word, Google Docs, etc.)'),
    ('Data Visualization (Tableau, Power BI, etc.)'),
    ('Statistical Software (R, Python, SPSS, etc.)'),
    ('Programming Languages (Java, Python, C++, C#, JavaScript, etc.)'),
    ('Database Systems (SQL, MySQL, Oracle, etc.)'),
    ('Operating Systems (Windows, Linux, macOS, etc.)'),
    ('Networking Protocols (TCP/IP, HTTP, etc.)'),
    ('Cloud Platforms (AWS, Azure, GCP, etc.)'),
    ('Cybersecurity Tools (Firewalls, Antivirus, Intrusion Detection Systems, etc.)'),
    ('Data Mining'),
    ('Big Data'),
    ('Data Wrangling'),
    ('Data Cleaning'),
    ('Business Intelligence'),
    ('Marketing'),
    ('Sales'),
    ('Digital Marketing'),
    ('Social Media Marketing'),
    ('Search Engine Optimization (SEO)'),
    ('Search Engine Marketing (SEM)'),
    ('Content Marketing'),
    ('E-commerce'),
    ('Customer Relationship Management (CRM)'),
    ('Finance'),
    ('Accounting'),
    ('Economics'),
    ('Business Law'),
    ('Management'),
    ('Leadership'),
    ('Teamwork'),
    ('Negotiation'),
    ('Communication'),
    ('Problem-Solving'),
    ('Decision Making'),
    ('Strategic Planning'),
    ('Operations Management'),
    ('Supply Chain Management'),
    ('Human Resources Management'),
    ('Project Management'),
    ('Change Management'),
    ('Risk Management'),
    ('Quality Management'),
    ('Innovation'),
    ('Entrepreneurship'),
    ('Customer Service'),
    ('Sales'),
    ('Marketing'),
    ('Communication'),
    ('Negotiation'),
    ('Presentation Skills'),
    ('Public Speaking'),
    ('Writing'),
    ('Research'),
    ('Analytical Skills'),
    ('Decision Making'),
    ('Problem-Solving'),
    ('Critical Thinking'),
    ('Creativity'),
    ('Leadership'),
    ('Teamwork'),
    ('Time Management'),
    ('Adaptability'),
    ('Flexibility'),
    ('Interpersonal Skills'),
    ('Cross-cultural Communication'),
    ('Foreign Languages'),
    ('Business Communication'),
    ('Technical Writing'),
    ('Report Writing'),
    ('Presentation Software (PowerPoint, Google Slides, etc.)'),
    ('Spreadsheet Software (Excel, Google Sheets, etc.)'),
    ('Word Processing (Word, Google Docs, etc.)'),
    ('Data Visualization (Tableau, Power BI, etc.)'),
    ('Statistical Software (R, Python, SPSS, etc.)'),
    ('Programming Languages (Java, Python, C++, C#, JavaScript, etc.)'),
    ('Database Systems (SQL, MySQL, Oracle, etc.)'),
    ('Operating Systems (Windows, Linux, macOS, etc.)'),
    ('Networking Protocols (TCP/IP, HTTP, etc.)'),
    ('Cloud Platforms (AWS, Azure, GCP, etc.)'),
    ('Cybersecurity Tools (Firewalls, Antivirus, Intrusion Detection Systems, etc.)'),
    ('Data Mining'),
    ('Big Data'),
    ('Data Wrangling'),
    ('Data Cleaning'),
    ('Business Intelligence'),
    ('Marketing'),
    ('Sales'),
    ('Digital Marketing'),
    ('Social Media Marketing'),
    ('Search Engine Optimization (SEO)'),
    ('Search Engine Marketing (SEM)'),
    ('Content Marketing'),
    ('E-commerce'),
    ('Customer Relationship Management (CRM)'),
    ('Finance'),
    ('Accounting'),
    ('Economics'),
    ('Business Law'),
    ('Management'),
    ('Leadership'),
    ('Teamwork'),
    ('Negotiation'),
    ('Communication'),
    ('Problem-Solving'),
    ('Decision Making'),
    ('Strategic Planning'),
    ('Operations Management'),
    ('Supply Chain Management'),
    ('Human Resources Management'),
    ('Project Management'),
    ('Change Management'),
    ('Risk Management'),
    ('Quality Management'),
    ('Innovation'),
    ('Entrepreneurship'),
    ('Customer Service'),
    ('Sales'),
    ('Marketing'),
    ('Communication'),
    ('Negotiation'),
    ('Presentation Skills'),
    ('Public Speaking'),
    ('Writing'),
    ('Research'),
    ('Analytical Skills'),
    ('Decision Making'),
    ('Problem-Solving'),
    ('Critical Thinking'),
    ('Creativity'),
    ('Leadership'),
    ('Teamwork'),
    ('Time Management'),
    ('Adaptability'),
    ('Flexibility'),
    ('Interpersonal Skills'),
    ('Cross-cultural Communication'),
    ('Foreign Languages'),
    ('Business Communication'),
    ('Technical Writing'),
    ('Report Writing');

-- Passions Table
INSERT OR IGNORE INTO Passions (PassionName) VALUES
    ('Technology'),
    ('Business'),
    ('Creativity'),
    ('Helping Others'),
    ('Learning'),
    ('Adventure'),
    ('Health & Wellness'),
    ('Environment'),
    ('Animals'),
    ('Music'),
    ('Art'),
    ('Writing'),
    ('Travel'),
    ('Food'),
    ('Sports'),
    ('Science'),
    ('Social Justice'),
    ('Innovation'),
    ('Leadership'),
    ('Personal Growth'),
    ('Community Service'),
    ('Nature'),
    ('History'),
    ('Culture'),
    ('Philosophy'),
    ('Spirituality'),
    ('Gaming'),
    ('DIY'),
    ('Collecting'),
    ('Reading'),
    ('Film & TV'),
    ('Dance'),
    ('Theatre'),
    ('Cooking'),
    ('Baking'),
    ('Gardening'),
    ('DIY Crafts'),
    ('Photography'),
    ('Video Creation'),
    ('Painting'),
    ('Drawing'),
    ('Sculpting'),
    ('Music Production'),
    ('Playing Instruments'),
    ('Singing'),
    ('Dancing'),
    ('Acting'),
    ('Directing'),
    ('Writing'),
    ('Blogging'),
    ('Vlogging'),
    ('Journaling'),
    ('Podcasting'),
    ('Traveling'),
    ('Exploring New Cultures'),
    ('Backpacking'),
    ('Adventure Sports'),
    ('Fitness'),
    ('Yoga'),
    ('Meditation'),
    ('Healthy Eating'),
    ('Nutrition'),
    ('Volunteering'),
    ('Social Work'),
    ('Teaching'),
    ('Mentoring'),
    ('Animal Rescue'),
    ('Environmental Conservation'),
    ('Sustainability'),
    ('Research'),
    ('Entrepreneurship'),
    ('Personal Development'),
    ('Learning New Skills'),
    ('Exploring New Ideas'),
    ('Community Building'),
    ('Human Rights'),
    ('Environmental Protection'),
    ('Animal Welfare'),
    ('History'),
    ('Archaeology'),
    ('Culture'),
    ('Philosophy'),
    ('Religion'),
    ('Psychology'),
    ('Sociology'),
    ('Anthropology'),
    ('Politics'),
    ('Collecting'),
    ('Reading'),
    ('Film & TV'),
    ('Music'),
    ('Art'),
    ('Photography'),
    ('Videography');

-- Courses Table
INSERT OR IGNORE INTO Courses (CourseName, InstitutionID, CategoryID, Description, Duration, Fee, CurrencyID, MinAge, MaxAge, GenderID, MinEducationLevelID)
VALUES
    ('Bachelor of Medicine (MBBS)', 1, 1, 'A four-year undergraduate medical degree.', '4 Years', 500000.00, 1, 18, 25, 1, 3), -- University of Colombo, Medicine
    ('Bachelor of Engineering (Civil)', 2, 2, 'A four-year undergraduate degree in Civil Engineering.', '4 Years', 400000.00, 1, 18, 25, 1, 3), -- University of Peradeniya, Engineering
    ('Bachelor of Science (Computer Science)', 3, 3, 'A four-year undergraduate degree in Computer Science.', '4 Years', 350000.00, 1, 18, 25, 1, 3), -- University of Sri Jayewardenepura, Computer Science
    ('Bachelor of Information Technology (Hons.)', 4, 4, 'A four-year undergraduate degree in Information Technology.', '4 Years', 300000.00, 1, 18, 25, 1, 3), -- University of Kelaniya, Information Technology
    ('Bachelor of Business Administration (BBA)', 5, 5, 'A three-year undergraduate degree in Business Administration.', '3 Years', 250000.00, 1, 18, 25, 1, 3), -- University of Moratuwa, Business Administration
    ('Master of Business Administration (MBA)', 6, 6, 'A two-year postgraduate degree in Business Administration.', '2 Years', 750000.00, 1, 25, 40, 1, 4), -- University of Jaffna, Management
    ('Bachelor of Arts (English)', 7, 11, 'A three-year undergraduate degree in English Literature.', '3 Years', 200000.00, 1, 18, 25, 1, 3), -- University of Ruhuna, Arts
    ('Bachelor of Education (Primary)', 8, 23, 'A four-year undergraduate degree in Primary Education.', '4 Years', 225000.00, 1, 18, 25, 1, 3), -- The Open University of Sri Lanka, Education
    ('Bachelor of Engineering (Electrical)', 9, 2, 'A four-year undergraduate degree in Electrical Engineering.', '4 Years', 420000.00, 1, 18, 25, 1, 3), -- Eastern University, Sri Lanka, Engineering
    ('Bachelor of Science (Marine Biology)', 10, 46, 'A four-year undergraduate degree in Marine Biology.', '4 Years', 380000.00, 1, 18, 25, 1, 3), -- South Eastern University of Sri Lanka, Marine Biology
    ('Bachelor of Law (LL.B.)', 11, 10, 'A four-year undergraduate degree in Law.', '4 Years', 450000.00, 1, 18, 25, 1, 3), -- Rajarata University of Sri Lanka, Law
    ('Bachelor of Science (Psychology)', 12, 14, 'A three-year undergraduate degree in Psychology.', '3 Years', 280000.00, 1, 18, 25, 1, 3), -- Sabaragamuwa University of Sri Lanka, Psychology
    ('Bachelor of Science (Agriculture)', 13, 28, 'A four-year undergraduate degree in Agriculture.', '4 Years', 320000.00, 1, 18, 25, 1, 3), -- Uva Wellassa University, Agriculture
    ('Bachelor of Fine Arts (Painting)', 14, 31, 'A four-year undergraduate degree in Painting.', '4 Years', 275000.00, 1, 18, 25, 1, 3), -- University of the Visual and Performing Arts, Fine Arts
    ('Bachelor of Science (Information Systems)', 15, 4, 'A four-year undergraduate degree in Information Systems.', '4 Years', 310000.00, 1, 18, 25, 1, 3), -- Wayamba University of Sri Lanka, Information Technology
    ('Bachelor of Ayurveda Medicine', 16, 1, 'A five-year undergraduate degree in Ayurveda Medicine.', '5 Years', 480000.00, 1, 18, 25, 1, 3), -- Gampaha Wickramarachchi University of Indigenous Medicine, Medicine
    ('Bachelor of Science (Mathematics)', 17, 64, 'A three-year undergraduate degree in Mathematics.', '3 Years', 210000.00, 1, 18, 25, 1, 3), -- University of Vavuniya, Mathematics
    ('Diploma in Business Management', 18, 6, 'A two-year diploma in Business Management.', '2 Years', 150000.00, 1, 18, 30, 1, 2), -- Aquinas College of Higher Studies, Management
    ('Diploma in Nautical Science', 19, 44, 'A two-year diploma in Nautical Science.', '2 Years', 180000.00, 1, 18, 25, 1, 2), -- Colombo International Nautical and Engineering College, Aviation
    ('Bachelor of Business Administration (Hons.)', 20, 5, 'A three-year undergraduate degree in Business Administration (Hons.)', '3 Years', 280000.00, 1, 18, 25, 1, 3), -- Horizon Campus, Business Administration
    ('Bachelor of Science (Software Engineering)', 21, 57, 'A four-year undergraduate degree in Software Engineering.', '4 Years', 370000.00, 1, 18, 25, 1, 3), -- Saegis Campus, Software Engineering
    ('Chartered Accountancy Program', 22, 9, 'Professional qualification in Accounting.', '3 Years', 250000.00, 1, 18, 30, 1, 3), -- Institute of Chartered Accountants of Sri Lanka, Accounting
    ('Diploma in Surveying', 23, 2, 'A two-year diploma in Surveying.', '2 Years', 120000.00, 1, 18, 25, 1, 2), -- Institute of Surveying and Mapping, Engineering
    ('Diploma in Information Technology', 24, 4, 'A two-year diploma in Information Technology.', '2 Years', 100000.00, 1, 18, 25, 1, 2), -- Institute of Technological Studies, Information Technology
    ('Diploma in Marketing Management', 25, 7, 'A one-year diploma in Marketing Management.', '1 Year', 75000.00, 1, 18, 30, 1, 2), -- KAATSU, Marketing
    ('Postgraduate Diploma in Business Administration', 26, 6, 'A one-year postgraduate diploma in Business Administration.', '1 Year', 200000.00, 1, 25, 40, 1, 4), -- National Institute of Business Management, Management
    ('Diploma in Social Development', 27, 13, 'A one-year diploma in Social Development.', '1 Year', 80000.00, 1, 18, 30, 1, 2), -- National Institute of Social Development, Social Sciences
    ('Bachelor of Business Management (Hons.)', 28, 6, 'A three-year undergraduate degree in Business Management (Hons.)', '3 Years', 220000.00, 1, 18, 25, 1, 3), -- National School of Business Management, Management
    ('Diploma in Hospitality Management', 29, 42, 'A one-year diploma in Hospitality Management.', '1 Year', 90000.00, 1, 18, 25, 1, 2), -- SANASA Campus, Hospitality
    ('Bachelor of Medicine (MBBS)', 30, 1, 'A five-year undergraduate degree in Medicine.', '5 Years', 600000.00, 1, 18, 25, 1, 3), -- South Asian Institute of Technology and Medicine, Medicine
    ('Diploma in Development Administration', 31, 88, 'A one-year diploma in Development Administration.', '1 Year', 70000.00, 1, 18, 30, 1, 2), -- Sri Lanka Institute of Development Administration, Public Administration
    ('Bachelor of Information Technology (Hons.)', 32, 4, 'A four-year undergraduate degree in Information Technology (Hons.)', '4 Years', 350000.00, 1, 18, 25, 1, 3), -- Sri Lanka Institute of Information Technology, Information Technology
    ('Master of Science (Nanotechnology)', 33, 70, 'A two-year postgraduate degree in Nanotechnology.', '2 Years', 800000.00, 1, 25, 40, 1, 4), -- Sri Lanka Institute of Nanotechnology, Nanotechnology
    ('Bachelor of Buddhist Studies', 34, 23, 'A four-year undergraduate degree in Buddhist Studies.', '4 Years', 250000.00, 1, 18, 25, 1, 3), -- Sri Lanka International Buddhist Academy, Education
    ('Diploma in Business Management', 35, 6, 'A one-year diploma in Business Management.', '1 Year', 85000.00, 1, 18, 30, 1, 2), -- Esoft Metro Campus, Management
    ('Bachelor of Business Administration (Hons.)', 36, 5, 'A three-year undergraduate degree in Business Administration (Hons.)', '3 Years', 275000.00, 1, 18, 25, 1, 3), -- International College of Business and Technology, Business Administration
    ('Doctor of Philosophy (PhD) in Engineering', 37, 2, 'A three-year doctoral degree in Engineering.', '3 Years', 1200000.00, 1, 25, 40, 1, 5), -- SLTC Research University, Engineering
    ('Master of Business Administration (MBA)', 38, 6, 'A two-year postgraduate degree in Business Administration.', '2 Years', 650000.00, 1, 25, 40, 1, 4), -- Business Management School, Management
    ('Diploma in Professional Studies', 39, 13, 'A one-year diploma in Professional Studies.', '1 Year', 60000.00, 1, 18, 30, 1, 2), -- Royal Institute Colombo, Social Sciences
    ('Bachelor of Science (Nursing)', 40, 24, 'A four-year undergraduate degree in Nursing.', '4 Years', 300000.00, 1, 18, 25, 1, 3), -- International Institute of Health Science, Nursing
    ('Master of Science (Computer Science)', 41, 3, 'A two-year postgraduate degree in Computer Science.', '2 Years', 700000.00, 1, 25, 40, 1, 4), -- University of Colombo School of Computing, Computer Science
    ('Doctor of Medicine (MD)', 42, 1, 'A three-year postgraduate degree in Medicine.', '3 Years', 1000000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Medicine, Medicine
    ('Master of Science (Agriculture)', 43, 28, 'A two-year postgraduate degree in Agriculture.', '2 Years', 500000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Agriculture, Agriculture
    ('Doctor of Philosophy (PhD) in Pali and Buddhist Studies', 44, 23, 'A three-year doctoral degree in Pali and Buddhist Studies.', '3 Years', 800000.00, 1, 25, 40, 1, 5), -- Postgraduate Institute of Pali & Buddhist Studies, Education
    ('Master of Archaeology', 45, 91, 'A two-year postgraduate degree in Archaeology.', '2 Years', 600000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Archaeology, Archaeology
    ('Master of Business Administration (MBA)', 46, 6, 'A two-year postgraduate degree in Business Administration.', '2 Years', 750000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Management, Management
    ('Master of Science (Biochemistry)', 47, 49, 'A two-year postgraduate degree in Biochemistry.', '2 Years', 600000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Science, Biochemistry
    ('Master of Arts (English)', 48, 21, 'A two-year postgraduate degree in English.', '2 Years', 400000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of English, Languages
    ('Diploma in Human Resource Management', 49, 6, 'A one-year diploma in Human Resource Management.', '1 Year', 80000.00, 1, 18, 30, 1, 2), -- Institute of Human Resource Advancement, Management
    ('Diploma in Ayurveda Medicine', 50, 1, 'A two-year diploma in Ayurveda Medicine.', '2 Years', 120000.00, 1, 18, 25, 1, 2), -- Institute of Indigenous Medicine, Medicine
    ('Bachelor of Engineering (Mechanical)', 51, 2, 'A four-year undergraduate degree in Mechanical Engineering.', '4 Years', 410000.00, 1, 18, 25, 1, 3), -- General Sir John Kotelawala Defence University, Engineering
    ('Diploma in Business Management', 52, 6, 'A one-year diploma in Business Management.', '1 Year', 95000.00, 1, 18, 30, 1, 2), -- ICBT Campus, Management
    ('Diploma in Chemistry', 53, 66, 'A one-year diploma in Chemistry.', '1 Year', 65000.00, 1, 18, 25, 1, 2), -- Institute of Chemistry Ceylon, Chemistry
    ('Master of Business Administration (MBA)', 54, 6, 'A two-year postgraduate degree in Business Administration.', '2 Years', 700000.00, 1, 25, 40, 1, 4), -- National Institute of Business Management (Sri Lanka), Management
    ('Bachelor of Business Management (Hons.)', 55, 6, 'A three-year undergraduate degree in Business Management (Hons.)', '3 Years', 240000.00, 1, 18, 25, 1, 3), -- National School of Business Management, Management
    ('Bachelor of Science (Marine Biology)', 56, 46, 'A four-year undergraduate degree in Marine Biology.', '4 Years', 360000.00, 1, 18, 25, 1, 3), -- Ocean University of Sri Lanka, Marine Biology
    ('Diploma in Vocational Training', 57, 23, 'A one-year diploma in Vocational Training.', '1 Year', 50000.00, 1, 18, 25, 1, 2), -- University of Vocational Technology, Education
    ('Diploma in Thalassemia Care', 58, 24, 'A one-year diploma in Thalassemia Care.', '1 Year', 40000.00, 1, 18, 25, 1, 2), -- The Adolescent and Adult Thalassemia Care Unit, Nursing
    ('Certificate in Environmental Science', 59, 47, 'A six-month certificate course in Environmental Science.', '0.5 Years', 20000.00, 1, 18, 30, 1, 2), -- Environmental Laboratory & Consultancy Services (ELCS), Environmental Science
    ('Diploma in Cultural Material Analysis', 60, 91, 'A one-year diploma in Cultural Material Analysis.', '1 Year', 80000.00, 1, 18, 30, 1, 2), -- Laboratory for Cultural Material Analysis, Archaeology
    ('Certificate in Building Construction', 61, 2, 'A six-month certificate course in Building Construction.', '0.5 Years', 15000.00, 1, 18, 30, 1, 2), -- National Building Research Organization (NBRO), Engineering
    ('Diploma in Palmyrah Studies', 62, 28, 'A one-year diploma in Palmyrah Studies.', '1 Year', 60000.00, 1, 18, 25, 1, 2), -- Palmyrah Research Institute, Agriculture
    ('Certificate in Petroleum Refining', 63, 2, 'A six-month certificate course in Petroleum Refining.', '0.5 Years', 18000.00, 1, 18, 30, 1, 2), -- Ceylon Petroleum Storage Terminal Limited, Engineering
    ('Bachelor of Information Technology (Hons.)', 64, 4, 'A four-year undergraduate degree in Information Technology (Hons.)', '4 Years', 360000.00, 1, 18, 25, 1, 3), -- Sri Lanka Institute of Information Technology (SLIIT), Information Technology
    ('Diploma in Petroleum Engineering', 65, 2, 'A two-year diploma in Petroleum Engineering.', '2 Years', 150000.00, 1, 18, 25, 1, 2), -- Ceylon Petroleum Corporation, Engineering
    ('Diploma in Aquatic Resources Management', 66, 46, 'A one-year diploma in Aquatic Resources Management.', '1 Year', 75000.00, 1, 18, 25, 1, 2), -- National Aquatic Resources Research and Development Agency (NARA), Marine Biology
    ('Doctor of Medicine (MD)', 67, 1, 'A three-year postgraduate degree in Medicine.', '3 Years', 1000000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Medicine, Medicine
    ('Master of Science (Agriculture)', 68, 28, 'A two-year postgraduate degree in Agriculture.', '2 Years', 500000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Agriculture, Agriculture
    ('Doctor of Philosophy (PhD) in Pali and Buddhist Studies', 69, 23, 'A three-year doctoral degree in Pali and Buddhist Studies.', '3 Years', 800000.00, 1, 25, 40, 1, 5), -- Postgraduate Institute of Pali & Buddhist Studies, Education
    ('Master of Archaeology', 70, 91, 'A two-year postgraduate degree in Archaeology.', '2 Years', 600000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Archaeology, Archaeology
    ('Master of Business Administration (MBA)', 71, 6, 'A two-year postgraduate degree in Business Administration.', '2 Years', 750000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Management, Management
    ('Master of Science (Biochemistry)', 72, 49, 'A two-year postgraduate degree in Biochemistry.', '2 Years', 600000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Science, Biochemistry
    ('Master of Arts (English)', 73, 21, 'A two-year postgraduate degree in English.', '2 Years', 400000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of English, Languages
    ('Diploma in Human Resource Management', 74, 6, 'A one-year diploma in Human Resource Management.', '1 Year', 80000.00, 1, 18, 30, 1, 2), -- Institute of Human Resource Advancement, Management
    ('Diploma in Ayurveda Medicine', 75, 1, 'A two-year diploma in Ayurveda Medicine.', '2 Years', 120000.00, 1, 18, 25, 1, 2), -- Institute of Indigenous Medicine, Medicine
    ('Bachelor of Engineering (Mechanical)', 76, 2, 'A four-year undergraduate degree in Mechanical Engineering.', '4 Years', 410000.00, 1, 18, 25, 1, 3), -- General Sir John Kotelawala Defence University, Engineering
    ('Diploma in Business Management', 77, 6, 'A one-year diploma in Business Management.', '1 Year', 95000.00, 1, 18, 30, 1, 2), -- ICBT Campus, Management
    ('Diploma in Chemistry', 78, 66, 'A one-year diploma in Chemistry.', '1 Year', 65000.00, 1, 18, 25, 1, 2), -- Institute of Chemistry Ceylon, Chemistry
    ('Master of Business Administration (MBA)', 79, 6, 'A two-year postgraduate degree in Business Administration.', '2 Years', 700000.00, 1, 25, 40, 1, 4), -- National Institute of Business Management (Sri Lanka), Management
    ('Bachelor of Business Management (Hons.)', 80, 6, 'A three-year undergraduate degree in Business Management (Hons.)', '3 Years', 240000.00, 1, 18, 25, 1, 3), -- National School of Business Management, Management
    ('Bachelor of Science (Marine Biology)', 81, 46, 'A four-year undergraduate degree in Marine Biology.', '4 Years', 360000.00, 1, 18, 25, 1, 3), -- Ocean University of Sri Lanka, Marine Biology
    ('Diploma in Vocational Training', 82, 23, 'A one-year diploma in Vocational Training.', '1 Year', 50000.00, 1, 18, 25, 1, 2), -- University of Vocational Technology, Education
    ('Diploma in Thalassemia Care', 83, 24, 'A one-year diploma in Thalassemia Care.', '1 Year', 40000.00, 1, 18, 25, 1, 2), -- The Adolescent and Adult Thalassemia Care Unit, Nursing
    ('Certificate in Environmental Science', 84, 47, 'A six-month certificate course in Environmental Science.', '0.5 Years', 20000.00, 1, 18, 30, 1, 2), -- Environmental Laboratory & Consultancy Services (ELCS), Environmental Science
    ('Diploma in Cultural Material Analysis', 85, 91, 'A one-year diploma in Cultural Material Analysis.', '1 Year', 80000.00, 1, 18, 30, 1, 2), -- Laboratory for Cultural Material Analysis, Archaeology
    ('Certificate in Building Construction', 86, 2, 'A six-month certificate course in Building Construction.', '0.5 Years', 15000.00, 1, 18, 30, 1, 2), -- National Building Research Organization (NBRO), Engineering
    ('Diploma in Palmyrah Studies', 87, 28, 'A one-year diploma in Palmyrah Studies.', '1 Year', 60000.00, 1, 18, 25, 1, 2), -- Palmyrah Research Institute, Agriculture
    ('Certificate in Petroleum Refining', 88, 2, 'A six-month certificate course in Petroleum Refining.', '0.5 Years', 18000.00, 1, 18, 30, 1, 2), -- Ceylon Petroleum Storage Terminal Limited, Engineering
    ('Bachelor of Information Technology (Hons.)', 89, 4, 'A four-year undergraduate degree in Information Technology (Hons.)', '4 Years', 360000.00, 1, 18, 25, 1, 3), -- Sri Lanka Institute of Information Technology (SLIIT), Information Technology
    ('Diploma in Petroleum Engineering', 90, 2, 'A two-year diploma in Petroleum Engineering.', '2 Years', 150000.00, 1, 18, 25, 1, 2), -- Ceylon Petroleum Corporation, Engineering
    ('Diploma in Aquatic Resources Management', 91, 46, 'A one-year diploma in Aquatic Resources Management.', '1 Year', 75000.00, 1, 18, 25, 1, 2), -- National Aquatic Resources Research and Development Agency (NARA), Marine Biology
    ('Doctor of Medicine (MD)', 92, 1, 'A three-year postgraduate degree in Medicine.', '3 Years', 1000000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Medicine, Medicine
    ('Master of Science (Agriculture)', 93, 28, 'A two-year postgraduate degree in Agriculture.', '2 Years', 500000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Agriculture, Agriculture
    ('Doctor of Philosophy (PhD) in Pali and Buddhist Studies', 94, 23, 'A three-year doctoral degree in Pali and Buddhist Studies.', '3 Years', 800000.00, 1, 25, 40, 1, 5), -- Postgraduate Institute of Pali & Buddhist Studies, Education
    ('Master of Archaeology', 95, 91, 'A two-year postgraduate degree in Archaeology.', '2 Years', 600000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Archaeology, Archaeology
    ('Master of Business Administration (MBA)', 96, 6, 'A two-year postgraduate degree in Business Administration.', '2 Years', 750000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Management, Management
    ('Master of Science (Biochemistry)', 97, 49, 'A two-year postgraduate degree in Biochemistry.', '2 Years', 600000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Science, Biochemistry
    ('Master of Arts (English)', 98, 21, 'A two-year postgraduate degree in English.', '2 Years', 400000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of English, Languages
    ('Diploma in Human Resource Management', 99, 6, 'A one-year diploma in Human Resource Management.', '1 Year', 80000.00, 1, 18, 30, 1, 2), -- Institute of Human Resource Advancement, Management
    ('Diploma in Ayurveda Medicine', 100, 1, 'A two-year diploma in Ayurveda Medicine.', '2 Years', 120000.00, 1, 18, 25, 1, 2), -- Institute of Indigenous Medicine, Medicine
    ('Bachelor of Engineering (Mechanical)', 101, 2, 'A four-year undergraduate degree in Mechanical Engineering.', '4 Years', 410000.00, 1, 18, 25, 1, 3), -- General Sir John Kotelawala Defence University, Engineering
    ('Diploma in Business Management', 102, 6, 'A one-year diploma in Business Management.', '1 Year', 95000.00, 1, 18, 30, 1, 2), -- ICBT Campus, Management
    ('Diploma in Chemistry', 103, 66, 'A one-year diploma in Chemistry.', '1 Year', 65000.00, 1, 18, 25, 1, 2), -- Institute of Chemistry Ceylon, Chemistry
    ('Master of Business Administration (MBA)', 104, 6, 'A two-year postgraduate degree in Business Administration.', '2 Years', 700000.00, 1, 25, 40, 1, 4), -- National Institute of Business Management (Sri Lanka), Management
    ('Bachelor of Business Management (Hons.)', 105, 6, 'A three-year undergraduate degree in Business Management (Hons.)', '3 Years', 240000.00, 1, 18, 25, 1, 3), -- National School of Business Management, Management
    ('Bachelor of Science (Marine Biology)', 106, 46, 'A four-year undergraduate degree in Marine Biology.', '4 Years', 360000.00, 1, 18, 25, 1, 3), -- Ocean University of Sri Lanka, Marine Biology
    ('Diploma in Vocational Training', 107, 23, 'A one-year diploma in Vocational Training.', '1 Year', 50000.00, 1, 18, 25, 1, 2), -- University of Vocational Technology, Education
    ('Diploma in Thalassemia Care', 108, 24, 'A one-year diploma in Thalassemia Care.', '1 Year', 40000.00, 1, 18, 25, 1, 2), -- The Adolescent and Adult Thalassemia Care Unit, Nursing
    ('Certificate in Environmental Science', 109, 47, 'A six-month certificate course in Environmental Science.', '0.5 Years', 20000.00, 1, 18, 30, 1, 2), -- Environmental Laboratory & Consultancy Services (ELCS), Environmental Science
    ('Diploma in Cultural Material Analysis', 110, 91, 'A one-year diploma in Cultural Material Analysis.', '1 Year', 80000.00, 1, 18, 30, 1, 2), -- Laboratory for Cultural Material Analysis, Archaeology
    ('Certificate in Building Construction', 111, 2, 'A six-month certificate course in Building Construction.', '0.5 Years', 15000.00, 1, 18, 30, 1, 2), -- National Building Research Organization (NBRO), Engineering
    ('Diploma in Palmyrah Studies', 112, 28, 'A one-year diploma in Palmyrah Studies.', '1 Year', 60000.00, 1, 18, 25, 1, 2), -- Palmyrah Research Institute, Agriculture
    ('Certificate in Petroleum Refining', 113, 2, 'A six-month certificate course in Petroleum Refining.', '0.5 Years', 18000.00, 1, 18, 30, 1, 2), -- Ceylon Petroleum Storage Terminal Limited, Engineering
    ('Bachelor of Information Technology (Hons.)', 114, 4, 'A four-year undergraduate degree in Information Technology (Hons.)', '4 Years', 360000.00, 1, 18, 25, 1, 3), -- Sri Lanka Institute of Information Technology (SLIIT), Information Technology
    ('Diploma in Petroleum Engineering', 115, 2, 'A two-year diploma in Petroleum Engineering.', '2 Years', 150000.00, 1, 18, 25, 1, 2), -- Ceylon Petroleum Corporation, Engineering
    ('Diploma in Aquatic Resources Management', 116, 46, 'A one-year diploma in Aquatic Resources Management.', '1 Year', 75000.00, 1, 18, 25, 1, 2), -- National Aquatic Resources Research and Development Agency (NARA), Marine Biology
    ('Diploma in Aquatic Resources Management', 116, 46, 'A one-year diploma in Aquatic Resources Management.', '1 Year', 75000.00, 1, 18, 25, 1, 2), -- National Aquatic Resources Research and Development Agency (NARA), Marine Biology
    ('Doctor of Medicine (MD)', 117, 1, 'A three-year postgraduate degree in Medicine.', '3 Years', 1000000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Medicine, Medicine
    ('Master of Science (Agriculture)', 118, 28, 'A two-year postgraduate degree in Agriculture.', '2 Years', 500000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Agriculture, Agriculture
    ('Doctor of Philosophy (PhD) in Pali and Buddhist Studies', 119, 23, 'A three-year doctoral degree in Pali and Buddhist Studies.', '3 Years', 800000.00, 1, 25, 40, 1, 5), -- Postgraduate Institute of Pali & Buddhist Studies, Education
    ('Master of Archaeology', 120, 91, 'A two-year postgraduate degree in Archaeology.', '2 Years', 600000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Archaeology, Archaeology
    ('Master of Business Administration (MBA)', 121, 6, 'A two-year postgraduate degree in Business Administration.', '2 Years', 750000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Management, Management
    ('Master of Science (Biochemistry)', 122, 49, 'A two-year postgraduate degree in Biochemistry.', '2 Years', 600000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Science, Biochemistry
    ('Master of Arts (English)', 123, 21, 'A two-year postgraduate degree in English.', '2 Years', 400000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of English, Languages
    ('Diploma in Human Resource Management', 124, 6, 'A one-year diploma in Human Resource Management.', '1 Year', 80000.00, 1, 18, 30, 1, 2), -- Institute of Human Resource Advancement, Management
    ('Diploma in Ayurveda Medicine', 125, 1, 'A two-year diploma in Ayurveda Medicine.', '2 Years', 120000.00, 1, 18, 25, 1, 2), -- Institute of Indigenous Medicine, Medicine
    ('Bachelor of Engineering (Mechanical)', 126, 2, 'A four-year undergraduate degree in Mechanical Engineering.', '4 Years', 410000.00, 1, 18, 25, 1, 3), -- General Sir John Kotelawala Defence University, Engineering
    ('Diploma in Business Management', 127, 6, 'A one-year diploma in Business Management.', '1 Year', 95000.00, 1, 18, 30, 1, 2), -- ICBT Campus, Management
    ('Diploma in Chemistry', 128, 66, 'A one-year diploma in Chemistry.', '1 Year', 65000.00, 1, 18, 25, 1, 2), -- Institute of Chemistry Ceylon, Chemistry
    ('Master of Business Administration (MBA)', 129, 6, 'A two-year postgraduate degree in Business Administration.', '2 Years', 700000.00, 1, 25, 40, 1, 4), -- National Institute of Business Management (Sri Lanka), Management
    ('Bachelor of Business Management (Hons.)', 130, 6, 'A three-year undergraduate degree in Business Management (Hons.)', '3 Years', 240000.00, 1, 18, 25, 1, 3), -- National School of Business Management, Management
    ('Bachelor of Science (Marine Biology)', 131, 46, 'A four-year undergraduate degree in Marine Biology.', '4 Years', 360000.00, 1, 18, 25, 1, 3), -- Ocean University of Sri Lanka, Marine Biology
    ('Diploma in Vocational Training', 132, 23, 'A one-year diploma in Vocational Training.', '1 Year', 50000.00, 1, 18, 25, 1, 2), -- University of Vocational Technology, Education
    ('Diploma in Thalassemia Care', 133, 24, 'A one-year diploma in Thalassemia Care.', '1 Year', 40000.00, 1, 18, 25, 1, 2), -- The Adolescent and Adult Thalassemia Care Unit, Nursing
    ('Certificate in Environmental Science', 134, 47, 'A six-month certificate course in Environmental Science.', '0.5 Years', 20000.00, 1, 18, 30, 1, 2), -- Environmental Laboratory & Consultancy Services (ELCS), Environmental Science
    ('Diploma in Cultural Material Analysis', 135, 91, 'A one-year diploma in Cultural Material Analysis.', '1 Year', 80000.00, 1, 18, 30, 1, 2), -- Laboratory for Cultural Material Analysis, Archaeology
    ('Certificate in Building Construction', 136, 2, 'A six-month certificate course in Building Construction.', '0.5 Years', 15000.00, 1, 18, 30, 1, 2), -- National Building Research Organization (NBRO), Engineering
    ('Diploma in Palmyrah Studies', 137, 28, 'A one-year diploma in Palmyrah Studies.', '1 Year', 60000.00, 1, 18, 25, 1, 2), -- Palmyrah Research Institute, Agriculture
    ('Certificate in Petroleum Refining', 138, 2, 'A six-month certificate course in Petroleum Refining.', '0.5 Years', 18000.00, 1, 18, 30, 1, 2), -- Ceylon Petroleum Storage Terminal Limited, Engineering
    ('Bachelor of Information Technology (Hons.)', 139, 4, 'A four-year undergraduate degree in Information Technology (Hons.)', '4 Years', 360000.00, 1, 18, 25, 1, 3), -- Sri Lanka Institute of Information Technology (SLIIT), Information Technology
    ('Diploma in Petroleum Engineering', 140, 2, 'A two-year diploma in Petroleum Engineering.', '2 Years', 150000.00, 1, 18, 25, 1, 2), -- Ceylon Petroleum Corporation, Engineering
    ('Diploma in Aquatic Resources Management', 141, 46, 'A one-year diploma in Aquatic Resources Management.', '1 Year', 75000.00, 1, 18, 25, 1, 2), -- National Aquatic Resources Research and Development Agency (NARA), Marine Biology
    ('Doctor of Medicine (MD)', 142, 1, 'A three-year postgraduate degree in Medicine.', '3 Years', 1000000.00, 1, 25, 40, 1, 4), -- Postgraduate Institute of Medicine, Medicine
    ('Master of Science (Agriculture)', 143, 28, 'A two-year postgraduate degree in Agriculture.', '2 Years', 500000.00, 1, 25, 40, 1, 4); -- Postgraduate Institute of Agriculture, Agriculture

-- Courses_Skill Table

-- Example 1: MBBS - University of Colombo
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (1, 71), -- Medicine: Biology
    (1, 67), -- Medicine: Chemistry
    (1, 65), -- Medicine: Physics
    (1, 15), -- Medicine: Communication
    (1, 16), -- Medicine: Teamwork
    (1, 17), -- Medicine: Problem-Solving
    (1, 18), -- Medicine: Critical Thinking
    (1, 19), -- Medicine: Creativity
    (1, 20); -- Medicine: Leadership

-- Example 2: Civil Engineering - University of Peradeniya
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (2, 54), -- Engineering: Civil Engineering
    (2, 53), -- Engineering: Chemical Engineering
    (2, 55), -- Engineering: Electrical Engineering
    (2, 56), -- Engineering: Mechanical Engineering
    (2, 65), -- Engineering: Physics
    (2, 67), -- Engineering: Chemistry
    (2, 71), -- Engineering: Biology
    (2, 64), -- Engineering: Mathematics
    (2, 17), -- Engineering: Problem-Solving
    (2, 18), -- Engineering: Critical Thinking
    (2, 19); -- Engineering: Creativity

-- Example 3: Computer Science - University of Sri Jayewardenepura
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (3, 58), -- Computer Science: Data Science
    (3, 59), -- Computer Science: Artificial Intelligence
    (3, 60), -- Computer Science: Cybersecurity
    (3, 57), -- Computer Science: Software Engineering
    (3, 39), -- Computer Science: Programming
    (3, 40), -- Computer Science: Software Development
    (3, 41), -- Computer Science: Data Analysis
    (3, 42), -- Computer Science: Machine Learning
    (3, 43), -- Computer Science: Cloud Computing
    (3, 44), -- Computer Science: Networking
    (3, 45), -- Computer Science: Database Administration
    (3, 46), -- Computer Science: Web Development
    (3, 47), -- Computer Science: Mobile App Development
    (3, 48), -- Computer Science: UI/UX Design
    (3, 17), -- Computer Science: Problem-Solving
    (3, 18); -- Computer Science: Critical Thinking

-- Example 4: Information Technology - University of Kelaniya
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (4, 58), -- Information Technology: Data Science
    (4, 59), -- Information Technology: Artificial Intelligence
    (4, 60), -- Information Technology: Cybersecurity
    (4, 57), -- Information Technology: Software Engineering
    (4, 39), -- Information Technology: Programming
    (4, 40), -- Information Technology: Software Development
    (4, 41), -- Information Technology: Data Analysis
    (4, 42), -- Information Technology: Machine Learning
    (4, 43), -- Information Technology: Cloud Computing
    (4, 44), -- Information Technology: Networking
    (4, 45), -- Information Technology: Database Administration
    (4, 46), -- Information Technology: Web Development
    (4, 47), -- Information Technology: Mobile App Development
    (4, 48), -- Information Technology: UI/UX Design
    (4, 17), -- Information Technology: Problem-Solving
    (4, 18); -- Information Technology: Critical Thinking

-- Example 5: Business Administration - University of Moratuwa
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (5, 6), -- Business Administration: Management
    (5, 7), -- Business Administration: Marketing
    (5, 8), -- Business Administration: Finance
    (5, 9), -- Business Administration: Accounting
    (5, 15), -- Business Administration: Communication
    (5, 16), -- Business Administration: Teamwork
    (5, 17), -- Business Administration: Problem-Solving
    (5, 18), -- Business Administration: Critical Thinking
    (5, 20), -- Business Administration: Leadership
    (5, 21), -- Business Administration: Community Service
    (5, 22), -- Business Administration: Negotiation
    (5, 23); -- Business Administration: Customer Service

-- Example 6: MBA - University of Jaffna
INSERT  OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (6, 6), -- MBA: Management
    (6, 7), -- MBA: Marketing
    (6, 8), -- MBA: Finance
    (6, 9), -- MBA: Accounting
    (6, 15), -- MBA: Communication
    (6, 16), -- MBA: Teamwork
    (6, 17), -- MBA: Problem-Solving
    (6, 18), -- MBA: Critical Thinking
    (6, 20), -- MBA: Leadership
    (6, 21), -- MBA: Community Service
    (6, 22), -- MBA: Negotiation
    (6, 23), -- MBA: Customer Service
    (6, 86), -- MBA: International Relations
    (6, 87), -- MBA: Development Studies
    (6, 88), -- MBA: Public Administration
    (6, 90), -- MBA: Criminology
    (6, 92), -- MBA: Linguistics
    (6, 93), -- MBA: Communication Studies
    (6, 94), -- MBA: Media Studies
    (6, 102); -- MBA: Urban Planning

-- Example 7: Bachelor of Arts (English) - University of Ruhuna
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (7, 21), -- Arts (English): Languages
    (7, 12), -- Arts (English): Humanities
    (7, 15), -- Arts (English): Communication
    (7, 18), -- Arts (English): Critical Thinking
    (7, 19), -- Arts (English): Creativity
    (7, 23), -- Arts (English): Education
    (7, 52), -- Arts (English): Blogging
    (7, 53), -- Arts (English): Vlogging
    (7, 54), -- Arts (English): Journaling
    (7, 55), -- Arts (English): Podcasting
    (7, 92), -- Arts (English): Linguistics
    (7, 93); -- Arts (English): Communication Studies

-- Example 8: Bachelor of Education (Primary) - The Open University of Sri Lanka
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (8, 23), -- Education: Education
    (8, 15), -- Education: Communication
    (8, 16), -- Education: Teamwork
    (8, 17), -- Education: Problem-Solving
    (8, 18), -- Education: Critical Thinking
    (8, 19), -- Education: Creativity
    (8, 20), -- Education: Leadership
    (8, 67), -- Education: Chemistry
    (8, 66), -- Education: Physics
    (8, 71); -- Education: Biology

-- Example 9: Bachelor of Engineering (Electrical) - Eastern University, Sri Lanka
    INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (9, 54), -- Engineering: Civil Engineering
    (9, 53), -- Engineering: Chemical Engineering
    (9, 55), -- Engineering: Electrical Engineering
    (9, 56), -- Engineering: Mechanical Engineering
    (9, 65), -- Engineering: Physics
    (9, 67), -- Engineering: Chemistry
    (9, 71), -- Engineering: Biology
    (9, 64), -- Engineering: Mathematics
    (9, 17), -- Engineering: Problem-Solving
    (9, 18), -- Engineering: Critical Thinking
    (9, 19); -- Engineering: Creativity

-- Example 10: Bachelor of Science (Marine Biology) - South Eastern University of Sri Lanka
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (10, 46), -- Marine Biology: Marine Biology
    (10, 71), -- Marine Biology: Biology
    (10, 67), -- Marine Biology: Chemistry
    (10, 65), -- Marine Biology: Physics
    (10, 17), -- Marine Biology: Problem-Solving
    (10, 18), -- Marine Biology: Critical Thinking
    (10, 19), -- Marine Biology: Creativity
    (10, 20); -- Marine Biology: Leadership

-- Example 11: Bachelor of Law (LL.B.) - Rajarata University of Sri Lanka
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (11, 10), -- Law: Law
    (11, 15), -- Law: Communication
    (11, 16), -- Law: Teamwork
    (11, 17), -- Law: Problem-Solving
    (11, 18), -- Law: Critical Thinking
    (11, 20), -- Law: Leadership
    (11, 22), -- Law: Negotiation
    (11, 86), -- Law: International Relations
    (11, 88); -- Law: Public Administration

-- Example 12: Bachelor of Science (Psychology) - Sabaragamuwa University of Sri Lanka
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (12, 14), -- Psychology: Psychology
    (12, 15), -- Psychology: Communication
    (12, 16), -- Psychology: Teamwork
    (12, 17), -- Psychology: Problem-Solving
    (12, 18), -- Psychology: Critical Thinking
    (12, 19), -- Psychology: Creativity
    (12, 90), -- Psychology: Psychology
    (12, 91), -- Psychology: Sociology
    (12, 92); -- Psychology: Linguistics

-- Example 13: Bachelor of Science (Agriculture) - Uva Wellassa University
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (13, 28), -- Agriculture: Agriculture
    (13, 71), -- Agriculture: Biology
    (13, 67), -- Agriculture: Chemistry
    (13, 65), -- Agriculture: Physics
    (13, 17), -- Agriculture: Problem-Solving
    (13, 18), -- Agriculture: Critical Thinking
    (13, 19), -- Agriculture: Creativity
    (13, 95), -- Agriculture: Collecting
    (13, 37); -- Agriculture: Gardening

-- Example 14: Bachelor of Fine Arts (Painting) - University of the Visual and Performing Arts
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (14, 31), -- Fine Arts: Fine Arts
    (14, 42), -- Fine Arts: Painting
    (14, 43), -- Fine Arts: Drawing
    (14, 44), -- Fine Arts: Sculpting
    (14, 19), -- Fine Arts: Creativity
    (15, 58), -- Information Systems: Data Science
    (15, 57), -- Information Systems: Software Engineering
    (15, 39), -- Information Systems: Programming
    (15, 40), -- Information Systems: Software Development
    (15, 41), -- Information Systems: Data Analysis
    (15, 43), -- Information Systems: Cloud Computing
    (15, 44), -- Information Systems: Networking
    (15, 45), -- Information Systems: Database Administration
    (15, 46), -- Information Systems: Web Development
    (15, 47), -- Information Systems: Mobile App Development
    (15, 17), -- Information Systems: Problem-Solving
    (15, 18); -- Information Systems: Critical Thinking

-- Example 16: Bachelor of Ayurveda Medicine - Gampaha Wickramarachchi University of Indigenous Medicine
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (16, 1), -- Ayurveda Medicine: Medicine
    (16, 71), -- Ayurveda Medicine: Biology
    (16, 67), -- Ayurveda Medicine: Chemistry
    (16, 15), -- Ayurveda Medicine: Communication
    (16, 16), -- Ayurveda Medicine: Teamwork
    (16, 17), -- Ayurveda Medicine: Problem-Solving
    (16, 18); -- Ayurveda Medicine: Critical Thinking

-- Example 17: Bachelor of Science (Mathematics) - University of Vavuniya
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (17, 64), -- Mathematics: Mathematics
    (17, 65), -- Mathematics: Physics
    (17, 67), -- Mathematics: Chemistry
    (17, 17), -- Mathematics: Problem-Solving
    (17, 18), -- Mathematics: Critical Thinking
    (17, 19); -- Mathematics: Creativity

-- Example 18: Diploma in Business Management - Aquinas College of Higher Studies
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (18, 6), -- Business Management: Management
    (18, 7), -- Business Management: Marketing
    (18, 8), -- Business Management: Finance
    (18, 9), -- Business Management: Accounting
    (18, 15), -- Business Management: Communication
    (18, 16), -- Business Management: Teamwork
    (18, 17), -- Business Management: Problem-Solving
    (18, 18), -- Business Management: Critical Thinking
    (18, 20); -- Business Management: Leadership

-- Example 19: Diploma in Nautical Science - Colombo International Nautical and Engineering College
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (19, 44), -- Nautical Science: Aviation
    (19, 17), -- Nautical Science: Problem-Solving
    (19, 18); -- Nautical Science: Critical Thinking

-- Example 20: Bachelor of Business Administration (Hons.) - Horizon Campus
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (20, 5), -- Business Administration: Business Administration
    (20, 6), -- Business Administration: Management
    (20, 7), -- Business Administration: Marketing
    (20, 8), -- Business Administration: Finance
    (20, 9), -- Business Administration: Accounting
    (20, 15), -- Business Administration: Communication
    (20, 16), -- Business Administration: Teamwork
    (20, 17), -- Business Administration: Problem-Solving
    (20, 18), -- Business Administration: Critical Thinking
    (20, 20), -- Business Administration: Leadership
    (20, 21), -- Business Administration: Community Service
    (20, 22), -- Business Administration: Negotiation
    (20, 23); -- Business Administration: Customer Service

-- Example 21: Bachelor of Science (Software Engineering) - Saegis Campus
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (21, 58), -- Software Engineering: Data Science
    (21, 59), -- Software Engineering: Artificial Intelligence
    (21, 60), -- Software Engineering: Cybersecurity
    (21, 57), -- Software Engineering: Software Engineering
    (21, 39), -- Software Engineering: Programming
    (21, 40), -- Software Engineering: Software Development
    (21, 41), -- Software Engineering: Data Analysis
    (21, 42), -- Software Engineering: Machine Learning
    (21, 43), -- Software Engineering: Cloud Computing
    (21, 44), -- Software Engineering: Networking
    (21, 45), -- Software Engineering: Database Administration
    (21, 46), -- Software Engineering: Web Development
    (21, 47), -- Software Engineering: Mobile App Development
    (21, 48), -- Software Engineering: UI/UX Design
    (21, 17), -- Software Engineering: Problem-Solving
    (21, 18); -- Software Engineering: Critical Thinking

-- Example 22: Chartered Accountancy Program - Institute of Chartered Accountants of Sri Lanka
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (22, 9), -- Chartered Accountancy: Accounting
    (22, 8), -- Chartered Accountancy: Finance
    (22, 17), -- Chartered Accountancy: Problem-Solving
    (22, 18), -- Chartered Accountancy: Critical Thinking
    (22, 20); -- Chartered Accountancy: Leadership

-- Example 23: Diploma in Surveying - Institute of Surveying and Mapping
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (23, 2), -- Surveying: Engineering
    (23, 64), -- Surveying: Mathematics
    (23, 65), -- Surveying: Physics
    (23, 71), -- Surveying: Biology
    (23, 17), -- Surveying: Problem-Solving
    (23, 18); -- Surveying: Critical Thinking

-- Example 24: Diploma in Information Technology - Institute of Technological Studies
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (24, 58), -- Information Technology: Data Science
    (24, 59), -- Information Technology: Artificial Intelligence
    (24, 60), -- Information Technology: Cybersecurity
    (24, 57), -- Information Technology: Software Engineering
    (24, 39), -- Information Technology: Programming
    (24, 40), -- Information Technology: Software Development
    (24, 41), -- Information Technology: Data Analysis
    (24, 43), -- Information Technology: Cloud Computing
    (24, 44), -- Information Technology: Networking
    (24, 45), -- Information Technology: Database Administration
    (24, 46), -- Information Technology: Web Development
    (24, 47), -- Information Technology: Mobile App Development
    (24, 17), -- Information Technology: Problem-Solving
    (24, 18); -- Information Technology: Critical Thinking

-- Example 25: Diploma in Marketing Management - KAATSU
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (25, 7), -- Marketing Management: Marketing
    (25, 15), -- Marketing Management: Communication
    (25, 17), -- Marketing Management: Problem-Solving
    (25, 18), -- Marketing Management: Critical Thinking
    (25, 19), -- Marketing Management: Creativity
    (25, 20), -- Marketing Management: Leadership
    (25, 22), -- Marketing Management: Negotiation
    (25, 23); -- Marketing Management: Customer Service

-- Example 26: Postgraduate Diploma in Business Administration - National Institute of Business Management
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (26, 6), -- Postgraduate Diploma in Business Administration: Management
    (26, 7), -- Postgraduate Diploma in Business Administration: Marketing
    (26, 8), -- Postgraduate Diploma in Business Administration: Finance
    (26, 9), -- Postgraduate Diploma in Business Administration: Accounting
    (26, 15), -- Postgraduate Diploma in Business Administration: Communication
    (26, 16), -- Postgraduate Diploma in Business Administration: Teamwork
    (26, 17), -- Postgraduate Diploma in Business Administration: Problem-Solving
    (26, 18), -- Postgraduate Diploma in Business Administration: Critical Thinking
    (26, 20); -- Postgraduate Diploma in Business Administration: Leadership

-- Example 27: Diploma in Social Development - National Institute of Social Development
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (27, 4), -- Social Development: Helping Others
    (27, 13), -- Social Development: Social Sciences
    (27, 15), -- Social Development: Communication
    (27, 17), -- Social Development: Problem-Solving
    (27, 18), -- Social Development: Critical Thinking
    (27, 20), -- Social Development: Leadership
    (27, 21), -- Social Development: Community Service
    (27, 66); -- Social Development: Social Work

-- Example 28: Bachelor of Business Management (Hons.) - National School of Business Management
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (28, 6), -- Business Management: Management
    (28, 7), -- Business Management: Marketing
    (28, 8), -- Business Management: Finance
    (28, 9), -- Business Management: Accounting
    (28, 15), -- Business Management: Communication
    (28, 16), -- Business Management: Teamwork
    (28, 17), -- Business Management: Problem-Solving
    (28, 18), -- Business Management: Critical Thinking
    (28, 20); -- Business Management: Leadership

-- Example 29: Diploma in Hospitality Management - SANASA Campus
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (29, 42), -- Hospitality Management: Hospitality
    (29, 15), -- Hospitality Management: Communication
    (29, 17), -- Hospitality Management: Problem-Solving
    (29, 18), -- Hospitality Management: Critical Thinking
    (29, 20), -- Hospitality Management: Leadership
    (29, 23); -- Hospitality Management: Customer Service

-- Example 30: Bachelor of Medicine (MBBS) - South Asian Institute of Technology and Medicine
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (30, 1), -- Medicine: Medicine
    (30, 71), -- Medicine: Biology
    (30, 67), -- Medicine: Chemistry
    (30, 65), -- Medicine: Physics
    (30, 15), -- Medicine: Communication
    (30, 16), -- Medicine: Teamwork
    (30, 17), -- Medicine: Problem-Solving
    (30, 18), -- Medicine: Critical Thinking
    (30, 19), -- Medicine: Creativity
    (30, 20); -- Medicine: Leadership

-- Example 31: Diploma in Development Administration - Sri Lanka Institute of Development Administration
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (31, 88), -- Development Administration: Public Administration
    (31, 15), -- Development Administration: Communication
    (31, 17), -- Development Administration: Problem-Solving
    (31, 18), -- Development Administration: Critical Thinking
    (31, 20); -- Development Administration: Leadership

-- Example 32: Bachelor of Information Technology (Hons.) - Sri Lanka Institute of Information Technology
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (32, 58), -- Information Technology: Data Science
    (32, 59), -- Information Technology: Artificial Intelligence
    (32, 60), -- Information Technology: Cybersecurity
    (32, 57), -- Information Technology: Software Engineering
    (32, 39), -- Information Technology: Programming
    (32, 40), -- Information Technology: Software Development
    (32, 41), -- Information Technology: Data Analysis
    (32, 42), -- Information Technology: Machine Learning
    (32, 43), -- Information Technology: Cloud Computing
    (32, 44), -- Information Technology: Networking
    (32, 45), -- Information Technology: Database Administration
    (32, 46), -- Information Technology: Web Development
    (32, 47), -- Information Technology: Mobile App Development
    (32, 48), -- Information Technology: UI/UX Design
    (32, 17), -- Information Technology: Problem-Solving
    (32, 18); -- Information Technology: Critical Thinking

-- Example 33: Master of Science (Nanotechnology) - Sri Lanka Institute of Nanotechnology
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (33, 70), -- Nanotechnology: Nanotechnology
    (33, 16), -- Nanotechnology: Science
    (33, 67), -- Nanotechnology: Chemistry
    (33, 65), -- Nanotechnology: Physics
    (33, 17), -- Nanotechnology: Problem-Solving
    (33, 18), -- Nanotechnology: Critical Thinking
    (33, 72); -- Nanotechnology: Research

-- Example 34: Bachelor of Buddhist Studies - Sri Lanka International Buddhist Academy
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (34, 23), -- Buddhist Studies: Education
    (34, 12), -- Buddhist Studies: Humanities
    (34, 25), -- Buddhist Studies: Philosophy
    (34, 26), -- Buddhist Studies: Spirituality
    (34, 15), -- Buddhist Studies: Communication
    (34, 18); -- Buddhist Studies: Critical Thinking

-- Example 35: Diploma in Business Management - Esoft Metro Campus
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (35, 6), -- Business Management: Management
    (35, 7), -- Business Management: Marketing
    (35, 8), -- Business Management: Finance
    (35, 9), -- Business Management: Accounting
    (35, 15), -- Business Management: Communication
    (35, 16), -- Business Management: Teamwork
    (35, 17), -- Business Management: Problem-Solving
    (35, 18), -- Business Management: Critical Thinking
    (35, 20); -- Business Management: Leadership

-- Example 36: Bachelor of Business Administration (Hons.) - International College of Business and Technology
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (36, 5), -- Business Administration: Business Administration
    (36, 6), -- Business Administration: Management
    (36, 7), -- Business Administration: Marketing
    (36, 8), -- Business Administration: Finance
    (36, 9), -- Business Administration: Accounting
    (36, 15), -- Business Administration: Communication
    (36, 16), -- Business Administration: Teamwork
    (36, 17), -- Business Administration: Problem-Solving
    (36, 18), -- Business Administration: Critical Thinking
    (36, 20), -- Business Administration: Leadership
    (36, 21), -- Business Administration: Community Service
    (36, 22), -- Business Administration: Negotiation
    (36, 23); -- Business Administration: Customer Service

-- Example 37: Doctor of Philosophy (PhD) in Engineering - SLTC Research University
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (37, 54), -- Engineering: Civil Engineering
    (37, 53), -- Engineering: Chemical Engineering
    (37, 55), -- Engineering: Electrical Engineering
    (37, 56), -- Engineering: Mechanical Engineering
    (37, 65), -- Engineering: Physics
    (37, 67), -- Engineering: Chemistry
    (37, 71), -- Engineering: Biology
    (37, 64), -- Engineering: Mathematics
    (37, 17), -- Engineering: Problem-Solving
    (37, 18), -- Engineering: Critical Thinking
    (37, 19), -- Engineering: Creativity
    (37, 72); -- Engineering: Research

-- Example 38: Master of Business Administration (MBA) - Business Management School
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (38, 6), -- MBA: Management
    (38, 7), -- MBA: Marketing
    (38, 8), -- MBA: Finance
    (38, 9), -- MBA: Accounting
    (38, 15), -- MBA: Communication
    (38, 16), -- MBA: Teamwork
    (38, 17), -- MBA: Problem-Solving
    (38, 18), -- MBA: Critical Thinking
    (38, 20), -- MBA: Leadership
    (38, 21), -- MBA: Community Service
    (38, 22), -- MBA: Negotiation
    (38, 23); -- MBA: Customer Service

-- Example 39: Diploma in Professional Studies - Royal Institute Colombo
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (39, 13), -- Professional Studies: Social Sciences
    (39, 15), -- Professional Studies: Communication
    (39, 17), -- Professional Studies: Problem-Solving
    (39, 18), -- Professional Studies: Critical Thinking
    (39, 20); -- Professional Studies: Leadership

-- Example 40: Bachelor of Science (Nursing) - International Institute of Health Science
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (40, 24), -- Nursing: Nursing
    (40, 1), -- Nursing: Medicine
    (40, 71), -- Nursing: Biology
    (40, 67), -- Nursing: Chemistry
    (40, 15), -- Nursing: Communication
    (40, 16), -- Nursing: Teamwork
    (40, 17), -- Nursing: Problem-Solving
    (40, 18), -- Nursing: Critical Thinking
    (40, 4); -- Nursing: Helping Others

-- Example 41: Master of Science (Computer Science) - University of Colombo School of Computing
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (41, 58), -- Computer Science: Data Science
    (41, 59), -- Computer Science: Artificial Intelligence
    (41, 60), -- Computer Science: Cybersecurity
    (41, 57), -- Computer Science: Software Engineering
    (41, 39), -- Computer Science: Programming
    (41, 40), -- Computer Science: Software Development
    (41, 41), -- Computer Science: Data Analysis
    (41, 42), -- Computer Science: Machine Learning
    (41, 43), -- Computer Science: Cloud Computing
    (41, 44), -- Computer Science: Networking
    (41, 45), -- Computer Science: Database Administration
    (41, 46), -- Computer Science: Web Development
    (41, 47), -- Computer Science: Mobile App Development
    (41, 48), -- Computer Science: UI/UX Design
    (41, 17), -- Computer Science: Problem-Solving
    (41, 18), -- Computer Science: Critical Thinking
    (41, 72); -- Computer Science: Research

-- Example 42: Doctor of Medicine (MD) - Postgraduate Institute of Medicine
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (42, 1), -- Medicine: Medicine
    (42, 71), -- Medicine: Biology
    (42, 67), -- Medicine: Chemistry
    (42, 65), -- Medicine: Physics
    (42, 15), -- Medicine: Communication
    (42, 16), -- Medicine: Teamwork
    (42, 17), -- Medicine: Problem-Solving
    (42, 18), -- Medicine: Critical Thinking
    (42, 19), -- Medicine: Creativity
    (42, 20), -- Medicine: Leadership
    (42, 72); -- Medicine: Research

-- Example 43: Master of Science (Agriculture) - Postgraduate Institute of Agriculture
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (43, 28), -- Agriculture: Agriculture
    (43, 71), -- Agriculture: Biology
    (43, 67), -- Agriculture: Chemistry
    (43, 65), -- Agriculture: Physics
    (43, 17), -- Agriculture: Problem-Solving
    (43, 18), -- Agriculture: Critical Thinking
    (43, 19), -- Agriculture: Creativity
    (43, 72); -- Agriculture: Research

-- Example 44: Doctor of Philosophy (PhD) in Pali and Buddhist Studies - Postgraduate Institute of Pali & Buddhist Studies
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (44, 23), -- Pali and Buddhist Studies: Education
    (44, 12), -- Pali and Buddhist Studies: Humanities
    (44, 25), -- Pali and Buddhist Studies: Philosophy
    (44, 26), -- Pali and Buddhist Studies: Spirituality
    (44, 15), -- Pali and Buddhist Studies: Communication
    (44, 18), -- Pali and Buddhist Studies: Critical Thinking
    (44, 72); -- Pali and Buddhist Studies: Research

-- Example 45: Master of Archaeology - Postgraduate Institute of Archaeology
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (45, 85), -- Archaeology: Archaeology
    (45, 23), -- Archaeology: History
    (45, 17), -- Archaeology: Problem-Solving
    (45, 18), -- Archaeology: Critical Thinking
    (45, 19), -- Archaeology: Creativity
    (45, 72); -- Archaeology: Research

-- Example 46: Master of Business Administration (MBA) - Postgraduate Institute of Management
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (46, 6), -- MBA: Management
    (46, 7), -- MBA: Marketing
    (46, 8), -- MBA: Finance
    (46, 9), -- MBA: Accounting
    (46, 15), -- MBA: Communication
    (46, 16), -- MBA: Teamwork
    (46, 17), -- MBA: Problem-Solving
    (46, 18), -- MBA: Critical Thinking
    (46, 20), -- MBA: Leadership
    (46, 21), -- MBA: Community Service
    (46, 22), -- MBA: Negotiation
    (46, 23); -- MBA: Customer Service

-- Example 47: Master of Science (Biochemistry) - Postgraduate Institute of Science
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (47, 49), -- Biochemistry: Biochemistry
    (47, 71), -- Biochemistry: Biology
    (47, 67), -- Biochemistry: Chemistry
    (47, 17), -- Biochemistry: Problem-Solving
    (47, 18), -- Biochemistry: Critical Thinking
    (47, 19), -- Biochemistry: Creativity
    (47, 72); -- Biochemistry: Research

-- Example 48: Master of Arts (English) - Postgraduate Institute of English
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (48, 21), -- English: Languages
    (48, 12), -- English: Humanities
    (48, 15), -- English: Communication
    (48, 18), -- English: Critical Thinking
    (48, 19), -- English: Creativity
    (48, 72); -- English: Research

-- Example 49: Diploma in Human Resource Management - Institute of Human Resource Advancement
INSERT OR IGNORE INTO Course_Skills (CourseID, SkillID) VALUES
    (49, 6), -- Human Resource Management: Management
    (49, 15), -- Human Resource Management: Communication
    (49, 17), -- Human Resource Management: Problem-Solving
    (49, 18), -- Human Resource Management: Critical Thinking
    (49, 20); -- Human Resource Management: Leadership



-- ==================================================================================================



-- Example 1: MBBS - University of Colombo
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (1, 4), -- MBBS: Helping Others
    (1, 16); -- MBBS: Science

-- Example 2: Civil Engineering - University of Peradeniya
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (2, 1), -- Civil Engineering: Technology
    (2, 16), -- Civil Engineering: Science
    (2, 22); -- Civil Engineering: Nature

-- Example 3: Computer Science - University of Sri Jayewardenepura
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (3, 1), -- Computer Science: Technology
    (3, 18), -- Computer Science: Innovation
    (3, 5); -- Computer Science: Learning

-- Example 4: Information Technology - University of Kelaniya
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (4, 1), -- Information Technology: Technology
    (4, 18), -- Information Technology: Innovation
    (4, 5); -- Information Technology: Learning

-- Example 5: Business Administration - University of Moratuwa
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (5, 2), -- Business Administration: Business
    (5, 19), -- Business Administration: Leadership
    (5, 20); -- Business Administration: Personal Growth

-- Example 6: MBA - University of Jaffna
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (6, 2), -- MBA: Business
    (6, 19), -- MBA: Leadership
    (6, 20); -- MBA: Personal Growth

-- Example 7: Bachelor of Arts (English) - University of Ruhuna
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (7, 3), -- Arts (English): Creativity
    (7, 12), -- Arts (English): Writing
    (7, 25); -- Arts (English): Philosophy

-- Example 8: Bachelor of Education (Primary) - The Open University of Sri Lanka
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (8, 4), -- Education: Helping Others
    (8, 5); -- Education: Learning

-- Example 9: Bachelor of Engineering (Electrical) - Eastern University, Sri Lanka
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (9, 1), -- Engineering: Technology
    (9, 16), -- Engineering: Science
    (9, 18); -- Engineering: Innovation

-- Example 10: Bachelor of Science (Marine Biology) - South Eastern University of Sri Lanka
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (10, 9), -- Marine Biology: Animals
    (10, 8), -- Marine Biology: Environment
    (10, 16); -- Marine Biology: Science

-- Example 11: Bachelor of Law (LL.B.) - Rajarata University of Sri Lanka
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (11, 17), -- Law: Social Justice
    (11, 19); -- Law: Leadership

-- Example 12: Bachelor of Science (Psychology) - Sabaragamuwa University of Sri Lanka
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (12, 20), -- Psychology: Personal Growth
    (12, 4); -- Psychology: Helping Others

-- Example 13: Bachelor of Science (Agriculture) - Uva Wellassa University
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (13, 8), -- Agriculture: Environment
    (13, 22); -- Agriculture: Nature

-- Example 14: Bachelor of Fine Arts (Painting) - University of the Visual and Performing Arts
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (14, 3), -- Fine Arts: Creativity
    (14, 11); -- Fine Arts: Art

-- Example 15: Bachelor of Science (Information Systems) - Wayamba University of Sri Lanka
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (15, 1), -- Information Systems: Technology
    (15, 5), -- Information Systems: Learning
    (15, 18); -- Information Systems: Innovation

-- Example 16: Bachelor of Ayurveda Medicine - Gampaha Wickramarachchi University of Indigenous Medicine
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (16, 4), -- Ayurveda Medicine: Helping Others
    (16, 7); -- Ayurveda Medicine: Health & Wellness

-- Example 17: Bachelor of Science (Mathematics) - University of Vavuniya
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
(17, 16), -- Mathematics: Science
(17, 5); -- Mathematics: Learning

-- Example 18: Diploma in Business Management - Aquinas College of Higher Studies
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (18, 2), -- Business Management: Business
    (18, 20); -- Business Management: Personal Growth

-- Example 19: Diploma in Nautical Science - Colombo International Nautical and Engineering College
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (19, 6); -- Nautical Science: Adventure

-- Example 20: Bachelor of Business Administration (Hons.) - Horizon Campus
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (20, 2), -- Business Administration: Business
    (20, 19), -- Business Administration: Leadership
    (20, 20); -- Business Administration: Personal Growth

-- Example 21: Bachelor of Science (Software Engineering) - Saegis Campus
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (21, 1), -- Software Engineering: Technology
    (21, 18), -- Software Engineering: Innovation
    (21, 5); -- Software Engineering: Learning

-- Example 22: Chartered Accountancy Program - Institute of Chartered Accountants of Sri Lanka
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (22, 2); -- Chartered Accountancy: Business

-- Example 23: Diploma in Surveying - Institute of Surveying and Mapping
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (23, 1), -- Surveying: Technology
    (23, 16); -- Surveying: Science

-- Example 24: Diploma in Information Technology - Institute of Technological Studies
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (24, 1), -- Information Technology: Technology
    (24, 5), -- Information Technology: Learning
    (24, 18); -- Information Technology: Innovation

-- Example 25: Diploma in Marketing Management - KAATSU
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (25, 2); -- Marketing Management: Business

-- Example 26: Postgraduate Diploma in Business Administration - National Institute of Business Management
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (26, 2), -- Postgraduate Diploma in Business Administration: Business
    (26, 19), -- Postgraduate Diploma in Business Administration: Leadership
    (26, 20); -- Postgraduate Diploma in Business Administration: Personal Growth

-- Example 27: Diploma in Social Development - National Institute of Social Development
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (27, 4); -- Social Development: Helping Others

-- Example 28: Bachelor of Business Management (Hons.) - National School of Business Management
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (28, 2), -- Business Management: Business
    (28, 19), -- Business Management: Leadership
    (28, 20); -- Business Management: Personal Growth

-- Example 29: Diploma in Hospitality Management - SANASA Campus
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (29, 14), -- Hospitality Management: Food
    (29, 20); -- Hospitality Management: Personal Growth

-- Example 30: Bachelor of Medicine (MBBS) - South Asian Institute of Technology and Medicine
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (30, 4), -- MBBS: Helping Others
    (30, 16); -- MBBS: Science

-- Example 31: Diploma in Development Administration - Sri Lanka Institute of Development Administration
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (31, 17), -- Development Administration: Social Justice
    (31, 21); -- Development Administration: Community Service

-- Example 32: Bachelor of Information Technology (Hons.) - Sri Lanka Institute of Information Technology
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (32, 1), -- Information Technology: Technology
    (32, 18), -- Information Technology: Innovation
    (32, 5); -- Information Technology: Learning

-- Example 33: Master of Science (Nanotechnology) - Sri Lanka Institute of Nanotechnology
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (33, 1), -- Nanotechnology: Technology
    (33, 16), -- Nanotechnology: Science
    (33, 18); -- Nanotechnology: Innovation

-- Example 34: Bachelor of Buddhist Studies - Sri Lanka International Buddhist Academy
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (34, 26), -- Buddhist Studies: Spirituality
    (34, 23), -- Buddhist Studies: History
    (34, 5); -- Buddhist Studies: Learning

-- Example 35: Diploma in Business Management - Esoft Metro Campus
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (35, 2), -- Business Management: Business
    (35, 20); -- Business Management: Personal Growth

-- Example 36: Bachelor of Business Administration (Hons.) - International College of Business and Technology
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (36, 2), -- Business Administration: Business
    (36, 19), -- Business Administration: Leadership
    (36, 20); -- Business Administration: Personal Growth

-- Example 37: Doctor of Philosophy (PhD) in Engineering - SLTC Research University
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (37, 1), -- Engineering: Technology
    (37, 16), -- Engineering: Science
    (37, 18); -- Engineering: Innovation

-- Example 38: Master of Business Administration (MBA) - Business Management School
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (38, 2), -- MBA: Business
    (38, 19), -- MBA: Leadership
    (38, 20); -- MBA: Personal Growth

-- Example 39: Diploma in Professional Studies - Royal Institute Colombo
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (39, 4), -- Professional Studies: Helping Others
    (39, 20); -- Professional Studies: Personal Growth

-- Example 40: Bachelor of Science (Nursing) - International Institute of Health Science
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (40, 4), -- Nursing: Helping Others
    (40, 7); -- Nursing: Health & Wellness

-- Example 41: Master of Science (Computer Science) - University of Colombo School of Computing
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (41, 1), -- Computer Science: Technology
    (41, 18), -- Computer Science: Innovation
    (41, 5); -- Computer Science: Learning

-- Example 42: Doctor of Medicine (MD) - Postgraduate Institute of Medicine
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (42, 4), -- Medicine: Helping Others
    (42, 16); -- Medicine: Science

-- Example 43: Master of Science (Agriculture) - Postgraduate Institute of Agriculture
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (43, 8), -- Agriculture: Environment
    (43, 22), -- Agriculture: Nature
    (43, 16); -- Agriculture: Science

-- Example 44: Doctor of Philosophy (PhD) in Pali and Buddhist Studies - Postgraduate Institute of Pali & Buddhist Studies
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (44, 26), -- Pali and Buddhist Studies: Spirituality
    (44, 23), -- Pali and Buddhist Studies: History
    (44, 5); -- Pali and Buddhist Studies: Learning

-- Example 45: Master of Archaeology - Postgraduate Institute of Archaeology
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (45, 23), -- Archaeology: History
    (45, 16); -- Archaeology: Science

-- Example 46: Master of Business Administration (MBA) - Postgraduate Institute of Management
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (46, 2), -- MBA: Business
    (46, 19), -- MBA: Leadership
    (46, 20); -- MBA: Personal Growth

-- Example 47: Master of Science (Biochemistry) - Postgraduate Institute of Science
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (47, 16), -- Biochemistry: Science
    (47, 7); -- Biochemistry: Health & Wellness

-- Example 48: Master of Arts (English) - Postgraduate Institute of English
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (48, 3), -- English: Creativity
    (48, 12), -- English: Writing
    (48, 25); -- English: Philosophy

-- Example 49: Diploma in Human Resource Management - Institute of Human Resource Advancement
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (49, 2), -- Human Resource Management: Business
    (49, 20); -- Human Resource Management: Personal Growth

-- Example 50: Diploma in Ayurveda Medicine - Institute of Indigenous Medicine
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (50, 4), -- Ayurveda Medicine: Helping Others
    (50, 7); -- Ayurveda Medicine: Health & Wellness

-- Example 51: Bachelor of Engineering (Mechanical) - General Sir John Kotelawala Defence University
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (51, 1), -- Engineering: Technology
    (51, 16), -- Engineering: Science
    (51, 18); -- Engineering: Innovation

-- Example 52: Diploma in Business Management - ICBT Campus
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (52, 2), -- Business Management: Business
    (52, 20); -- Business Management: Personal Growth

-- Example 53: Diploma in Chemistry - Institute of Chemistry Ceylon
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (53, 16); -- Chemistry: Science

-- Example 54: Master of Business Administration (MBA) - National Institute of Business Management (Sri Lanka)
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (54, 2), -- MBA: Business
    (54, 19), -- MBA: Leadership
    (54, 20); -- MBA: Personal Growth

-- Example 55: Bachelor of Business Management (Hons.) - National School of Business Management
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (55, 2), -- Business Management: Business
    (55, 19), -- Business Management: Leadership
    (55, 20); -- Business Management: Personal Growth

-- Example 56: Bachelor of Science (Marine Biology) - Ocean University of Sri Lanka
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (56, 9), -- Marine Biology: Animals
    (56, 8), -- Marine Biology: Environment
    (56, 16); -- Marine Biology: Science

-- Example 57: Diploma in Vocational Training - University of Vocational Technology
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (57, 5), -- Vocational Training: Learning
    (57, 20); -- Vocational Training: Personal Growth

-- Example 58: Diploma in Thalassemia Care - The Adolescent and Adult Thalassemia Care Unit
INSERT OR IGNORE INTO Course_Passions (CourseID, PassionID) VALUES
    (58, 4), -- Thalassemia Care: Helping Others
    (58, 7); -- Thalassemia Care: Health