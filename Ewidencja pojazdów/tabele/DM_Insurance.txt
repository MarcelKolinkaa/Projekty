CREATE TABLE DM_Insurance (

    id          NUMBER NOT NULL primary key ,
    insurance_company_id number not null,
    vehicle_id number not null,
    number_oc number,
    number_ac number ,
    period date,
      constraint DM_Insurance_company_fk foreign key (insurance_company_id)
    references DM_insurance_company (id) ,
      constraint DM_Vehicle_fk_ins foreign key (vehicle_id)
    references DM_vehicles (id)
);