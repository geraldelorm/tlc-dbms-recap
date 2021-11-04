-- Write the DDL to implement the physical model of the TLC assessment management system.
-- Create Schema
create schema tlcSys;

-- Create Entities ie Tables
--TLC_Students Table
create table tlc_students(
	students_id int primary key,
	first_name varchar(255) not null,
	last_name varchar(255) not null,
	email_address varchar(40) not null
);

--TLC_Assessments Table
create table tlc_assessments(
	assessment_id int primary key,
	assessment_name varchar(255) not null,
	assessment_description varchar(255)
);

--TLC_Students_Assessments Table
create table tlc_students_assessments(
	students_id integer references tlc_students(students_id),
	assessment_id integer references tlc_assessments(assessment_id),
	assessment_date date,
	assessment_grade varchar(1),
	assessment_score numeric,
	
	primary key (students_id, assessment_id, assessment_date)
);




--Drop the assessment description field from assessments.
alter table tlc_assessments 
drop column assessment_description;

--Add a mobile number field to students.
alter table tlc_assessments 
add column mobile_number integer not null ;



--Write insert statements to add a row to each table.
-- insert statements for students
insert into tlc_students(students_id, first_name, last_name, email_address)
values (1, 'Gerald', 'Gbagbe', 'geraldelorm14@gmail.com');

--get data
select * from tlc_students ts ;

-- insert statements for assessments
insert into tlc_assessments(assessment_id, assessment_name , mobile_number)
values (1, 'DBMS Test', 02098765543);

--get data
select * from tlc_assessments ta ;

-- insert statements for stusents_assessments
insert into tlc_students_assessments(students_id, assessment_id, assessment_date, assessment_grade, assessment_score)
values (1, 1, now(), 'A', 91);

--get data
select * from tlc_students_assessments tsa;

-- deletion
delete from tlc_students_assessments where (students_id = 1);

