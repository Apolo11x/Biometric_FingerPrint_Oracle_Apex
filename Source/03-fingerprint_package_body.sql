
--  5. Create the package body to implement the fingerprint functions
CREATE OR REPLACE PACKAGE BODY fingerprint_package AS
    FUNCTION enroll_fingerprint(p_fingerprint BLOB) RETURN NUMBER IS
    BEGIN
        INSERT INTO fingerprint_data (fingerprint)
        VALUES (p_fingerprint);
        RETURN 1;
    END enroll_fingerprint;

    FUNCTION verify_fingerprint(p_fingerprint BLOB) RETURN NUMBER IS
        v_match_count NUMBER;
    BEGIN
        SELECT COUNT(*)
        INTO v_match_count
        FROM fingerprint_data
        WHERE fingerprint = p_fingerprint;
        RETURN v_match_count;
    END verify_fingerprint;
END fingerprint_package;
```