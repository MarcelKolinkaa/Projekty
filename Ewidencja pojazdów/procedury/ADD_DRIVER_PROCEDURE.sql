CREATE OR REPLACE PROCEDURE MARCEL_DB.P_ADD_DRIVER (
    p_id          NUMBER,
    p_pesel       NUMBER,
    p_vehicle_id  NUMBER,
    p_b           DATE
)
AS
BEGIN
    INSERT INTO MARCEL_DB.DM_DRIVERS (ID, PESEL, VEHICLE_ID, B)
    VALUES (p_id, p_pesel, p_vehicle_id, p_b);

    COMMIT;
END;