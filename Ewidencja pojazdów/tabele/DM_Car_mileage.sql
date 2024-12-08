CREATE TABLE dm_car_mileage (
    id          NUMBER NOT NULL primary key ,
    vehicle_id  NUMBER NOT NULL ,
    mileage VARCHAR2(30char),
    period      DATE,
    
    constraint DM_vehicles_fk_cr foreign key (vehicle_id)
    references DM_vehicles (id)
);