CREATE TABLE EMPLOYEE(
    EMP_ID INTEGER PRIMARY KEY,
    EMP_FNAME VARCHAR(20) NOT NULL,
    EMP_LNAME VARCHAR(20) NOT NULL,
    EMP_STREET VARCHAR(50),
    EMP_CITY VARCHAR(20),
    EMP_PROVINCE VARCHAR(25) NOT NULL,
    EMP_COUNTRY VARCHAR(50),
    EMP_DOB DATE NOT NULL,
    EMP_HIRE_DATE DATE NOT NULL,
    EMP_FIRE_DATE DATE,
    EMP_DEPART_DATE DATE,
    EMP_LOCKER INTEGER,
    EMP_PAY_RATE DECIMAL(8,2) NOT NULL,
    EMP_VACATION_ENTITLEMENT INTEGER,
    EMP_SICK_DAYS_ENTITLEMENT INTEGER,
);