select * from subject

---1) find total credits for each professpr 

select professor, sum(credits) as total_credits from subject
group by professor

--2) get the avg credit for subject in each semester, but only in sem where credit is greater than 3

select semester, avg (credits) as average_credits from subject
group by semester having avg(credits)>=3.5

--3) count the number of subjects each prof teaches in fall sem

select professor, count(subject_id) as num_subjects from subject
where semester = 'fall' group by professor

--4) find max credit for any subject taught by each professor

select professor, max(credits) as max_credits from subject
group by professor

--5) get total num of subjects and their avg credit in each sem where total subject is > 3
	
select semester, count(subject_id) as num_subjects, avg(credits) as average_credits from subject
group by semester having count(subject_id)>3

---6) get the min credits for each prof teaching subject in spring 

select professor, min(credits) as min_credits from subject
where semester='spring' group by professor

--7) show the total credit & num of subjects for each prof, if credit >4

select professor, sum(credits) as total_credits, count(subject_id) as num_subject from subject
group by professor having sum(credits)>4

--8) retrieve the sem where the avg credits are between 3.5 and 4

select semester, avg(credits) as average_credits from subject
group by semester having avg(credits) between 3.5 and 4

--9) find total credits for each sem, but only for those sem where the avg credits per subject>3.5

select semester, sum(credits) as total_credits from subject
group by semester having avg(credits)>3
