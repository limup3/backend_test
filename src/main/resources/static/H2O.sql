CREATE TABLE Ambulance
(
    `Ambulance_No`    INT            NOT NULL    AUTO_INCREMENT,
    `Ambulance_Name`  VARCHAR(50)    NOT NULL,
    `Addr`            VARCHAR(45)    NULL,
    `Tel`             VARCHAR(45)    NULL,
    `HomePage`        VARCHAR(45)    NULL,
    `Count`           VARCHAR(45)    NULL,
    PRIMARY KEY (Ambulance_No)
)default character set utf8 collate UTF8_GENERAL_CI;
CREATE TABLE Reservation
(
    `Reservation_No`  INT             NOT NULL    AUTO_INCREMENT,
    `Reservation_Id`  INT             NOT NULL,
    `Gubun`           VARCHAR(4)      NULL,
    `Date`            VARCHAR(50)     NULL,
    `Time`            VARCHAR(10)     NULL,
    `Prescription`    VARCHAR(100)    NULL,
    PRIMARY KEY (Reservation_No)
)default character set utf8 collate UTF8_GENERAL_CI;
CREATE TABLE Board
(
    `Board_No`       INT             NOT NULL    AUTO_INCREMENT,
    `Hospital_Star`  VARCHAR(10)     NULL,
    `Title`          VARCHAR(80)     NULL,
    `Content`        VARCHAR(150)    NULL,
    `Creation_Date`  VARCHAR(20)     NULL,
    `Category`       VARCHAR(20)     NULL,
    PRIMARY KEY (Board_No)
)default character set utf8 collate UTF8_GENERAL_CI;
CREATE TABLE User
(
    `User_No`   INT             NOT NULL    AUTO_INCREMENT,
    `User_Id`   VARCHAR(50)     NOT NULL,
    `Name`      VARCHAR(20)     NULL,
    `Password`  VARCHAR(20)     NULL,
    `Phone`     VARCHAR(30)     NULL,
    `Email`     VARCHAR(50)     NULL,
    `History`   VARCHAR(150)    NULL,
    PRIMARY KEY (User_No)
)default character set utf8 collate UTF8_GENERAL_CI;
CREATE TABLE Hospital
(
    `Hospital_No`    INT             NOT NULL    AUTO_INCREMENT,
    `Hospital_Name`  VARCHAR(20)     NOT NULL,
    `Logo`           VARCHAR(255)    NULL,
    `Addr`           VARCHAR(255)    NULL,
    `HospitalType`   VARCHAR(10)     NULL,
    `MedicalPerson`  VARCHAR(5)      NULL,
    `Tel`            VARCHAR(15)     NULL,
    `Latitude`       VARCHAR(45)     NULL,
    `Longitude`      VARCHAR(45)     NULL,
    PRIMARY KEY (Hospital_No)
)default character set utf8 collate UTF8_GENERAL_CI;
CREATE TABLE Doctor
(
    `Doctor_No`       INT             NOT NULL    AUTO_INCREMENT,
    `Doctor_Name`     VARCHAR(5)      NOT NULL,
    `Hospital_Name`   VARCHAR(20)     NULL,
    `Position`        VARCHAR(20)     NULL,
    `Detail_Data`     VARCHAR(255)    NULL,
    `Specialized`     VARCHAR(255)    NULL,
    `MedicalSubject`  VARCHAR(20)     NULL,
    `Age`             INT             NULL,
    PRIMARY KEY (Doctor_No)
)default character set utf8 collate UTF8_GENERAL_CI;
CREATE TABLE Comments
(
    `Comments_No`     INT             NOT NULL    AUTO_INCREMENT,
    `Content`         VARCHAR(255)    NULL,
    `Creation_Date`   VARCHAR(20)     NULL,
    `Board_No`        INT             NULL,
    `Comments_Reply`  VARCHAR(255)    NULL,
    `Sequence_No`     INT             NULL,
    PRIMARY KEY (Comments_No)
)default character set utf8 collate UTF8_GENERAL_CI;
