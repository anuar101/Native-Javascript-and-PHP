<?php
$sql_templates = array();

$sql_templates['insert_table_activity_log'] = "
    INSERT INTO table_activity_log 
    (
        id, 
        activity_type,              target_table,         target_id, 
        data_before_activity, 
        user_id,                    group_id,             date_created 
    )
    VALUES 
    (
        '[RECORD_ID]', 
        '[ACTIVITY_TYPE]',          '[TARGET_TABLE]',     '[TARGET_ID]', 
        '[DATA_BEFORE_ACTIVITY]', 
        '[USER_ID]',                '[GROUP_ID]',         NOW() 
    );
";

$sql_templates['insert_supplier'] = "
    INSERT INTO ver_chronoforms_data_supplier_vic 
    (
        supplierid,
        suburbid,
        company_name,
        title,
        lastname,
        firstname,
        mobile,
        notes,
        address1,
        address2,
        suburb,
        state,
        postcode,
        phone,
        fax,
        email,
        website,
        date_created
    )
    VALUES 
    (
        '[SUPPLIERID]', 
        '[SUBURBID]', 
        '[COMPANY_NAME]', 
        '[TITLE]', 
        '[FIRSTNAME]', 
        '[LASTNAME]', 
        '[MOBILE]', 
        '[NOTES]', 
        '[ADDRESS1]', 
        '[ADDRESS2]', 
        '[SUBURB]', 
        '[STATE]', 
        '[POSTCODE]', 
        '[PHONE]', 
        '[FAX]', 
        '[EMAIL]', 
        '[WEBSITE]',
         NOW() 
    );
";

$sql_templates['retrieve_current_login_user_info'] = "
    SELECT 
        ver_users.username AS 'username', 
        ver_users.password AS 'password', 
        ver_users.id AS 'user_id', 
        ver_usergroups.id AS 'user_group_id', 
        ver_usergroups.title AS 'user_group_group_name', 
        ver_users.id AS 'employee_id',  
        IFNULL(ver_users.first_name, 'na') AS 'employee_first_name', 
        IFNULL(ver_users.last_name, 'na') AS 'employee_last_name' 
    FROM ver_users 
        LEFT JOIN ver_user_usergroup_map 
            ON ver_users.id = ver_user_usergroup_map.user_id 
        LEFT JOIN ver_usergroups 
            ON ver_user_usergroup_map.group_id = ver_usergroups.id 
    WHERE ver_users.username = '[USERNAME]' 
    AND ver_users.password = '[PASSWORD]' 
    LIMIT 1;
";

$sql_templates['retrieve_table_status'] = "
    SHOW TABLE STATUS LIKE '[TABLE_NAME]';
";

$sql_templates['retrieve_supplier_vic_by_company_name'] = "
    SELECT 
        cf_id AS id
    FROM ver_chronoforms_data_supplier_vic 
    WHERE date_deleted IS NULL 
    AND company_name = '[COMPANY_NAME]';
";

$sql_templates['retrieve_supplier_vic'] = "
    SELECT 
        cf_id AS id, 
        supplierid,
        suburbid,
        company_name,
        title,
        lastname,
        firstname,
        mobile,
        notes,
        address1,
        address2,
        suburb,
        state,
        postcode,
        phone,
        fax,
        email,
        website,
        date_created
    FROM ver_chronoforms_data_supplier_vic 
    WHERE date_deleted IS NULL 
    ORDER BY [ORDER_BY_FIELD_NAME] 
    LIMIT [PAGE_FIRST_RECORD_INDEX], [RECORD_PER_PAGE];
";

$sql_templates['retrieve_suburbs_vic'] = "
    SELECT 
        cf_id AS id,
        suburb,
        suburb_state,
        suburb_postcode,
        created_at
    FROM ver_chronoforms_data_suburbs_vic 
    WHERE deleted_at IS NULL 
    ORDER BY [ORDER_BY_FIELD_NAME] 
    LIMIT [PAGE_FIRST_RECORD_INDEX], [RECORD_PER_PAGE];
";

$sql_templates['retrieve_supplier_vic_32'] ="
    SELECT 
        cf_id AS id,
        suburb,
        suburb_state,
        suburb_postcode,
        created_at
    FROM ver_chronoforms_data_suburbs_vic 
    WHERE deleted_at IS NULL 
    AND (
        LOWER(suburb) LIKE '%[SEARCH_KEYWORD]%'
    )
    ORDER BY [ORDER_BY_FIELD_NAME] 
    LIMIT [PAGE_FIRST_RECORD_INDEX], [RECORD_PER_PAGE];
";

$sql_templates['retrieve_supplier_data'] = "
    SELECT 
        COUNT(*) AS total_record 
    FROM ver_chronoforms_data_supplier_vic 
    WHERE date_deleted IS NULL 
    AND (
        LOWER(company_name) LIKE '%[SEARCH_KEYWORD]%' 
        OR LOWER(address1) LIKE '%[SEARCH_KEYWORD]%'
        OR LOWER(mobile) LIKE '%[SEARCH_KEYWORD]%' 
        OR LOWER(phone) LIKE '%[SEARCH_KEYWORD]%' 
    );
";

$sql_templates['retrieve_supplier_data_1'] = "
    SELECT 
        cf_id AS id, 
        supplierid,
        suburbid,
        company_name,
        title,
        lastname,
        firstname,
        mobile,
        notes,
        address1,
        address2,
        suburb,
        state,
        postcode,
        phone,
        fax,
        email,
        website,
        date_created
    FROM ver_chronoforms_data_supplier_vic 
    WHERE date_deleted IS NULL 
    AND (
        LOWER(company_name) LIKE '%[SEARCH_KEYWORD]%' 
        OR LOWER(address1) LIKE '%[SEARCH_KEYWORD]%'
        OR LOWER(mobile) LIKE '%[SEARCH_KEYWORD]%' 
        OR LOWER(phone) LIKE '%[SEARCH_KEYWORD]%' 
    )
    ORDER BY [ORDER_BY_FIELD_NAME] 
    LIMIT [PAGE_FIRST_RECORD_INDEX], [RECORD_PER_PAGE];
";

$sql_templates['retrieve_update_supplier'] = "
    SELECT * 
    FROM ver_chronoforms_data_supplier_vic 
    WHERE date_deleted IS NULL 
    AND cf_id = '[RECORD_ID]';
";

$sql_templates['update_supplier'] = "
    UPDATE ver_chronoforms_data_supplier_vic SET 
        supplierid = '[SUPPLIERID]',
        suburbid = '[SUBURBID]',
        company_name = '[COMPANY_NAME]',
        title = '[TITLE]',
        lastname = '[FIRSTNAME]',
        firstname = '[LASTNAME]',
        mobile = '[MOBILE]',
        notes = '[NOTES]',
        address1 = '[ADDRESS1]', 
        address2 = '[ADDRESS2]',
        suburb = '[SUBURB]',
        state = '[STATE]', 
        postcode = '[POSTCODE]',
        phone = '[PHONE]',
        fax = '[FAX]', 
        email  = '[EMAIL]',
        website = '[WEBSITE]',
        date_modified = NOW() 
    WHERE cf_id = '[RECORD_ID]';
";

$sql_templates['delete_supplier'] = "
    UPDATE ver_chronoforms_data_supplier_vic SET 
    date_deleted = NOW() 
    WHERE cf_id = '[RECORD_ID]';
";
?>