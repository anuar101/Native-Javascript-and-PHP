<?php
$config['path']['app_folder'] = $_SERVER['DOCUMENT_ROOT'] . '/project_1/';
$config['path']['app_folder'] = str_replace('/', '\\', $config['path']['app_folder']);
$config['path']['log_folder'] = $config['path']['app_folder'] . 'logs\\';
$config['path']['base_url'] = $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . '/';
$config['path']['app_url'] = $config['path']['base_url'] . '/project_1/';
$config['path']['script_url'] = substr($config['path']['base_url'], 0, strlen($config['path']['base_url']) - 1) . $_SERVER['REQUEST_URI'];

$config['path']['base_script_url'] = $config['path']['script_url'];
$temp_array = explode('?', $config['path']['base_script_url']);
if (count($temp_array) == 2) {
    $config['path']['base_script_url'] = $temp_array[0];
}

$config['path']['upload_folder'] = $config['path']['app_folder'] . 'images\\supplier\\upload\\';

$config['input_data']['php_input'] = stripslashes(trim(file_get_contents('php://input')));
$config['input_data']['php_input'] = str_replace('{"api_data":"', '', $config['input_data']['php_input']);
$config['input_data']['php_input'] = str_replace('"}"}', '"}', $config['input_data']['php_input']);
$config['input_data']['php_input'] = str_replace('api_data={"', '{"', $config['input_data']['php_input']);
$config['input_data']['request'] = json_encode($_REQUEST);

$config['db']['host_name'] = '';
$config['db']['db_name'] = '';
$config['db']['user_name'] = '';
$config['db']['password'] = '';

$config['switch']['log_input_data']['php_input'] = 'off';
$config['switch']['log_input_data']['request'] = 'on';
$config['switch']['debug_mode']['backend'] = 'off';
$config['switch']['debug_mode']['frontend'] = 'on';

$config['supplier']['path']['log_folder'] = $config['path']['log_folder'] . 'supplier\\';
$config['supplier']['path']['log_file_name'] = 'supplier.log';
$config['supplier']['form']['file_name'] = 'client_form_supplier.php';
$config['supplier']['form']['default_record_per_page'] = 25;
$config['supplier']['form']['default_page_number'] = 1;
$config['supplier']['form']['default_order_by_field_name'] = 'id ASC';

include('core/config_mime_types.php');

// --- get general configuration info from external system configuration file --- //
$system_config_file_path = $config['path']['app_folder'] . 'configuration.php';
if (file_exists($system_config_file_path)) {
    include($system_config_file_path); /* note: include configuration file only when page not initialised by joomla. */
    $system_config = new JConfig();
    $config['db']['host_name'] = $system_config->host;
    $config['db']['db_name'] = $system_config->db;
    $config['db']['user_name'] = $system_config->user;
    $config['db']['password'] = $system_config->password;
    $config['path']['log_folder'] = $system_config->log_path . '\\';
} else {
    echo "\n";
    echo "\n";
    echo 'Missing configuration info. Program aborted.';
    echo "\n";
    echo "\n";
    exit;
}

$config['date']['current_date_time'] = date('Y-m-d H:i:s');
$config['date']['current_date'] = date('Y-m-d');
$config['date']['current_time'] = date('H:i:s');
?>