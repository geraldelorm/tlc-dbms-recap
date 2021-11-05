

--drop schema TLCProgram cascade;

create schema if not exists TLCProgram;


--drop table if exists TLCProgram.Students;
--drop table if exists TLCProgram.Assessments;
--drop table if exists TLCProgram.Student_Assessments;


create table TLCProgram.Students 
(
	student_id integer not null primary key,
	first_name varchar(255) not null,
	last_name varchar(255) not null,
	email_address varchar(40) not null
);

create table TLCProgram.Assessments
(
	assessment_id integer not null primary key,
	assessment_name varchar(255) not null,
	assessment_description varchar(255)
);

create table TLCProgram.Student_Assessments
(
	student_id integer not null,
	assessment_id integer not null,
	assessment_date date not null,
	assessment_grade varchar(1),
	assessment_score numeric,
	primary key (student_id, assessment_id, assessment_date),
	foreign key (student_id) references TLCProgram.Students(student_id),
	foreign key (assessment_id) references TLCProgram.Assessments(assessment_id)
);

delete from TLCProgram.Students;
insert into TLCProgram.Students
values (1, 'George', 'Foreman', 'george_f@yahoo.com');
insert into TLCProgram.Students
values (2, 'Dave', 'One', 'dave@apple.com');
insert into TLCProgram.Students
values (3, 'Carrie', 'Oakey', 'c.n.oakey@gmail.com');
insert into TLCProgram.Students
values (4, 'George', 'Red-Foreman', 'george_foreman_red@yahoo.com');
insert into TLCProgram.Students
values (5, 'Henrietta', 'Smythe', 'hatty@aol.com');
insert into TLCProgram.Students
values (6, 'Hugh', 'Smith', 'dobby@hogwarts.com');
insert into TLCProgram.Students
values (7, 'Debra', 'Brown', 'debbyb@hotmail.com');

delete from TLCProgram.Assessments;
insert into TLCProgram.Assessments
values (1, 'Java 1', 'Java fundamentals');
insert into TLCProgram.Assessments
values (2, 'Java 2', 'Advanced Java');
insert into TLCProgram.Assessments
values (3, 'Databases 1', 'Database fundamentals');
insert into TLCProgram.Assessments
values (4, 'Databases 2', 'Advanced Databases');
insert into TLCProgram.Assessments
values (5, 'Data modelling', 'Logical and physical data modelling');
insert into TLCProgram.Assessments
values (6, 'Kotlin', 'Introduction to Kotlin');
insert into TLCProgram.Assessments
values (7, 'Programming Fundamentals', 'Programming Fundamentals with C++');

delete from TLCProgram.Student_Assessments;
insert into TLCProgram.Student_Assessments
values (1, 1, '2021-10-11' , 'A', 82.5);
insert into TLCProgram.Student_Assessments
values (2, 1, '2021-10-11' , 'B', 73);
insert into TLCProgram.Student_Assessments
values (3, 1, '2021-10-11' , 'C', 64);
insert into TLCProgram.Student_Assessments
values (4, 1, '2021-10-11' , 'D', 51.2);
insert into TLCProgram.Student_Assessments
values (5, 1, '2021-10-11' , 'A', 86);
insert into TLCProgram.Student_Assessments
values (6, 1, '2021-10-11' , 'F', 38);
insert into TLCProgram.Student_Assessments
values (6, 1, '2021-10-21' , 'D', 52);
insert into TLCProgram.Student_Assessments
values (7, 1, '2021-10-11' , 'E', 46.5);
insert into TLCProgram.Student_Assessments
values (1, 2, '2021-11-01' , 'F', 12.5);
insert into TLCProgram.Student_Assessments
values (2, 2, '2021-11-01' , 'F', 23);
insert into TLCProgram.Student_Assessments
values (3, 2, '2021-11-01' , 'E', 44);
insert into TLCProgram.Student_Assessments
values (4, 2, '2021-11-01' , 'C', 61.2);
insert into TLCProgram.Student_Assessments
values (5, 2, '2021-11-01' , 'A', 96);
insert into TLCProgram.Student_Assessments
values (6, 2, '2021-11-01' , 'F', 22);
insert into TLCProgram.Student_Assessments
values (7, 2, '2021-11-01' , 'F', 11);
insert into TLCProgram.Student_Assessments
values (1, 3, '2021-10-22' , 'A', 92.5);
insert into TLCProgram.Student_Assessments
values (2, 3, '2021-10-22' , 'F', 28);
insert into TLCProgram.Student_Assessments
values (2, 3, '2021-11-05' , 'E', 40.2);
insert into TLCProgram.Student_Assessments
values (3, 3, '2021-10-22' , 'F', 34);
insert into TLCProgram.Student_Assessments
values (4, 3, '2021-10-22' , 'B', 71.2);
insert into TLCProgram.Student_Assessments
values (5, 3, '2021-10-22' , 'C', 66);
insert into TLCProgram.Student_Assessments
values (6, 3, '2021-10-22' , 'A', 82);
insert into TLCProgram.Student_Assessments
values (7, 3, '2021-10-22' , 'A', 89);
insert into TLCProgram.Student_Assessments
values (1, 4, '2021-10-18' , 'D', 52.5);
insert into TLCProgram.Student_Assessments
values (2, 4, '2021-10-18' , 'C', 68);
insert into TLCProgram.Student_Assessments
values (3, 4, '2021-10-18' , 'C', 64);
insert into TLCProgram.Student_Assessments
values (4, 4, '2021-10-18' , 'D', 51.2);
insert into TLCProgram.Student_Assessments
values (5, 4, '2021-10-18' , 'F', 36);
insert into TLCProgram.Student_Assessments
values (6, 4, '2021-10-18' , 'F', 32);
insert into TLCProgram.Student_Assessments
values (7, 4, '2021-10-18' , 'B', 79);
insert into TLCProgram.Student_Assessments
values (1, 5, '2021-10-11' , 'F', 32);
insert into TLCProgram.Student_Assessments
values (1, 5, '2021-10-21' , 'E', 43);
insert into TLCProgram.Student_Assessments
values (2, 5, '2021-10-11' , 'C', 68.5);
insert into TLCProgram.Student_Assessments
values (3, 5, '2021-10-11' , 'A', 84);
insert into TLCProgram.Student_Assessments
values (4, 5, '2021-10-11' , 'D', 50);
insert into TLCProgram.Student_Assessments
values (5, 5, '2021-10-11' , 'A', 76);
insert into TLCProgram.Student_Assessments
values (6, 5, '2021-10-11' , 'E', 44);
insert into TLCProgram.Student_Assessments
values (7, 5, '2021-10-11' , 'A', 81);
insert into TLCProgram.Student_Assessments
values (1, 6, '2021-09-22' , 'C', 62);
insert into TLCProgram.Student_Assessments
values (2, 6, '2021-09-22' , 'F', 33.5);
insert into TLCProgram.Student_Assessments
values (3, 6, '2021-09-22' , 'A', 82);
insert into TLCProgram.Student_Assessments
values (4, 6, '2021-09-22' , 'E', 43);
insert into TLCProgram.Student_Assessments
values (5, 6, '2021-09-22' , 'B', 79);
insert into TLCProgram.Student_Assessments
values (6, 6, '2021-09-22' , 'E', 43);
insert into TLCProgram.Student_Assessments
values (7, 6, '2021-09-22' , 'F', 21);
insert into TLCProgram.Student_Assessments
values (7, 6, '2021-10-04' , 'E', 43);
insert into TLCProgram.Student_Assessments
values (1, 7, '2021-09-07' , 'C', 68);
insert into TLCProgram.Student_Assessments
values (2, 7, '2021-09-07' , 'F', 27);
insert into TLCProgram.Student_Assessments
values (2, 7, '2021-09-21' , 'E', 48);
insert into TLCProgram.Student_Assessments
values (3, 7, '2021-09-07' , 'A', 95);
insert into TLCProgram.Student_Assessments
values (4, 7, '2021-09-07' , 'E', 49);
insert into TLCProgram.Student_Assessments
values (5, 7, '2021-09-07' , 'B', 73.5);
insert into TLCProgram.Student_Assessments
values (6, 7, '2021-09-07' , 'E', 44);
insert into TLCProgram.Student_Assessments
values (7, 7, '2021-09-07' , 'F', 16);
insert into TLCProgram.Student_Assessments
values (7, 7, '2021-09-21' , 'F', 28);


