CREATE TABLE Patient (
    PatientID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL,
    BirthDate DATE NOT NULL,
    Gender TEXT CHECK(Gender IN ('Male', 'Female', 'Other')),
    Phone TEXT UNIQUE ,
    Email TEXT UNIQUE ,
    Address TEXT
);

CREATE TABLE Doctor (
    DoctorID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL,
    Specialty TEXT NOT NULL,
    Phone TEXT UNIQUE,
    Email TEXT UNIQUE,
    ExperienceYears INTEGER CHECK (ExperienceYears >= 0),
    ClinicID INTEGER,
    FOREIGN KEY (ClinicID) REFERENCES Clinic(ClinicID)
);

CREATE TABLE Clinic (
    ClinicID INTEGER PRIMARY KEY AUTOINCREMENT,
    ClinicName TEXT NOT NULL,
    Location TEXT NOT NULL
);

CREATE TABLE Appointment (
    AppointmentID INTEGER PRIMARY KEY AUTOINCREMENT,
    PatientID INTEGER,
    DoctorID INTEGER,
    Date DATETIME NOT NULL,
    StartTime DATETIME NOT NULL,
    EndTime DATETIME NOT NULL,
    Status TEXT CHECK(Status IN ('Confirmed', 'Cancelled', 'Completed')),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);

CREATE TABLE Payment (
    PaymentID INTEGER PRIMARY KEY AUTOINCREMENT,
    AppointmentID INTEGER,
    Amount DECIMAL(10, 2) NOT NULL,
    PaymentDate DATETIME NOT NULL,
    PaymentMethod TEXT CHECK(PaymentMethod IN ('Cash', 'Card', 'Bank Transfer')),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);

CREATE TABLE Prescription (
    PrescriptionID INTEGER PRIMARY KEY AUTOINCREMENT,
    AppointmentID INTEGER,
    MedicationName TEXT NOT NULL,
    Dosage TEXT NOT NULL,
    Instructions TEXT NOT NULL,
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);

