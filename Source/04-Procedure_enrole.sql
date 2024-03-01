--  2. Create a PL/SQL procedure to enroll a fingerprint
CREATE OR REPLACE PROCEDURE enroll_fingerprint(p_fingerprint BLOB) IS   
BEGIN
    IF fingerprint_package.enroll_fingerprint(p_fingerprint) = 1 THEN
        DBMS_OUTPUT.PUT_LINE('Fingerprint enrolled successfully');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Failed to enroll fingerprint');
    END IF;
END enroll_fingerprint;
```