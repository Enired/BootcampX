select cohorts.name as cohort_name, count(students.id)
FROM cohorts 
JOIN students on cohorts.id = students.cohort_id
GROUP by cohorts.name
having count(students.*) >= 18
ORDER by count(students.*) asc