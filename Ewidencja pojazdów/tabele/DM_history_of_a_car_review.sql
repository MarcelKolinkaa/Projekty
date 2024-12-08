CREATE TABLE DM_history_of_a_car_review (
    id          NUMBER NOT NULL primary key ,
    Car_fault_id  number ,
    Car_mileage_id number,
    
    constraint DM_Car_fault_id_fk foreign key (Car_fault_id)
    references DM_CAR_FAULT (id),
     constraint DM_Car_Mileage_fk foreign key (Car_mileage_id)
    references DM_car_mileage (id)
);