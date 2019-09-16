<?php
    $api_response = array();
    $api_response['error'] = array();
    $api_response['message'] = array();
    $api_response['data'] = array();

    $api_data_string = '';
    if (isset($_REQUEST['api_data']) && strlen(trim($_REQUEST['api_data'])) > 0) {
        $api_data_string = trim($_REQUEST['api_data']);
    } else {
        if (strlen($config['input_data']['php_input']) > 0) {
            $api_data_string = $config['input_data']['php_input'];
        }
    }

    if ($api_data_string !== '') {
        $results = getApiData($api_data_string);
        $api_data_string = $results['api_data_string'];
        $api_data = $results['api_data'];

        if (json_decode($api_data_string, true) == true) {
            if (isset($api_data['username'])) {
                $login_user_info = getLoginUserInfo($db_connection, $sql_templates, $api_data['username'], $api_data['password']);
                if (isset($login_user_info['user_id'])) {
                    if (isset($api_data['form_operation'])) {
                        $valid_operations = array('save', 'retrieve', 'update', 'delete');
                        if (in_array($api_data['form_operation'], $valid_operations)) {
                            switch ($api_data['form_operation']) {
                                case 'save':
                                    include($config['path']['app_folder'] . 'includes\vic\system\supplier\script_module_save_data.php');
                                    break;
                                case 'retrieve':
                                    include($config['path']['app_folder'] . 'includes\vic\system\supplier\script_module_retrieve_data.php');
                                    break;
                                case 'update':
                                    include($config['path']['app_folder'] . 'includes\vic\system\supplier\script_module_update_data.php');
                                    break;
                                case 'delete':
                                    include($config['path']['app_folder'] . 'includes\vic\system\supplier\script_module_delete_data.php');
                                    break;
                            }
                            if (isset($_REQUEST['return_url']) && strlen($_REQUEST['return_url']) > 0) {
                                header('Location: ' . $_REQUEST['return_url']);
                                exit;
                            }
                        } else {
                            $api_response['error'][] = '30060';
                            $api_response['message'][] = 'Invalid operation';
                            $api_response['data'][] = array();
                        }
                    } else {
                        $api_response['error'][] = '30050';
                        $api_response['message'][] = 'Missing operation';
                        $api_response['data'][] = array();
                    }
                } else {
                    $api_response['error'][] = '30040';
                    $api_response['message'][] = 'Invalid access';
                    $api_response['data'][] = array();
                }
            } else {
                $api_response['error'][] = '30030';
                $api_response['message'][] = 'Missing access key';
                $api_response['data'][] = array();
            }

        } else {
            $api_response['error'][] = '30020';
            $api_response['message'][] = 'Invalid data format';
            $api_response['data'][] = array();
        }
    } else {
        $api_response['error'][] = '30010';
        $api_response['message'][] = 'Empty data';
        $api_response['data'][] = array();
    }

    echo json_encode($api_response);
    exit;
?>