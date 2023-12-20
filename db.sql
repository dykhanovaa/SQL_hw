
DROP TABLE IF EXISTS 'groupp';
DROP INDEX IF EXISTS 'sqlite_autoindex_groupp_1';
DROP TABLE IF EXISTS 'student';
DROP TABLE IF EXISTS 'student_marks';
CREATE TABLE groupp (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) UNIQUE NOT NULL,
  description VARCHAR(255));
INSERT INTO 'groupp' VALUES(1,'Winx','Virtuous team');
INSERT INTO 'groupp' VALUES(2,'Trix','Evil team');
null;
CREATE TABLE student (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255), 
  group_id INTEGER NOT NULL REFERENCES groupp (id));
INSERT INTO 'student' VALUES(1,'Bloom',1);
INSERT INTO 'student' VALUES(2,'Stella',1);
INSERT INTO 'student' VALUES(3,'Musa',1);
INSERT INTO 'student' VALUES(4,'Flora',1);
INSERT INTO 'student' VALUES(5,'Aisha',1);
INSERT INTO 'student' VALUES(6,'Tecna',1);
INSERT INTO 'student' VALUES(7,'Icy',2);
INSERT INTO 'student' VALUES(8,'Darcy',2);
INSERT INTO 'student' VALUES(9,'Stormy',2);
CREATE TABLE student_marks (
  student_id INTEGER PRIMARY KEY REFERENCES student (id),
  math_mark_average FLOAT,
  physics_mark_average FLOAT,
  python_mark_average FLOAT);
INSERT INTO 'student_marks' VALUES(1,5,5,5);
INSERT INTO 'student_marks' VALUES(2,5,5,5);
INSERT INTO 'student_marks' VALUES(3,4,5,4.75);
INSERT INTO 'student_marks' VALUES(4,5,4.2,5);
INSERT INTO 'student_marks' VALUES(5,5,5,5);
INSERT INTO 'student_marks' VALUES(6,5,5,5);
INSERT INTO 'student_marks' VALUES(7,3,5,5);
INSERT INTO 'student_marks' VALUES(8,5,4,5);
INSERT INTO 'student_marks' VALUES(9,5,5,4.5);
