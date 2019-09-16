<?php
/*
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
----- initialise variables -----
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
*/
$enable_updating = array(
    'supplier_section_save' => false
);
if (isset($api_data['access_mode'])) {
    switch ($api_data['access_mode']) {
        case 'supplier_section_save':
            $enable_updating['supplier_section_save'] = true;
            break;
    }
}

$previous_supplier_record = array();

/*
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
----- update supplier -----
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
*/
$sql = '';
$results_update_data['supplier_section_save']['total_input'] = 0;
$results_update_data['supplier_section_save']['total_success'] = 0;
$results_update_data['supplier_section_save']['total_failure'] = 0;
$results_update_data['supplier_section_save']['failure_indexes'] = array();
$results_update_data['supplier_section_save']['is_success'] = false;

if ($enable_updating['supplier_section_save'] == true) {
    $sql = str_replace(
        array(
            '[RECORD_ID]'
        ), 
        array(
            addslashes($api_data['supplier_form_data']['record_id'])
        ), 
        $sql_templates['retrieve_update_supplier']
    );

    $results = executeDbQuery($sql, $db_connection);
    if ($results['error'] == 'null') {
        $r1 = mysql_fetch_array($results['data']);
        foreach ($r1 as $key1 => $value1) {
            if (! is_numeric($key1)) {
                $previous_supplier_record[$key1] = $value1;
            }
        }
    }

    $input_data = array(
        'activity_type' => 'update', 
        'target_table' => 'sample_table_1', 
        'target_id' => $api_data['supplier_form_data']['record_id'], 
        'data_before_activity' => $previous_supplier_record, 
        'user_id' => $login_user_info['user_id'], 
        'user_group_id' => $login_user_info['user_group_id']
    );
    $processing_results = saveTableActivityLogInfo($db_connection, $input_data, $sql_templates);

    $results_update_data['supplier_section_save']['total_input'] = 1;

    $sql = str_replace(
            array(
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
                '[RECORD_ID]'
            ), 
            array(
                addslashes($api_data['supplier_form_data']['supplierid']),
                addslashes($api_data['supplier_form_data']['suburbid']),
                addslashes($api_data['supplier_form_data']['company_name']),
                addslashes($api_data['supplier_form_data']['title']),
                addslashes($api_data['supplier_form_data']['firstname']),
                addslashes($api_data['supplier_form_data']['lastname']),
                addslashes($api_data['supplier_form_data']['mobile']),
                addslashes($api_data['supplier_form_data']['notes']),
                addslashes($api_data['supplier_form_data']['address1']),
                addslashes($api_data['supplier_form_data']['address2']),
                addslashes($api_data['supplier_form_data']['suburb']),
                addslashes($api_data['supplier_form_data']['state']),
                addslashes($api_data['supplier_form_data']['postcode']),
                addslashes($api_data['supplier_form_data']['phone']),
                addslashes($api_data['supplier_form_data']['fax']),
                addslashes($api_data['supplier_form_data']['email']),
                addslashes($api_data['supplier_form_data']['website']),
                addslashes($api_data['supplier_form_data']['record_id'])
            ), 
            $sql_templates['update_supplier']
    );

    $results = executeDbQuery($sql, $db_connection);
    if ($results['error'] == 'null') {
        $results_update_data['supplier_section_save']['total_success']++;
    } else {
        $results_update_data['supplier_section_save']['total_failure']++;
    }

    if ($results_update_data['supplier_section_save']['total_input'] == $results_update_data['supplier_section_save']['total_success']) {
        $results_update_data['supplier_section_save']['is_success'] = true;
    }
}

/*
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
----- process update data results -----
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
*/
$total_overall_input = count($results_update_data);

$total_overall_success = 0;
foreach ($results_update_data as $key1 => $value1) {
    if ($value1['is_success'] == true) {
        $total_overall_success++;
    }
}

if ($total_overall_input == $total_overall_success) {
    $api_response['error'] = 'null';
} else {
    $api_response['error'] = '10030';
}

$api_response['message'] = 'null';

$api_response['data'] = array();

if (isset($api_data['access_mode'])) {
    switch ($api_data['access_mode']) {
        case 'supplier_section_save':
            break;
    }
}
?>