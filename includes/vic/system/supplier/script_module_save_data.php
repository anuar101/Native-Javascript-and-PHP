<?php
/*
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
----- initialise variables -----
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
*/
$enable_saving = array(
    'supplier_section_save' => false
);
if (isset($api_data['access_mode'])) {
    switch ($api_data['access_mode']) {
        case 'supplier_section_save':
            $enable_saving['supplier_section_save'] = true;
            break;
    }
}

$new_record_id = null;
$sql = '';
$results_save_data['supplier_section_save']['total_input'] = 0;
$results_save_data['supplier_section_save']['total_success'] = 0;
$results_save_data['supplier_section_save']['total_failure'] = 0;
$results_save_data['supplier_section_save']['failure_indexes'] = array();
$results_save_data['supplier_section_save']['is_success'] = false;

$submitted_record_id = null;
if ($enable_saving['supplier_section_save'] == true) {
    
    $submitted_record_id = null;
    $submitted_company_name = $api_data['supplier_form_data']['company_name'];

    $sql = str_replace(
        array(
            '[COMPANY_NAME]'
        ), 
        array(
            addslashes($submitted_company_name)
        ), 
        $sql_templates['retrieve_supplier_vic_by_company_name']
    );

    $results = executeDbQuery($sql, $db_connection);
    if ($results['error'] == 'null') {
        if ($results['num_rows'] > 0) {
            while ($r1 = mysql_fetch_array($results['data'])) {
                $submitted_record_id = $r1['id'];
            }
        }
    }
    $new_record_id = null;
    if ($submitted_record_id == null) {

        $results_save_data['supplier_section_save']['total_input'] = 1;

        $sql = str_replace(
            array('[TABLE_NAME]'), 
            array('ver_chronoforms_data_supplier_vic'), 
            $sql_templates['retrieve_table_status']
        );

        $results = executeDbQuery($sql, $db_connection);
        if ($results['error'] == 'null') {
            $r1 = mysql_fetch_array($results['data']);
            $new_record_id = $r1['Auto_increment'];
        } else {
            $app_response['error'][] = $results['error'];
            $app_response['message'][] = $results['message'];
        }

        if ($new_record_id != null) {
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
                    '[WEBSITE]'
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
                    addslashes($api_data['supplier_form_data']['website'])
                ), 
                $sql_templates['insert_supplier']
            );

            $results = executeDbQuery($sql, $db_connection);
            if ($results['error'] == 'null') {
                $results_save_data['supplier_section_save']['total_success']++;
            } else {
                $results_save_data['supplier_section_save']['total_failure']++;
            }
        }

        if ($results_save_data['supplier_section_save']['total_input'] == $results_save_data['supplier_section_save']['total_success']) {
            $results_save_data['supplier_section_save']['is_success'] = true;
        }

    }

    if ($new_record_id == null) {
        $new_record_id = $submitted_record_id;
    }
}


/*
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
----- process save data results -----
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
*/
$total_overall_input = count($results_save_data);

$total_overall_success = 0;
foreach ($results_save_data as $key1 => $value1) {
    if ($value1['is_success'] == true) {
        $total_overall_success++;
    }
}

if ($total_overall_input == $total_overall_success) {
    $api_response['error'] = 'null';
} else {
    $api_response['error'] = '10010';
}

$api_response['message'] = 'null';

if ($api_response['error'] != 'null') {
    if ($submitted_record_id != null) {
        $api_response['error'] = '10110';
        $api_response['message'] = 'Duplicate data found. Please try other entry.';
    }
}

$api_response['data'] = array();

if (isset($api_data['access_mode'])) {
    switch ($api_data['access_mode']) {
        case 'supplier_section_save':
            $api_response['data']['new_record_id'] = $new_record_id;
            $api_response['data']['new_date_created'] = $config['date']['current_date_time'];
            break;
    }
}
?>