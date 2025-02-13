INSERT INTO Patient (Name, BirthDate, Gender, Phone, Email, Address)
VALUES
('Ahmed Farouk', '1990-05-12', 'Male', '01098765432', 'ahmed.farouk@example.com', 'Cairo, Egypt'),
('Mona Hassan', '1985-03-22', 'Female', '01123456789', 'mona.hassan@example.com', 'Giza, Egypt'),
('Youssef Ali', '1992-10-10', 'Male', '01234567890', 'youssef.ali@example.com', 'Alexandria, Egypt'),
('Sarah Mohamed', '1989-07-05', 'Female', '01012345678', 'sarah.mohamed@example.com', 'Sharm El-Sheikh, Egypt'),
('Mohamed Abdelrahman', '1987-01-30', 'Male', '01111223344', 'mohamed.abd@example.com', 'Luxor, Egypt'),
('Fatma Nabil', '1994-08-19', 'Female', '01223334455', 'fatma.nabil@example.com', 'Port Said, Egypt'),
('Omar Kamal', '1983-11-17', 'Male', '01055667788', 'omar.kamal@example.com', 'Aswan, Egypt'),
('Layla Ramadan', '1991-04-23', 'Female', '01099887766', 'layla.ramadan@example.com', 'Suez, Egypt'),
('Hossam Saleh', '1986-09-15', 'Male', '01122334455', 'hossam.saleh@example.com', 'Damanhour, Egypt'),
('Sama Ahmed', '1993-02-11', 'Female', '01044556677', 'sama.ahmed@example.com', 'Mansoura, Egypt'),
('Nashwa Fathi', '1988-06-17', 'Female', '01144332211', 'nashwa.fathi@example.com', 'Ismailia, Egypt'),
('Khaled Anwar', '1990-01-04', 'Male', '01233445566', 'khaled.anwar@example.com', 'Cairo, Egypt'),
('Amira Zaki', '1996-12-29', 'Female', '01077889900', 'amira.zaki@example.com', 'Tanta, Egypt'),
('Tamer Saeed', '1985-11-06', 'Male', '01199887766', 'tamer.saeed@example.com', 'Hurghada, Egypt'),
('Hend Hossam', '1992-03-21', 'Female', '01011122334', 'hend.hossam@example.com', 'Marsa Alam, Egypt'),
('Ramy Samir', '1990-08-13', 'Male', '01223334466', 'ramy.samir@example.com', 'Assiut, Egypt'),
('Shereen Magdy', '1984-02-25', 'Female', '01055443322', 'shereen.magdy@example.com', 'Zagazig, Egypt'),
('Mohamed Sherif', '1995-04-06', 'Male', '01166778899', 'mohamed.sherif@example.com', 'Beni Suef, Egypt'),
('Doaa Ramadan', '1987-05-14', 'Female', '01066778800', 'doaa.ramadan@example.com', 'Fayoum, Egypt'),
('Hassan El-Amin', '1991-07-25', 'Male', '01223334488', 'hassan.amin@example.com', 'Damanhur, Egypt');


INSERT INTO Doctor (Name, Specialty, Phone, Email, ExperienceYears)
VALUES
('Dr. Ahmed Fathy', 'Cardiology', '01055667789', 'dr.ahmed.fathy@example.com', 15),
('Dr. Mona El-Masry', 'Dermatology', '01122334456', 'dr.mona.elmasry@example.com', 12),
('Dr. Youssef Hamdy', 'Pediatrics', '01234455677', 'dr.youssef.hamdy@example.com', 10),
('Dr. Sarah Khaled', 'Gynecology', '01012345678', 'dr.sarah.khaled@example.com', 18),
('Dr. Mohamed Tawfiq', 'Orthopedics', '01123344556', 'dr.mohamed.tawfiq@example.com', 8),
('Dr. Fatma Rashad', 'Neurology', '01099887766', 'dr.fatma.rashad@example.com', 20),
('Dr. Omar Samir', 'General Surgery', '01223334488', 'dr.omar.samir@example.com', 14),
('Dr. Layla Hossam', 'Obstetrics', '01055667799', 'dr.layla.hossam@example.com', 6),
('Dr. Hossam Abdelkader', 'Ophthalmology', '01122334488', 'dr.hossam.abdelkader@example.com', 22),
('Dr. Sama Nabil', 'Dentistry', '01233445577', 'dr.sama.nabil@example.com', 9),
('Dr. Nashwa Mohamed', 'Endocrinology', '01044556688', 'dr.nashwa.mohamed@example.com', 17),
('Dr. Khaled Magdy', 'Urology', '01022334455', 'dr.khaled.magdy@example.com', 13),
('Dr. Amira Samah', 'Psychiatry', '01133445566', 'dr.amira.samah@example.com', 11),
('Dr. Tamer El-Sayed', 'Gastroenterology', '01066778899', 'dr.tamer.elsayed@example.com', 16),
('Dr. Hend Hossam', 'Nephrology', '01223334499', 'dr.hend.hossam@example.com', 7),
('Dr. Ramy Zaki', 'Anesthesiology', '01155667788', 'dr.ramy.zaki@example.com', 12),
('Dr. Shereen Ahmed', 'Plastic Surgery', '01077889911', 'dr.shereen.ahmed@example.com', 14),
('Dr. Mohamed Sherif', 'Otolaryngology', '01223334477', 'dr.mohamed.sherif@example.com', 9),
('Dr. Doaa Abdallah', 'Hematology', '01023334488', 'dr.doaa.abdallah@example.com', 10),
('Dr. Hassan El-Amin', 'Rheumatology', '01066778800', 'dr.hassan.elamin@example.com', 18);

INSERT INTO Appointment (PatientID, DoctorID, Date, StartTime, EndTime, Status)
VALUES
(1, 2, '2025-02-01', '10:00:00', '11:00:00', 'Confirmed'),
(2, 3, '2025-02-02', '09:30:00', '10:30:00', 'Confirmed'),
(3, 4, '2025-02-03', '11:00:00', '12:00:00', 'Confirmed'),
(4, 5, '2025-02-04', '14:00:00', '15:00:00', 'Confirmed'),
(5, 6, '2025-02-05', '12:00:00', '13:00:00', 'Cancelled'),
(6, 7, '2025-02-06', '08:00:00', '09:00:00', 'Completed'),
(7, 8, '2025-02-07', '16:00:00', '17:00:00', 'Confirmed'),
(8, 9, '2025-02-08', '13:00:00', '14:00:00', 'Completed'),
(9, 10, '2025-02-09', '10:00:00', '11:00:00', 'Confirmed'),
(10, 11, '2025-02-10', '12:30:00', '13:30:00', 'Cancelled'),
(11, 12, '2025-02-11', '15:00:00', '16:00:00', 'Confirmed'),
(12, 13, '2025-02-12', '11:30:00', '12:30:00', 'Confirmed'),
(13, 14, '2025-02-13', '09:00:00', '10:00:00', 'Confirmed'),
(14, 15, '2025-02-14', '14:30:00', '15:30:00', 'Completed'),
(15, 16, '2025-02-15', '16:30:00', '17:30:00', 'Confirmed'),
(16, 17, '2025-02-16', '08:30:00', '09:30:00', 'Cancelled'),
(17, 18, '2025-02-17', '10:00:00', '11:00:00', 'Confirmed'),
(18, 19, '2025-02-18', '12:30:00', '13:30:00', 'Completed'),
(19, 20, '2025-02-19', '13:00:00', '14:00:00', 'Confirmed'),
(20, 1, '2025-02-20', '10:30:00', '11:30:00', 'Completed');





INSERT INTO Appointment (PatientID, DoctorID, Date, StartTime, EndTime, Status)
VALUES
(1, 2, '2025-02-01', '10:00:00', '11:00:00', 'Confirmed'),
(2, 3, '2025-02-02', '09:30:00', '10:30:00', 'Confirmed'),
(3, 4, '2025-02-03', '11:00:00', '12:00:00', 'Confirmed'),
(4, 5, '2025-02-04', '14:00:00', '15:00:00', 'Confirmed'),
(5, 6, '2025-02-05', '12:00:00', '13:00:00', 'Cancelled'),
(6, 7, '2025-02-06', '08:00:00', '09:00:00', 'Completed'),
(7, 8, '2025-02-07', '16:00:00', '17:00:00', 'Confirmed'),
(8, 9, '2025-02-08', '13:00:00', '14:00:00', 'Completed'),
(9, 10, '2025-02-09', '10:00:00', '11:00:00', 'Confirmed'),
(10, 11, '2025-02-10', '12:30:00', '13:30:00', 'Cancelled'),
(11, 12, '2025-02-11', '15:00:00', '16:00:00', 'Confirmed'),
(12, 13, '2025-02-12', '11:30:00', '12:30:00', 'Confirmed'),
(13, 14, '2025-02-13', '09:00:00', '10:00:00', 'Confirmed'),
(14, 15, '2025-02-14', '14:30:00', '15:30:00', 'Completed'),
(15, 16, '2025-02-15', '16:30:00', '17:30:00', 'Confirmed'),
(16, 17, '2025-02-16', '08:30:00', '09:30:00', 'Cancelled'),
(17, 18, '2025-02-17', '10:00:00', '11:00:00', 'Confirmed'),
(18, 19, '2025-02-18', '12:30:00', '13:30:00', 'Completed'),
(19, 20, '2025-02-19', '13:00:00', '14:00:00', 'Confirmed'),
(20, 1, '2025-02-20', '10:30:00', '11:30:00', 'Completed');







INSERT INTO Payment (AppointmentID, Amount, PaymentDate, PaymentMethod)
VALUES
(1, 300.00, '2025-02-01', 'Cash'),
(2, 200.00, '2025-02-02', 'Card'),
(3, 150.00, '2025-02-03', 'Bank Transfer'),
(4, 500.00, '2025-02-04', 'Cash'),
(5, 0.00, '2025-02-05', 'Card'),
(6, 100.00, '2025-02-06', 'Cash'),
(7, 350.00, '2025-02-07', 'Bank Transfer'),
(8, 250.00, '2025-02-08', 'Card'),
(9, 300.00, '2025-02-09', 'Bank Transfer'),
(10, 0.00, '2025-02-10', 'Cash'),
(11, 400.00, '2025-02-11', 'Card'),
(12, 220.00, '2025-02-12', 'Bank Transfer'),
(13, 180.00, '2025-02-13', 'Cash'),
(14, 350.00, '2025-02-14', 'Bank Transfer'),
(15, 200.00, '2025-02-15', 'Card'),
(16, 250.00, '2025-02-16', 'Bank Transfer'),
(17, 100.00, '2025-02-17', 'Cash'),
(18, 150.00, '2025-02-18', 'Card'),
(19, 300.00, '2025-02-19', 'Bank Transfer'),
(20, 200.00, '2025-02-20', 'Cash');






INSERT INTO Prescription (AppointmentID, MedicationName, Dosage, Instructions)
VALUES
(1, 'Aspirin', '500mg', 'Take one tablet after meals'),
(2, 'Ibuprofen', '200mg', 'Take two tablets twice a day'),
(3, 'Paracetamol', '500mg', 'Take one tablet every 4 hours'),
(4, 'Omeprazole', '20mg', 'Take one tablet before meals'),
(5, 'Amoxicillin', '250mg', 'Take one capsule three times a day'),
(6, 'Metformin', '500mg', 'Take one tablet after meals'),
(7, 'Prednisolone', '10mg', 'Take one tablet every morning'),
(8, 'Cetirizine', '10mg', 'Take one tablet in the evening'),
(9, 'Ciprofloxacin', '500mg', 'Take one tablet twice a day'),
(10, 'Loratadine', '10mg', 'Take one tablet daily'),
(11, 'Diazepam', '5mg', 'Take half tablet before sleep'),
(12, 'Alprazolam', '0.5mg', 'Take one tablet in the evening'),
(13, 'Hydrochlorothiazide', '25mg', 'Take one tablet in the morning'),
(14, 'Lisinopril', '10mg', 'Take one tablet daily'),
(15, 'Levothyroxine', '50mcg', 'Take one tablet before breakfast'),
(16, 'Hydrocodone', '10mg', 'Take one tablet every 4-6 hours'),
(17, 'Fluoxetine', '20mg', 'Take one tablet daily'),
(18, 'Ranitidine', '150mg', 'Take one tablet twice a day'),
(19, 'Atorvastatin', '20mg', 'Take one tablet daily'),
(20, 'Furosemide', '40mg', 'Take one tablet in the morning');



