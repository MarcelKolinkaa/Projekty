SELECT
    model_and_brand_id,
    number_vin,
    vehicle_weight,
    vehicle_load_capacity
FROM
    dm_vehicles
WHERE
    vehicle_weight > 1743;