--  3. Create a PL/SQL procedure to verify a fingerprint

CREATE OR REPLACE PROCEDURE verify_fingerprint(p_fingerprint BLOB) IS
    v_match_count NUMBER;
BEGIN
    v_match_count := fingerprint_package.verify_fingerprint(p_fingerprint);
    IF v_match_count > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Fingerprint verified successfully');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Fingerprint verification failed');
    END IF;
END verify_fingerprint;
