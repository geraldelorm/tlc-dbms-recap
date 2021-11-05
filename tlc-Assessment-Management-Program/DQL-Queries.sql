select * from assessments a ;
select * from student_assessments sa ;
select * from students s ;

--1. Total number of assessments organised in the last 30 days.
select count(*) from
( select distinct assessment_id, assessment_date 
from student_assessments
WHERE assessment_date > CURRENT_DATE - 30) as subquery;

--2. For each assessment, display the name, description, and highest and lowest score.
select a.assessment_name, a.assessment_description, max(sa.assessment_score) as HighestScore, min(sa.assessment_score) as LowestScore 
from assessments a 
inner join student_assessments sa on a.assessment_id = sa.assessment_id
group by a.assessment_name, a.assessment_description ; 

--select count(distinct assessment_date) from student_assessments sa 
--where (current_date - assessment_date) <= 30;


--3. Display the names of students who have failed a database assessment.
select s.first_name, s.last_name , sa.assessment_grade 
from student_assessments sa 
inner join students s on  sa.student_id = s.student_id 
inner join assessments a on a.assessment_id = sa.assessment_id 
where sa.assessment_grade = 'F' and a.assessment_name like 'Databases%';

--4. How many students have retaken an assessment?
select * from student_assessments sa

--5. On which dates did students take a Java assessment?
--6. Display students that haven’t retaken an assessment they failed, and the corresponding
--assessment.
--7. Which students failed (grade F) their assessment and resit, and for which assessment?
--8. How many students got grades A-C in both Java assessments?
--9. Which students have failed (grade F) more than one assessment ?
--10. For each student, return the number of times they have taken each assessment.
--11. Which assessment has the highest score on average?
--12. Display the name of each student and their average score across all assessments, in
--order of highest average first. For students who have retaken an exam, take the latest
--result.
--13. Return the top 5 highest performing students for Kotlin.