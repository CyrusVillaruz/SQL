CREATE TABLE LEAVE(
    LEAVE_ID INTEGER NOT NULL UNIQUE,
    EMP_ID INTEGER NOT NULL,
    LEAVE_TYPE VARCHAR(25) NOT NULL,
    LEAVE_START DATE NOT NULL,
    LEAVE_END DATE NOT NULL,
    LEAVE_COMMENTS VARCHAR(100),
    PRIMARY KEY(LEAVE_ID),
    FOREIGN KEY(EMP_ID) REFERENCES EMPLOYEE(EMP_ID) ON UPDATE CASCADE
);