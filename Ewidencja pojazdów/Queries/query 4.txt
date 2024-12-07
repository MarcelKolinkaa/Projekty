    
SELECT
    v.model_and_brand_id,
    v.type_of_a_vehicle,
    v.registration_number,
     to_char(i.date_of_a_incident , 'DD-MON-YYYY') ,
    v.current_technical_inspection
FROM
    dm_vehicles  v
    FULL JOIN dm_incident  i ON v.id = i.vehicles_id
WHERE
        v.current_technical_inspection = 'valid'
    AND i.date_of_a_incident BETWEEN '01.01.2021' AND '31.12.2021'
ORDER BY
    i.date_of_a_incident asc; 