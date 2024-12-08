CREATE TABLE dm_citizens (
    id         NUMBER ,
    name       VARCHAR2(50char),
    last_name  VARCHAR2(50char),
    pesel      NUMBER NOT NULL PRIMARY KEY
);


  ALTER TABLE dm_citizens
ADD birth_date date;