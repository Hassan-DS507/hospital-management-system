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


/*Objective:
I need you to create reports that show the data related to patients, their appointments, the prescriptions given by doctors, and the payment details for each appointment. The goal is to use SQL to pull this data from the database and organize it in a way that is easy to understand.

Instructions:
Doctor’s Prescription History:

List all prescriptions issued by each doctor.
For each prescription, show:
Doctor’s name
Patient’s name
Prescription ID
Medication prescribed
Group the results by doctor and patient.
Join the tables: Patient, Doctor, Appointment, and Prescription.
Upcoming Appointments:

Show all patients with their upcoming appointments.
Only show future appointments, meaning the ones where the appointment date is after today’s date.
Include the following information:
Patient name
Appointment date
Doctor name
Join the tables: Patient, Appointment, and Doctor.
Payment Status for Appointments:

For each appointment, show:
Appointment ID
Patient name
Appointment date
Payment status (Has the patient paid or not?)
Amount paid
Join the tables: Appointment, Payment, and Patient.
Order the results: Arrange appointments from the most recent to the oldest.
Group Data (When Needed):

Sometimes you will need to group the data based on either the doctor or patient, especially if there are multiple appointments or prescriptions for the same person.*/