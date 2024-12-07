CREATE TABLE dm_incident (
    id                        NUMBER NOT NULL PRIMARY KEY,
    type_of_a_incident        VARCHAR2(100char),
    desription_of_a_incident  VARCHAR2(1000char),
    date_of_a incident        date,
    drivers_id                NUMBER,
    vehicles_id               NUMBER NOT NULL,
    type_of_law_enforcement   VARCHAR2(50char),
badge_number_of_a_police_officer_who_came_to_the_incident number,
    CONSTRAINT dm_Drivers_fk_inc FOREIGN KEY ( drivers_id )
        REFERENCES DM_drivers ( id ),
     CONSTRAINT DM_Vehicles_fk_inc FOREIGN KEY ( Vehicles_id )
        REFERENCES DM_vehicles ( id )
);





constraint dm_law_enforcement_service_fk_i foreign Key (badge_number_of_a_police_officer_who_came_to_the_incident)
   references DM_law_enforcement_service (badge_number)



ALTER TABLE dm_incident ADD  constraint dm_law_enforcement_service_fk_i foreign Key (badge_number_of_a_police_officer_who_came_to_the_incident)
   references DM_law_enforcement_service (badge_number);
