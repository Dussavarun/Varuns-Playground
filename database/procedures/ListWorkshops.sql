
USE workshop_lab;

DROP PROCEDURE IF EXISTS ListWorkshops;

CREATE PROCEDURE ListWorkshops()
BEGIN
    SELECT
        workshop_id,
        workshop_name,
        workshop_date,
        available_seats
    FROM workshops
    WHERE available_seats > 0
    ORDER BY workshop_date;
END;

