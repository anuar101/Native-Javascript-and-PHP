<?php
/*
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
----- initialise variables -----
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
*/
$enable_deleting = array(
    'supplier_delete' => false
);
if (isset($api_data['access_mode'])) {
    switch ($api_data['access_mode']) {
        case 'supplier_delete':
            $enable_deleting['supplier_delete'] = true;
            break;
    }
}


/*
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
----- delete supplier -----
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
*/
$sql = '';
$results_delete_data['supplier_delete']['total_input'] = 0;
$results_delete_data['supplier_delete']['total_success'] = 0;
$results_delete_data['supplier_delete']['total_failure'] = 0;
$results_delete_data['supplier_delete']['failure_indexes'] = array();
$results_delete_data['supplier_delete']['is_success'] = false;

if ($enable_deleting['supplier_delete'] == true) {
    $results_delete_data['supplier_delete']['total_input']++;

    $sql = str_replace(
        array(
            '[RECORD_ID]' 
        ), 
        array(
            addslashes($api_data['supplier_form_data']['record_id'])
        ), 
        $sql_templates['delete_supplier']
    );

    $results = executeDbQuery($sql, $db_connection);
    if ($results['error'] == 'null') {
        $results_delete_data['supplier_delete']['total_success']++;
    } else {
        $results_delete_data['supplier_delete']['total_failure']++;
    }

    if ($results_delete_data['supplier_delete']['total_input'] == $results_delete_data['supplier_delete']['total_success']) {
        $results_delete_data['supplier_delete']['is_success'] = true;
    }
}


/*
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
----- process update data results -----
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
*/
$total_overall_input = count($results_delete_data);

$total_overall_success = 0;
foreach ($results_delete_data as $key1 => $value1) {
    if ($value1['is_success'] == true) {
        $total_overall_success++;
    }
}

if ($total_overall_input == $total_overall_success) {
    $api_response['error'] = 'null';
} else {
    $api_response['error'] = '10040';
}

$api_response['message'] = 'null';

$api_response['data'] = array();

if (isset($api_data['access_mode'])) {
    switch ($api_data['access_mode']) {
        case 'supplier_delete':
            break;
    }
}
?>