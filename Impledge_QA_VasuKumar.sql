# Query 1: Select details of doctors with admissions
SELECT DISTINCT d.*
FROM Doctors d
JOIN Admissions a ON d.doctor_id = a.attending_doctor_id;

# Query 2: Select details of doctors without admissions
SELECT d.*
FROM Doctors d
LEFT JOIN Admissions a ON d.doctor_id = a.attending_doctor_id
WHERE a.attending_doctor_id IS NULL;

# Query 3: Select details of patients whose admissions can't be completed due to missing doctor details
SELECT p.*
FROM Patients p
JOIN Admissions a ON p.patient_id = a.patient_id
WHERE a.attending_doctor_id IS NULL;
