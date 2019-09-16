<?php
/*
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
----- initialise variables -----
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
*/
$enable_retrieve = array(
    'supplier_list' => false, 
    'supplier_search_list' => false, 
    'supplier_section_list' => false
);
if (isset($api_data['access_mode'])) {
    switch ($api_data['access_mode']) {
        case 'supplier_list':
            $enable_retrieve['supplier_list'] = true;
            break;
        case 'supplier_search_list':
            $enable_retrieve['supplier_search_list'] = true;
            break;
        case 'supplier_section_list':
            $enable_retrieve['supplier_section_list'] = true;
            break;
    }
}

$supplier_form_record_total = 0;
$supplier_form_record_list = array();
$supplier_section_form_record_list = array();
$supplier_suburb_form_record_list = array();
$suburb_section_search_form_record_list = array();
$supplier_form_record = array();

/*
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
----- retrieve supplier_section_list -----
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
*/
$sql = '';
$results_retrieve_data['supplier_section_list']['is_success'] = true;
$results_retrieve_data['supplier_section_list']['total_record'] = 0;
if ($enable_retrieve['supplier_search_list'] == false || $enable_retrieve['supplier_list'] == true) {

    $page_first_record_index = ($api_data['page_number'] - 1) * $api_data['record_per_page'];

    $sql = str_replace(
        array(
        ), 
        array(
        ), 
        $sql_templates['retrieve_supplier_vic']
    );

    $results = executeDbQuery($sql, $db_connection);
    if ($results['error'] == 'null') {
        $r1 = mysql_fetch_array($results['data']);
        $supplier_form_record_total = $r1['total_record'];
    }


    $sql = str_replace(
        array(
            '[ORDER_BY_FIELD_NAME]', 
            '[PAGE_FIRST_RECORD_INDEX]', 
            '[RECORD_PER_PAGE]'
        ), 
        array(
            addslashes($api_data['order_by_field_name']), 
            addslashes($page_first_record_index), 
            addslashes($api_data['record_per_page'])
        ), 
        $sql_templates['retrieve_supplier_vic']
    );

    $results = executeDbQuery($sql, $db_connection);
    if ($results['error'] == 'null') {
        $results_retrieve_data['supplier_section_list']['is_success'] = true;

        while ($r1 = mysql_fetch_array($results['data'])) {
            $current_item_index = count($supplier_section_form_record_list);
            $supplier_section_form_record_list[$current_item_index]['record_id'] = $r1['id'];
            $supplier_section_form_record_list[$current_item_index]['company_name'] = $r1['company_name'] ?: '' ;
            $supplier_section_form_record_list[$current_item_index]['address1'] = $r1['address1'] ?: '' ;
            $supplier_section_form_record_list[$current_item_index]['phone'] = $r1['phone'] ?: '' ;
            $supplier_section_form_record_list[$current_item_index]['mobile'] = $r1['mobile'] ?: '' ;
            $supplier_section_form_record_list[$current_item_index]['supplierid'] = $r1['supplierid'] ?: '' ;
            $supplier_section_form_record_list[$current_item_index]['suburbid'] = $r1['suburbid'] ?: '' ;
            $supplier_section_form_record_list[$current_item_index]['company_name'] = $r1['company_name'] ?: '' ;
            $supplier_section_form_record_list[$current_item_index]['title'] = $r1['title'] ?: '' ;
            $supplier_section_form_record_list[$current_item_index]['last_name'] = $r1['lastname'] ?: '' ;
            $supplier_section_form_record_list[$current_item_index]['first_name'] = $r1['firstname'] ?: '' ;
            $supplier_section_form_record_list[$current_item_index]['notes'] = $r1['notes'] ?: '' ;
            $supplier_section_form_record_list[$current_item_index]['address1'] = $r1['address1'] ?: '' ;
            $supplier_section_form_record_list[$current_item_index]['address2'] = $r1['address2'] ?: '' ;
            $supplier_section_form_record_list[$current_item_index]['suburb'] = $r1['suburb'] ?: '' ;
            $supplier_section_form_record_list[$current_item_index]['state'] = $r1['state'] ?: '' ;
            $supplier_section_form_record_list[$current_item_index]['postcode'] = $r1['postcode'] ?: '' ;
            $supplier_section_form_record_list[$current_item_index]['phone'] = $r1['phone'] ?: '' ;
            $supplier_section_form_record_list[$current_item_index]['fax'] = $r1['fax'] ?: '' ;
            $supplier_section_form_record_list[$current_item_index]['email'] = $r1['email'] ?: '' ;
            $supplier_section_form_record_list[$current_item_index]['website'] = $r1['website'] ?: '' ;
            $supplier_section_form_record_list[$current_item_index]['date_created'] = $r1['date_created'] ?: '' ;
        }
    }

    $sql = str_replace(
        array(
            '[ORDER_BY_FIELD_NAME]', 
            '[PAGE_FIRST_RECORD_INDEX]', 
            '[RECORD_PER_PAGE]'
        ), 
        array(
            addslashes($api_data['order_by_field_name']), 
            addslashes($page_first_record_index), 
            addslashes($api_data['record_per_page'])
        ), 
        $sql_templates['retrieve_suburbs_vic']
    );

    $results = executeDbQuery($sql, $db_connection);
    if ($results['error'] == 'null') {

        $results_retrieve_data['supplier_list']['is_success'] = true;

        while ($r1 = mysql_fetch_array($results['data'])) {

            $current_item_index = count($supplier_suburb_form_record_list);
            $supplier_suburb_form_record_list[$current_item_index]['suburb_list'] = [
                'suburb_state' => $r1['suburb_state'],
                'suburb_id' => $r1['id'] ,
                'suburb_postcode' => $r1['suburb_postcode'],
                'suburb' => $r1['suburb']
            ];

        }
    }
}

/*
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
----- retrieve supplier_search_list -----
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
*/
$sql = '';
$results_retrieve_data['supplier_search_list']['is_success'] = true;
$results_retrieve_data['supplier_search_list']['total_record'] = 0;

if ($enable_retrieve['supplier_search_list'] == true || $enable_retrieve['supplier_list'] == true) {
    $page_first_record_index = ($api_data['page_number'] - 1) * $api_data['record_per_page'];

    $sql = str_replace(
        array(
            '[SEARCH_KEYWORD]'
        ), 
        array(
            addslashes(strtolower($api_data['search_keyword']))
        ), 
        $sql_templates['retrieve_supplier_data']
    );

    $results = executeDbQuery($sql, $db_connection);
    if ($results['error'] == 'null') {
        $r1 = mysql_fetch_array($results['data']);
        $supplier_form_record_total = $r1['total_record'];
    }

    $sql = str_replace(
        array(
            '[SEARCH_KEYWORD]', 
            '[ORDER_BY_FIELD_NAME]', 
            '[PAGE_FIRST_RECORD_INDEX]', 
            '[RECORD_PER_PAGE]'
        ), 
        array(
            addslashes(strtolower($api_data['search_keyword'])), 
            addslashes($api_data['order_by_field_name']), 
            addslashes($page_first_record_index), 
            addslashes($api_data['record_per_page'])
        ), 
        $sql_templates['retrieve_supplier_data_1']
    );

    $results = executeDbQuery($sql, $db_connection);
    if ($results['error'] == 'null') {
        $results_retrieve_data['supplier_search_list']['is_success'] = true;

        while ($r1 = mysql_fetch_array($results['data'])) {
            $current_item_index = count($supplier_form_record_list);
            $supplier_form_record_list[$current_item_index]['record_id'] = $r1['id'];
            $supplier_form_record_list[$current_item_index]['company_name'] = $r1['company_name'] ?: '' ;
            $supplier_form_record_list[$current_item_index]['address1'] = $r1['address1'] ?: '' ;
            $supplier_form_record_list[$current_item_index]['phone'] = $r1['phone'] ?: '' ;
            $supplier_form_record_list[$current_item_index]['mobile'] = $r1['mobile'] ?: '' ;
            $supplier_form_record_list[$current_item_index]['supplierid'] = $r1['supplierid'] ?: '' ;
            $supplier_form_record_list[$current_item_index]['suburbid'] = $r1['suburbid'] ?: '' ;
            $supplier_form_record_list[$current_item_index]['company_name'] = $r1['company_name'] ?: '' ;
            $supplier_form_record_list[$current_item_index]['title'] = $r1['title'] ?: '' ;
            $supplier_form_record_list[$current_item_index]['lastname'] = $r1['lastname'] ?: '' ;
            $supplier_form_record_list[$current_item_index]['firstname'] = $r1['firstname'] ?: '' ;
            $supplier_form_record_list[$current_item_index]['notes'] = $r1['notes'] ?: '' ;
            $supplier_form_record_list[$current_item_index]['address1'] = $r1['address1'] ?: '' ;
            $supplier_form_record_list[$current_item_index]['address2'] = $r1['address2'] ?: '' ;
            $supplier_form_record_list[$current_item_index]['suburb'] = $r1['suburb'] ?: '' ;
            $supplier_form_record_list[$current_item_index]['state'] = $r1['state'] ?: '' ;
            $supplier_form_record_list[$current_item_index]['postcode'] = $r1['postcode'] ?: '' ;
            $supplier_form_record_list[$current_item_index]['phone'] = $r1['phone'] ?: '' ;
            $supplier_form_record_list[$current_item_index]['fax'] = $r1['fax'] ?: '' ;
            $supplier_form_record_list[$current_item_index]['email'] = $r1['email'] ?: '' ;
            $supplier_form_record_list[$current_item_index]['website'] = $r1['website'] ?: '' ;
            $supplier_form_record_list[$current_item_index]['date_created'] = $r1['date_created'] ?: '' ;
        }
    }
}

/*
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
----- process retrieve data results -----
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
*/
$total_overall_input = count($results_retrieve_data);

$total_overall_success = 0;
foreach ($results_retrieve_data as $key1 => $value1) {
    if ($value1['is_success'] == true) {
        $total_overall_success++;
    }
}

if ($total_overall_input == $total_overall_success) {
    $api_response['error'] = 'null';
} else {
    $api_response['error'] = '10020';
}

$api_response['message'] = 'null';

$api_response['data'] = array();

if (isset($api_data['access_mode'])) {
    switch ($api_data['access_mode']) {
        case 'supplier_list':
            $api_response['data'] = array(
                'supplier_form_record_total' => $supplier_form_record_total, 
                'supplier_form_record_list' => $supplier_form_record_list,
                'supplier_section_form_record_list' => $supplier_section_form_record_list,
                'supplier_suburb_form_record_list' => $supplier_suburb_form_record_list
            );
            break;
        case 'supplier_section_list':
            $api_response['data'] = array(
                'supplier_form_record_total' => $supplier_form_record_total, 
                'supplier_form_record_list' => $supplier_form_record_list,
                'supplier_suburb_form_record_list' => $supplier_suburb_form_record_list
            );
            break;
        case 'supplier_search_list':
            $api_response['data'] = array(
                'supplier_form_record_total' => $supplier_form_record_total, 
                'supplier_section_form_record_list' => $supplier_form_record_list,
                'supplier_form_record_list' => $supplier_form_record_list,
                'supplier_suburb_form_record_list' => $supplier_suburb_form_record_list
            );
            break;
    }
}
?>