

--  1. Patients Table
CREATE TABLE Patients (
    Patient_ID VARCHAR(10) PRIMARY KEY,
    Age INT NOT NULL,
    Gender varchar(10)  NOT NULL
);

--  2. Medical History Table
CREATE TABLE Medical_History (
    Patient_ID VARCHAR(10),
    Family_Heart_Disease VARCHAR(10),
    Diabetes VARCHAR(10) ,
    High_Blood_Pressure VARCHAR(10) ,
    Low_HDL_Cholesterol VARCHAR(10),
    High_LDL_Cholesterol VARCHAR(10),
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID) ON DELETE CASCADE
);

--  3. Lifestyle Factors Table
CREATE TABLE Lifestyle_Factors (
    Patient_ID VARCHAR(10),
    Smoking VARCHAR(10),
    Exercise_Habits VARCHAR(10),
    Stress_Level VARCHAR(10) ,
    Sleep_Hours FLOAT,
	Lifestyle_score int,
    Sugar_Consumption VARCHAR(10),
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID) ON DELETE CASCADE
);

--  4. Lab Results Table
CREATE TABLE Lab_Results (
    Patient_ID VARCHAR(10),
    Blood_Pressure FLOAT,
    Cholesterol_Level FLOAT,
    Triglyceride_Level FLOAT,
    Fasting_Blood_Sugar FLOAT,
    CRP_Level FLOAT,
	Cholesterol_Risk varchar(50),
    Homocysteine_Level FLOAT,
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID) ON DELETE CASCADE
);

--  5. Heart Disease Status Table
CREATE TABLE  Health_Outcome (
    Patient_ID VARCHAR(10),
    Heart_Disease_Status varchar(10) NOT NULL,
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID) ON DELETE CASCADE
);
