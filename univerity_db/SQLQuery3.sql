USE university;
GO 

INSERT INTO department (dept_name, building, budget) VALUES
('Computer Science', 'Engineering Building', 500000.00),
('Mathematics', 'Science Building', 300000.00),
('Physics', 'Science Building', 400000.00),
('Electrical Engineering', 'Engineering Building', 450000.00),
('Chemistry', 'Science Building', 350000.00);


INSERT INTO instructor (ID, name, dept_name, salary) VALUES
(101, 'Dr. Alice Smith', 'Computer Science', 75000.00),
(102, 'Prof. Bob Johnson', 'Mathematics', 65000.00),
(103, 'Dr. Charlie Brown', 'Physics', 70000.00),
(104, 'Prof. Diana Davis', 'Electrical Engineering', 80000.00),
(105, 'Dr. Eva Wilson', 'Chemistry', 60000.00);


INSERT INTO student (ID, name, dept_name, tot_cred) VALUES
(1001, 'John Doe', 'Computer Science', 90),
(1002, 'Jane Smith', 'Mathematics', 85),
(1003, 'Michael Johnson', 'Physics', 80),
(1004, 'Emily Davis', 'Electrical Engineering', 95),
(1005, 'David Wilson', 'Chemistry', 88);


INSERT INTO course (course_id, title, dept_name, credits) VALUES
('CS101', 'Introduction to Computer Science', 'Computer Science', 4),
('MATH101', 'Calculus I', 'Mathematics', 3),
('PHY101', 'General Physics', 'Physics', 4),
('EE101', 'Introduction to Electrical Engineering', 'Electrical Engineering', 3),
('CHEM101', 'General Chemistry', 'Chemistry', 4);

INSERT INTO classroom (building, room_number, capacity) VALUES
('Engineering Building', 'E101', 50),
('Science Building', 'S201', 40),
('Engineering Building', 'E102', 60),
('Science Building', 'S202', 55),
('Science Building', 'S203', 45);


INSERT INTO section (course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES
('CS101', '1', 'Fall', 2023, 'Engineering Building', 'E101', 'TS1'),
('MATH101', '1', 'Fall', 2023, 'Science Building', 'S201', 'TS2'),
('PHY101', '1', 'Fall', 2023, 'Science Building', 'S202', 'TS3'),
('EE101', '1', 'Fall', 2023, 'Engineering Building', 'E102', 'TS4'),
('CHEM101', '1', 'Fall', 2023, 'Science Building', 'S203', 'TS5');


INSERT INTO teaches (ID, course_id, sec_id, semester, year) VALUES
(101, 'CS101', '1', 'Fall', 2023),
(102, 'MATH101', '1', 'Fall', 2023),
(103, 'PHY101', '1', 'Fall', 2023),
(104, 'EE101', '1', 'Fall', 2023),
(105, 'CHEM101', '1', 'Fall', 2023);


INSERT INTO takes (ID, course_id, sec_id, semester, year, grade) VALUES
(1001, 'CS101', '1', 'Fall', 2023, 'A'),
(1002, 'MATH101', '1', 'Fall', 2023, 'B'),
(1003, 'PHY101', '1', 'Fall', 2023, 'A'),
(1004, 'EE101', '1', 'Fall', 2023, 'B'),
(1005, 'CHEM101', '1', 'Fall', 2023, 'A');


INSERT INTO advisor (s_id, i_id) VALUES
(1001, 101),
(1002, 102),
(1003, 103),
(1004, 104),
(1005, 105);


INSERT INTO prereq (course_id, prereq_id) VALUES
('MATH101', 'CS101'),  
('PHY101', 'MATH101'), 
('EE101', 'PHY101'),   
('CHEM101', 'EE101'),  
('CS101', 'CHEM101');  