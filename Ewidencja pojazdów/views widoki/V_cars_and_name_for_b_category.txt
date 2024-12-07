
create view V_cars_and_name_for_b_category as 
WITH temp AS (
    SELECT
        c.name,
        c.last_name,
        d.pesel,
        i.number_oc,
        d.b
    FROM
        dm_drivers         d
        LEFT JOIN dm_citizens        c ON d.pesel = c.pesel
        LEFT JOIN dm_insurance       i ON d.vehicle_id = i.vehicle_id
    WHERE
        number_oc IS NOT NULL
)
SELECT DISTINCT
    a.name,
    a.last_name,
    a.pesel,
    
    b.number_of_vehicles
FROM
         temp a
    INNER JOIN (
        SELECT
            pesel,
            COUNT(pesel) AS number_of_vehicles
        FROM
            temp
        GROUP BY
            pesel
    ) b ON ( a.pesel = b.pesel );