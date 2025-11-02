USE university;
CREATE TABLE department(
 dept_name VARCHAR(50) PRIMARY KEY,
 building VARCHAR(30),
 budget DECIMAL(10,2)
);
CREATE TABLE instructor(
 ID INT PRIMARY KEY,
 name VARCHAR(50),
 dept_name VARCHAR(50),
 salary DECIMAL(8,2),
 FOREIGN KEY(dept_name) REFERENCES department(dept_name)
);
CREATE TABLE student(
 ID INT PRIMARY KEY,
 name VARCHAR(50),
 dept_name VARCHAR(50),
 tot_cred INT,
 FOREIGN KEY(dept_name) REFERENCES department(dept_name)
);
CREATE TABLE course(
 course_id VARCHAR(10) PRIMARY KEY,
 title VARCHAR(50),
 dept_name VARCHAR(50),
 credits INT,
 FOREIGN KEY (dept_name) REFERENCES department(dept_name)
);
CREATE TABLE classroom(
 building VARCHAR(50),
 room_number VARCHAR(10),
 capacity INT,
 PRIMARY KEY(building,room_number)
 );
CREATE TABLE section (
 course_id VARCHAR(10),
 sec_id VARCHAR(10),
 semester VARCHAR(10),
 year INT,
 building VARCHAR(50),
 room_number VARCHAR(10),
 time_slot_id VARCHAR(10),
 PRIMARY KEY(course_id, sec_id,semester,year),
 FOREIGN KEY(course_id) REFERENCES course(course_id),
 FOREIGN KEY(building,room_number) REFERENCES classroom(building,room_number)
);
CREATE TABLE teaches(
 ID INT,
 course_id VARCHAR(10),
 sec_id VARCHAR(10),
 semester VARCHAR(10),
 year INT,
 PRIMARY KEY(ID,course_id,sec_id,semester,year),
 FOREIGN KEY(course_id,sec_id,semester,year) REFERENCES section(course_id,sec_id,semester,year)
);
CREATE TABLE takes(
 ID INT,
 course_id VARCHAR(10),
 sec_id VARCHAR(10),
 semester VARCHAR(10),
 year INT,
 grade CHAR(2),
 PRIMARY KEY (ID,course_id,sec_id,semester,year),
 FOREIGN KEY (course_id,sec_id,semester,year) REFERENCES section (course_id,sec_id,semester,year)
);
CREATE TABLE advisor(
 s_id INT,
 i_id INT,
 PRIMARY KEY(s_id),
 FOREIGN KEY(s_id) REFERENCES student(ID),
 FOREIGN KEY(i_id) REFERENCES instructor(ID)
);
 CREATE TABLE prereq(
  course_id VARCHAR(10),
  prereq_id VARCHAR(10),
  PRIMARY KEY(course_id,prereq_id),
  FOREIGN KEY(course_id) REFERENCES course(course_id),
  FOREIGN KEY(prereq_id) REFERENCES course(course_id)
 );



























