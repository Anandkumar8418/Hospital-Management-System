CREATE TABLE Patient(
    patient_id	INT,
    first_name	VARCHAR(10),
    last_name	VARCHAR(10),
    DOB	DATE,
    gender	VARCHAR(1),
    phone	VARCHAR(10),
    email	VARCHAR(20),
    doc_id	INT,
    PRIMARY KEY(patient_id)
);
-- DROP TABLE Department;
CREATE TABLE Records(
    patient_id	INT,
    first_name	VARCHAR(10),
    last_name	VARCHAR(10),
    height	VARCHAR(10),
    weight	VARCHAR(10),
    bloodgroup	VARCHAR(2),
    createdon	DATE,
    PRIMARY KEY(patient_id)
);

CREATE TABLE Address(
    patient_id	INT,
    first_name	VARCHAR(10),
    last_name	VARCHAR(10),
    add1	VARCHAR(40),
    add2	VARCHAR(40),
    city	VARCHAR(40),
    state	VARCHAR(40),
    pin_code    VARCHAR(6),
    PRIMARY KEY(patient_id)
);

CREATE TABLE Doctors(
    doc_id	INT,
    first_name	VARCHAR(10),
    last_name	VARCHAR(10),
    dep_id	INT,
    office_no	INT,
    PRIMARY KEY(doc_id)
);

CREATE TABLE Department(
    dep_id	INT,
    dep_name	VARCHAR(45),
    office_floor	INT,
    PRIMARY KEY(dep_id)
);

DESCRIBE Department;

-- ALTER TABLE Doctors
-- DROP FOREIGN KEY doctors_ibfk_1;


ALTER TABLE Doctors
ADD FOREIGN KEY(dep_id)
REFERENCES Department(dep_id)
ON DELETE SET NULL;

ALTER TABLE Patient
ADD FOREIGN KEY(doc_id)
REFERENCES Doctors(doc_id)
ON DELETE SET NULL;

INSERT INTO Department VALUES(101,"Neurologist",1);
INSERT INTO Department VALUES(102,"Botanist",1);
INSERT INTO Department VALUES(103,"ENT",3);
INSERT INTO Department VALUES(204,"Dentist",2);
INSERT INTO Department VALUES(109,"Dermatologist",2);
INSERT INTO Department VALUES(206,"Gynaecologist",4);

SELECT * FROM Department;

SELECT * FROM Doctors;

SELECT * FROM Patient;

SELECT * FROM Records;

SELECT * FROM Address;


-- UPDATE Doctors
-- SET dep_id = 103
-- WHERE doc_id = 220042;