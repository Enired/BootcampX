SELECT students.name AS student, avg(assignment_submissions.duration)
FROM students
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
WHERE students.end_date IS null
GROUP BY students.name
ORDER BY avg(assignment_submissions.duration) DESC
