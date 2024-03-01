--  4. Create a package to store the fingerprint functions
CREATE OR REPLACE PACKAGE fingerprint_package AS
    FUNCTION enroll_fingerprint(p_fingerprint BLOB) RETURN NUMBER;
    FUNCTION verify_fingerprint(p_fingerprint BLOB) RETURN NUMBER;
END fingerprint_package;
