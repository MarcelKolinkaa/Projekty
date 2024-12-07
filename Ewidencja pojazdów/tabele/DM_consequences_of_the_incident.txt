CREATE TABLE DM_consequences_of_the_incident (

    id          NUMBER NOT NULL primary key ,
    incident_id ,
    desription_of_consequences Varchar2(1000char),
    
    
    constraint DM_Inciddent_fk_cofti foreign key (incident_id)
    references DM_incident (id)
);