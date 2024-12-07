CREATE TABLE DM_Vehicles (
    id                   NUMBER NOT NULL PRIMARY KEY,
    pesel                NUMBER NOT NULL,
    model_and_brand_id   number not null,
    number_vin           Varchar2(30char),
    registration_number  varchar2(30char),
    vehicle_weight         number NOT NULL,
    production_date  DATE,
    insurance      VARCHAR2(50char),
    car_mileage number,
    current_technical_inspection varchar(50char),
    vehicle_load_capacity number not null,
    type_of_a_vehicle      varchar(50char),
    constraint DM_citizens_fk foreign key (pesel)
    references DM_citizens(pesel),
     constraint DM_Vehicle_brands_and_Models_fk2 foreign  key (model_and_brand_id)
    references DM_Vehicle_brands_and_Models(id));




alter table DM_vehicles modify number_vin Varchar2(30char);