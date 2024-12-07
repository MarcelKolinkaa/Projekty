SELECT
    v.number_vin,
    v.model_and_brand_id,
    v.type_of_a_vehicle,
    m.mileage,
    m.period
FROM
    dm_vehicles     v
    inner JOIN dm_car_mileage  m ON m.vehicle_id = v.id  
    where m.mileage <( SELECT
    AVG(m.mileage)
FROM
    dm_car_mileage m where to_char(m.period,'YYYY') = '2019' )
AND to_char(m.period,'YYYY') = 2020;
