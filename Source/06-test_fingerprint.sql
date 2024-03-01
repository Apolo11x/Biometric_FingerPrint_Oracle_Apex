--  4. Test the fingerprint enrollment and verification procedures
DECLARE
    v_fingerprint BLOB;
BEGIN
    -- Enroll a fingerprint
    v_fingerprint := utl_raw.cast_to_raw('fingerprint_data');
    enroll_fingerprint(v_fingerprint);

    -- Verify the enrolled fingerprint
    verify_fingerprint(v_fingerprint);
END;
