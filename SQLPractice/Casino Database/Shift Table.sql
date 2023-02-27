CREATE TABLE SHIFT (
    SHIFT_ID INT PRIMARY KEY,
    SHIFT_TYPE VARCHAR(50),
    SHIFT_START DATETIME,
    SHIFT_END DATETIME,
    EMP_ID INT,
    FOREIGN KEY (EMP_ID) REFERENCES EMPLOYEE(EMP_ID)
);