CREATE TABLE [ELECTION_LIST](
[ID] [INT] CONSTRAINT PK_ELECTION_LIST PRIMARY KEY,/*PK CONSTRAINT*/
[FIRST_NAME][VARCHAR](20) NOT NULL,
[LAST_NAME][VARCHAR](20),
[AGE][INT] NOT NULL,
[PHONE][VARCHAR](30) NOT NULL,
[NATIONALITY][VARCHAR](20) NOT NULL,
[PLACE][VARCHAR](20),
[ADDRESS] [VARCHAR](20),
[NOMINEE_ID] [INT] CONSTRAINT FK_ELECTION_LIST 
FOREIGN KEY REFERENCES NOMINEE_DETAILS(NOMINEE_ID),
)

CREATE TABLE [NOMINEE_DETAILS](
[NOMINEE_ID] [INT] CONSTRAINT PK_NOMINEE_DETAILS PRIMARY KEY,
NOMINEE_NAME[VARCHAR] (20),
SYMBOL[VARCHAR](20),
);


SELECT * FROM ELECTION_LIST;
SELECT * FROM NOMINEE_DETAILS;

INSERT INTO ELECTION_LIST(ID,FIRST_NAME,LAST_NAME,AGE,PHONE,NATIONALITY,
PLACE,ADDRESS,NOMINEE_ID)
VALUES(1,'SHREYAS','TM',22,'8529637415','INDIAN','BANGALORE',
'MANGALORE',3);

/*SUB QUERIES*/
SELECT * FROM ELECTION_LIST 
WHERE 
(NOMINEE_ID =(SELECT NOMINEE_ID FROM ELECTION_LIST WHERE NOMINEE_ID=3));


SELECT * FROM ELECTION_LIST
WHERE 
(NOMINEE_ID =(SELECT NOMINEE_ID FROM NOMINEE_DETAILS WHERE NOMINEE_NAME='BJP'));

SELECT * FROM ELECTION_LIST
WHERE (FIRST_NAME IN(SELECT FIRST_NAME FROM ELECTION_LIST 
WHERE FIRST_NAME LIKE '%A%'));