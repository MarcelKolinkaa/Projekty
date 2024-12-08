CREATE TABLE dm_car_fault (
    id          NUMBER NOT NULL primary key ,
    vehicle_id  NUMBER NOT NULL ,
    description_of_a_fault Varchar2(1000char),
    period      DATE,
    
    constraint DM_Vehicles_FK_CF foreign key (vehicle_id)
    references DM_vehicles (id)
);
