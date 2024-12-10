CREATE OR REPLACE PROCEDURE MARCEL_DB.P_UPDATE_INSURANCE_OC (
    p_vehicle_id    NUMBER,
    p_new_number_oc NUMBER
)
AS
BEGIN
    UPDATE MARCEL_DB.DM_INSURANCE
       SET NUMBER_OC = p_new_number_oc
     WHERE VEHICLE_ID = p_vehicle_id;

    COMMIT;
END;
