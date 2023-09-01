CREATE OR REPLACE PACKAGE utils AS
    FUNCTION calculate_timestamp_difference_sec(
        p_timestamp1 IN TIMESTAMP,
        p_timestamp2 IN TIMESTAMP
    ) RETURN NUMBER;
END utils;
/

CREATE OR REPLACE PACKAGE BODY utils AS
    FUNCTION calculate_timestamp_difference_sec(
        p_timestamp1 IN TIMESTAMP,
        p_timestamp2 IN TIMESTAMP
    ) RETURN NUMBER IS
        v_seconds_diff NUMBER;

    BEGIN
        v_seconds_diff := EXTRACT(SECOND FROM (p_timestamp2 - p_timestamp1)) +
                        EXTRACT(MINUTE FROM (p_timestamp2 - p_timestamp1)) * 60 +
                        EXTRACT(HOUR FROM (p_timestamp2 - p_timestamp1)) * 3600 + 
                        EXTRACT(DAY FROM (p_timestamp2 - p_timestamp1)) * 86400;
        RETURN v_seconds_diff;
    END calculate_timestamp_difference_sec;
END utils;
/