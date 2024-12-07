CREATE TABLE DM_History_of_Vehicle (

    id          NUMBER NOT NULL primary key ,
    Vehicle_id number not null,
    incident_id number not ,
    Driver_id  number,
    Insurance_id number ,
   history_of_a_car_review_id number,
   period date,
  constraint DM_Vehicle_fk_hov foreign key (Vehicle_id)
    references DM_Vehicles (id),
      constraint DM_incident_fk_hov foreign key (incident_id)
    references DM_incident (id),
      constraint DM_Drivers_fk_hov foreign key (Driver_id)
    references DM_Drivers (id),
      constraint DM_insurance_fk_hov foreign key (Insurance_id)
    references DM_Insurance (id),
      constraint DM_history_of_a_car_review_fk_hov foreign key (history_of_a_car_review_id)
    references DM_history_of_a_car_review (id)
);