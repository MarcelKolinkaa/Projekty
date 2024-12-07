CREATE TABLE DM_drivers (
    id NUMBER NOT NULL PRIMARY KEY,
    pesel number not null,
    vehicle_id number not null,
       constraint DM_citizens_fk3 foreign key (pesel)
    references DM_citizens(pesel)
 
     );


ALTER TABLE dm_drivers
add AM date; 

ALTER TABLE dm_drivers
add A1 date; 


ALTER TABLE dm_drivers
add A date; 

ALTER TABLE dm_drivers
add A2 date; 


ALTER TABLE dm_drivers
add B1 date; 
 
 ALTER TABLE dm_drivers
add B date; 

ALTER TABLE dm_drivers
add B+E date; 

ALTER TABLE dm_drivers
add C date; 

ALTER TABLE dm_drivers
add C1 date; 