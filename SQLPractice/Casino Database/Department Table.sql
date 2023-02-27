CREATE TABLE DEPARTMENT (
    DEPT_ID INT PRIMARY KEY,
    DEPT_NAME VARCHAR(255) NOT NULL
);

ALTER TABLE DEPARTMENT
ADD DEPT_HEAD INT,
CONSTRAINT FK_DEPARTMENT_DEPT_HEAD FOREIGN KEY (DEPT_HEAD) REFERENCES EMPLOYEE (EMP_ID);