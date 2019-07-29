DROP TABLE NOTE;
DROP TABLE EMPLOYEE;.

CREATE TABLE EMPLOYEE (
EMPLOYEE_ID NUMBER(10,0),
FIRST_NAME VARCHAR2(255),
LAST_NAME VARCHAR2(255),
EMAIL_ADDRESS VARCHAR2(255),
TEXT VARCHAR2(255),
PRIMARY KEY (EMPLOYEE_ID)
);


CREATE TABLE NOTE (
NOTE_ID NUMBER(10,0),
EMPLOYEE_ID NUMBER(10,0),
TEXT VARCHAR2(255),
PRIMARY KEY (NOTE_ID),
FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE (EMPLOYEE_ID)
);


INSERT INTO EMPLOYEE (FIRST_NAME, LAST_NAME, EMAIL_ADDRESS, TEXT) VALUES ('Dennis', 'Kalaygian', 'dennis@gmail.com', 'hello');
INSERT INTO EMPLOYEE (FIRST_NAME, LAST_NAME, EMAIL_ADDRESS, TEXT) VALUES ('Jeremy', 'Gencavage', 'jeremy@gmail.com', 'yes');
INSERT INTO EMPLOYEE (FIRST_NAME, LAST_NAME, EMAIL_ADDRESS, TEXT) VALUES ('Lynn', 'Johnson', 'lynn@gmail.com', 'no');
INSERT INTO EMPLOYEE (FIRST_NAME, LAST_NAME, EMAIL_ADDRESS, TEXT) VALUES ('K', 'T', 'KT.gmail.com', 'maybe');

INSERT INTO NOTE (EMPLOYEE_ID, TEXT) VALUES (1, 'I eat trash on the beach for fun.');
INSERT INTO NOTE (EMPLOYEE_ID, TEXT) VALUES (2, 'I am lost in space.');

DROP SEQUENCE hibernate_sequence;
CREATE SEQUENCE hibernate_sequence;

