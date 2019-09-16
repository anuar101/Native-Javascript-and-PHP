<?php
set_time_limit(3600);


/*
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
----- include files -----
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
*/
include('core/functions_general.php');
include('functions_module_crud.php');
include('sql_templates.php');
require('config_module.php');


if ($config['switch']['debug_mode']['backend'] == 'on') {
    error_reporting(E_ALL);
}


/*
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
----- initialise variables -----
----- ----- ----- ----- ----- ----- ----- ----- ----- -----
*/
if (count($config) > 0) {
    $db_connection = mysql_connect(
        $config['db']['host_name'], 
        $config['db']['user_name'], 
        $config['db']['password']
    );
    if ($db_connection) {
        mysql_select_db($config['db']['db_name'], $db_connection);
    }
}


include('core/functions_module_user_access.php');


if (isset($_GET['data_migration']) && $_GET['data_migration'] == 'y') {
    include('data_migration.php');
}


logInputData(
    $config['switch']['log_input_data'], 
    $config['input_data'], 
    $config['supplier']['path']['log_folder'], 
    $config['supplier']['path']['log_file_name'] 
);


if (isset($_REQUEST['api_mode'])) {
    /*
    ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
    ----- process api access -----
    ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
    */
    include('core/script_module_process_api_access.php');
} else {
    /*
    ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
    ----- process normal access -----
    ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
    */


    /*
    ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
    ----- initialise variables -----
    ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
    */
    $app_response = array();
    $app_response['error'] = array();
    $app_response['message'] = array();
    $app_response['data'] = array();
    $supplier_form_system_info = array();
    $login_user_info = array();

    $supplier_form_system_info['base_url'] = $config['path']['base_url'];
    $supplier_form_system_info['app_url'] = $config['path']['app_url'];
    $supplier_form_system_info['script_url'] = $config['path']['script_url'];

    // ----- check login user access info -----
    $current_user_info = JFactory::getUser();
    if (isset($current_user_info->username) && isset($current_user_info->password)) {
        $credential_info = array();
        $credential_info['username'] = $current_user_info->username;
        $credential_info['password'] = $current_user_info->password;
    } elseif (isset($_REQUEST['username']) && isset($_REQUEST['password'])) {
        $credential_info = array();
        $credential_info['username'] = $_REQUEST['username'];
        $credential_info['password'] = $_REQUEST['password'];
    } else {
        $credential_info = null;
    }

    if (is_array($credential_info)) {
        $login_user_info = getLoginUserInfo($db_connection, $sql_templates, $credential_info['username'], $credential_info['password']);
        if (isset($login_user_info['user_id'])) {
            //continue script...
        } else {
            $app_response['error'][] = '30040';
            $app_response['message'][] = 'Invalid access';
            $app_response['data'][] = array();
        }
    } else {
        $app_response['error'][] = '30030';
        $app_response['message'][] = 'Missing access key';
        $app_response['data'][] = array();
    }

    if (count($app_response['error']) > 0) {
        echo json_encode($app_response);
        exit;
    }

    $supplier_form_system_info['access_mode'] = 'list_view';
    if (isset($_REQUEST['access_mode'])) {
        $supplier_form_system_info['access_mode'] = $_REQUEST['access_mode'];
    }

    $login_user_info_in_json = json_encode($login_user_info);
    $supplier_form_system_info_in_json = json_encode($supplier_form_system_info);

    $supplier_form_record_list = '[]';

    // - this will be set suburb list 
    $supplier_suburb_form_record_list = '[]';

    // - this will be set supplier record list 
    $supplier_form_data_record_list = '[]';

    $default_record_per_page = $config['supplier']['form']['default_record_per_page'];
    $default_page_number = $config['supplier']['form']['default_page_number'];
    $default_order_by_field_name = $config['supplier']['form']['default_order_by_field_name'];
    $debug_mode = $config['switch']['debug_mode']['frontend'];


    /*
    ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
    ----- html form -----
    ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
    */
    include($config['supplier']['form']['file_name']);
}


if (count($config) > 0) {
    if ($db_connection) {
        mysql_close($db_connection);
    }
}
?>