
INSERT INTO section (course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES
('CS101', '1', 'Spring', 2024, 'Engineering Building', 'E101', 'TS1'),
('CS101', '2', 'Spring', 2024, 'Engineering Building', 'E102', 'TS2'),
('MATH101', '1', 'Spring', 2024, 'Science Building', 'S201', 'TS3'),
('PHY101', '1', 'Spring', 2024, 'Science Building', 'S202', 'TS4'),
('EE101', '1', 'Spring', 2024, 'Engineering Building', 'E101', 'TS5');

INSERT INTO instructor (ID, name, dept_name, salary) VALUES
(106, 'Dr. Frank Miller', 'Computer Science', 85000.00),
(107, 'Prof. Grace Lee', 'Computer Science', 72000.00);

INSERT INTO instructor (ID, name, dept_name, salary) VALUES
(108, 'Dr. Henry Clark', 'Mathematics', 68000.00);


INSERT INTO department (dept_name, building, budget) VALUES
('Music', 'Arts Building', 150000.00);

INSERT INTO student (ID, name, dept_name, tot_cred) VALUES
(1012, 'Anna Taylor', 'Music', 15),
(1013, 'Paul Martin', 'Music', 20);

INSERT INTO student (ID, name, dept_name, tot_cred) VALUES
(1014, 'Daniel Kim', 'Computer Science', 105),
(1015, 'Jessica Chen', 'Computer Science', 88),
(1016, 'Kevin Patel', 'Computer Science', 92),
(1017, 'Amanda Lewis', 'Computer Science', 76),
(1018, 'Brian Wright', 'Computer Science', 110);


INSERT INTO student (ID, name, dept_name, tot_cred) VALUES
(1019, 'Michelle Hall', 'Mathematics', 95),
(1020, 'Christopher King', 'Mathematics', 82),
(1021, 'Stephanie Scott', 'Mathematics', 78),
(1022, 'Jason Green', 'Mathematics', 105),
(1023, 'Nicole Adams', 'Mathematics', 90);
INSERT INTO department (dept_name, building, budget) VALUES
('Small Department', 'Main Building', 100000.00);

INSERT INTO instructor (ID, name, dept_name, salary) VALUES
(201, 'High Salary Prof', 'Small Department', 120000.00),
(202, 'Another High Salary', 'Small Department', 80000.00);