CREATE OR REPLACE VIEW MARCEL_DB.V_VEHICLE_ANALYTICS AS
SELECT 
    v.id AS vehicle_id,
    v.registration_number,
    cb.name_of_brand,
    cb.model_name,
    c.name AS owner_first_name,
    c.last_name AS owner_last_name,
    v.type_of_a_vehicle,
    v.vehicle_weight,
    v.vehicle_load_capacity,
    v.car_mileage,
    v.production_date
FROM 
    MARCEL_DB.dm_vehicles v
    JOIN MARCEL_DB.dm_citizens c ON v.pesel = c.pesel
    JOIN MARCEL_DB.dm_vehicle_brands_and_models cb ON v.model_and_brand_id = cb.id;