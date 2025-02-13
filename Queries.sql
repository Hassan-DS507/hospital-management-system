--1.Retrieve the details of all patients who have an appointment with any doctor.

SELECT * FROM 
patient 
JOIN appointment 
ON Patient.PatientID = Appointment.PatientID;

/*2. Retrieve a list of all appointments along with the corresponding payment status for each.
Instructions:
• Join the "Appointment" table with the "Payment" table based on the patient ID.
• Select the appointment ID, patient name, appointment date, payment status, and 
amount paid.
• Order the results by appointment date in descending order*/
SELECT A.AppointmentID,P.Name,A."Date",A.Status,Y.Amount
FROM Patient P
JOIN Appointment A
ON P.PatientID = A.PatientID
JOIN Payment Y 
ON A.AppointmentID = Y.AppointmentID
ORDER BY A.Date DESC;

/*
Report 3: Doctor's Prescription History
Objective: List all prescriptions issued by each doctor, along with the patient's name and 
prescription details.
Instructions:
• Join the "Doctor", "Prescription", and "Patient" tables.
• Select the doctor's name, patient name, prescription ID, and the medication prescribed.
• Group the results by doctor and patient.
*/
SELECT D.Name ,P.Name,PR.PrescriptionID, PR.Instructions
FROM Patient P

JOIN Appointment A ON P.PatientID = A.PatientID
JOIN Doctor D ON A.DoctorID = D.DoctorID
JOIN Prescription PR ON A.AppointmentID=PR.AppointmentID
ORDER BY D.Name,P.Name;

/*
Objective: Show a list of all patients with their upcoming appointments.
Instructions:
• Select all patients from the "Patient" table and join them with the "Appointment" table.
• Filter the results to show only future appointments (i.e., appointments where the 
appointment date is after the current date).
• Include patient details such as name, appointment date, and doctor name.
*/
SELECT 
    P.Name AS PatientName,
    A.AppointmentID,
    A."Date" AS AppointmentDate,
    D.Name AS DoctorName
FROM Patient P
JOIN Appointment A ON P.PatientID = A.PatientID
JOIN Doctor D ON A.DoctorID = D.DoctorID
WHERE A."Date" > CURRENT_DATE  
ORDER BY A."Date";  

-- 1. Doctor’s Prescription History  
-- This query retrieves all prescriptions issued by each doctor.  
-- It includes the doctor's name, patient's name, prescription ID, and medication prescribed.  
-- The data is fetched by joining the Prescription, Appointment, Patient, and Doctor tables.  
-- Results are ordered by doctor’s name and then by patient’s name.  
SELECT 
    d.DoctorName AS Doctor,
    p.PatientName AS Patient,
    pr.PrescriptionID,
    pr.Medication
FROM Prescription pr
JOIN Appointment a ON pr.AppointmentID = a.AppointmentID
JOIN Patient p ON a.PatientID = p.PatientID
JOIN Doctor d ON a.DoctorID = d.DoctorID
ORDER BY d.DoctorName, p.PatientName;


-- 2. Upcoming Appointments  
-- This query retrieves all upcoming appointments for patients.  
-- Only appointments with a date later than today are included.  
-- It fetches patient name, appointment date, and doctor name.  
-- The data is retrieved by joining the Patient, Appointment, and Doctor tables.  
-- Results are ordered by appointment date.  
SELECT 
    p.PatientName,
    a.AppointmentDate,
    d.DoctorName
FROM Appointment a
JOIN Patient p ON a.PatientID = p.PatientID
JOIN Doctor d ON a.DoctorID = d.DoctorID
WHERE a.AppointmentDate > CURRENT_DATE
ORDER BY a.AppointmentDate;


-- 3. Payment Status for Appointments  
-- This query retrieves the payment status for each appointment.  
-- It includes the appointment ID, patient name, appointment date, payment status, and amount paid.  
-- The CASE statement determines whether the patient has paid or not.  
-- COALESCE is used to replace NULL values with 0 for unpaid amounts.  
-- Results are ordered from the most recent to the oldest appointment.  
SELECT 
    a.AppointmentID,
    p.PatientName,
    a.AppointmentDate,
    CASE 
        WHEN pay.AmountPaid IS NOT NULL THEN 'Paid'
        ELSE 'Not Paid'
    END AS PaymentStatus,
    COALESCE(pay.AmountPaid, 0) AS AmountPaid
FROM Appointment a
JOIN Patient p ON a.PatientID = p.PatientID
LEFT JOIN Payment pay ON a.AppointmentID = pay.AppointmentID
ORDER BY a.AppointmentDate DESC;
