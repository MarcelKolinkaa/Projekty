CREATE OR REPLACE VIEW MARCEL_DB.V_VEHICLE_INCIDENT_COUNT AS
SELECT 
    cb.name_of_brand,
    cb.model_name,
    COUNT(DISTINCT h.incident_id) AS total_incidents
FROM 
    MARCEL_DB.dm_history_of_vehicle h
    JOIN MARCEL_DB.dm_vehicles v ON h.vehicle_id = v.id
    JOIN MARCEL_DB.dm_vehicle_brands_and_models cb ON v.model_and_brand_id = cb.id
GROUP BY 
    cb.name_of_brand, 
    cb.model_name;