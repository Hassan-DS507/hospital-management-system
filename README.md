# Hospital Management System

## Overview
This project is a **Hospital Management System** built using **SQLite** to manage hospital records, including patients, doctors, appointments, prescriptions, and payments. The system ensures efficient data management and easy retrieval of medical records.

## Features
- **Patient Management**: Store and retrieve patient details.
- **Doctor Management**: Maintain doctor information.
- **Appointments**: Schedule and track patient appointments.
- **Prescriptions**: Record and access prescriptions given to patients.
- **Payments**: Manage billing and payment records.
- **Database Queries**: Perform CRUD operations on the hospital database.

## Technologies Used
- **SQLite**: For database management.
- **SQL Scripts**: To create tables, insert data, update, and delete records.
- **Python (Optional)**: If needed for data handling or API connections.

## Database Schema
The database consists of multiple tables:

1. **Patients** (Stores patient details)
   - `patient_id` (Primary Key)
   - `name`
   - `age`
   - `gender`
   - `contact`
   - `address`

2. **Doctors** (Stores doctor details)
   - `doctor_id` (Primary Key)
   - `name`
   - `specialization`
   - `contact`

3. **Appointments** (Links patients and doctors)
   - `appointment_id` (Primary Key)
   - `patient_id` (Foreign Key)
   - `doctor_id` (Foreign Key)
   - `date`
   - `time`

4. **Prescriptions** (Stores prescription details)
   - `prescription_id` (Primary Key)
   - `patient_id` (Foreign Key)
   - `doctor_id` (Foreign Key)
   - `medication`
   - `dosage`

5. **Payments** (Handles billing information)
   - `payment_id` (Primary Key)
   - `patient_id` (Foreign Key)
   - `amount`
   - `date`

## Files Included
- **`01_create_tables.sql`**: Script to create database tables.
- **`insert_data.sql`**: Contains SQL commands to insert sample data.
- **`updates_deletes.sql`**: Contains SQL queries for updating and deleting records.
- **`Queries.sql`**: Various SQL queries for retrieving hospital data.
- **`database.db`**: The SQLite database file.
- **`Hospital-Management-System-Database.db`**: Another version of the database.
- **`Report 1.docx` & `Report 1.pdf`**: Documentation explaining project details.

## How to Run the Project
1. **Set up SQLite**:
   - Download SQLite if not installed.
   - Open SQLite command line or use a database GUI like **DB Browser for SQLite**.

2. **Load the database**:
   ```sql
   .open database.db
   ```

3. **Execute SQL Scripts**:
   ```sql
   .read 01_create_tables.sql
   .read insert_data.sql
   .read updates_deletes.sql
   ```

4. **Run Queries**:
   ```sql
   .read Queries.sql
   ```

## Example Queries
- **Retrieve all patients**:
  ```sql
  SELECT * FROM Patients;
  ```
- **Find all appointments for a doctor**:
  ```sql
  SELECT * FROM Appointments WHERE doctor_id = 1;
  ```
- **Get total payments made by a patient**:
  ```sql
  SELECT SUM(amount) FROM Payments WHERE patient_id = 2;
  ```

## Future Enhancements
- **Web Interface**: Build a frontend using **Flask/Django**.
- **User Authentication**: Secure database access.
- **Advanced Reports**: Generate detailed hospital analytics.



