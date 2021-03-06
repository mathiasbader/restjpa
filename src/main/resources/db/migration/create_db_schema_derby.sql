
-- DROP TABLE EMPLYOEE;
CREATE TABLE EMPLOYEE
(ID INT,
 EMPLOYEENUMBER INT,
 LOGIN VARCHAR(255),
 FIRSTNAME VARCHAR(255),
 LASTNAME VARCHAR(255)
);

-- DROP TABLE CUSTOMER;
CREATE TABLE CUSTOMER
(ID INT,
 CUSTOMERENUMBER INT,
 LOGIN VARCHAR(255),
 CUSTOMERTYPEID INT,
 FIRSTNAME VARCHAR(255),
 LASTNAME VARCHAR(255),
 BIRTHDATE DATE,
 ASSOCIATIONID INT
);

-- DROP TABLE CUSTOMERTYPE;
CREATE TABLE CUSTOMERTYPE
(ID INT,
 DESCRIPTION VARCHAR(255)
);

-- DROP TABLE LOGIN;
CREATE TABLE LOGIN
(ID INT,
 USERNAME VARCHAR(255),
 PASSWORDHASH VARCHAR(255),
 SALT VARCHAR(255),
 FAILEDLOGINATTEMPTS INT,
 VALIDUNTIL DATE,
 LOCKED BOOLEAN
);

-- DROP TABLE ACCOUNT;
CREATE TABLE ACCOUNT
(ID INT,
 ACCOUNTNUMBER INT,
 ACCOUNTTYPEID INT,
 CUSTOMERID INT,
 DESCRIPTION VARCHAR(255)
);

-- DROP TABLE ACCOUNTTYPE;
CREATE TABLE ACCOUNTTYPE
(ID INT,
 DESCRIPTION VARCHAR(255),
 CURRENCYID INT,
 INTERESTRATE DOUBLE,
 ANNUALFEE DOUBLE
);

-- DROP TABLE CURRENCY;
CREATE TABLE CURRENCY
(ID INT,
 DESCRIPTION VARCHAR(255)
);

-- DROP TABLE BANKTRANSACTION;
CREATE TABLE BANKTRANSACTION
(ID INT,
 TRANSACTIONTYPEID INT,
 SENDERBANKID INT,
 SENDERACCOUNTID INT,
 RECIPIENTBANKID INT,
 RECIPIENTACCOUNTID INT,
 AMOUNT DOUBLE,
 TRANSACTIONTIME TIMESTAMP,
 DESCRIPTION VARCHAR(255)
);

-- DROP TABLE TRANSACTIONTYPE;
CREATE TABLE TRANSACTIONTYPE
(ID INT,
 DESCRIPTION VARCHAR(255)
);

--DROP TABLE BANK;
--CREATE TABLE BANK
--(ID INT,
-- BANKNUMBER INT,
-- DESCRIPTION VARCHAR(255),
-- SERVERADDRESS VARCHAR(1023),
--);

CREATE TABLE BANK (
  ID INTEGER NOT NULL,
  BANK_NUMBER INTEGER NOT NULL,
  DESCRPTION VARCHAR(255),
  SERVER_ADRESS VARCHAR(1023) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE SEQUENCE (
  SEQ_NAME VARCHAR(50) NOT NULL, 
  SEQ_COUNT INTEGER,
  PRIMARY KEY (SEQ_NAME)
);

INSERT INTO SEQUENCE (SEQ_NAME, SEQ_COUNT) VALUES ('SEQ_GEN', 1);