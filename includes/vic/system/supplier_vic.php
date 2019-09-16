<?php
$app_base_path = $_SERVER['DOCUMENT_ROOT'] . '/project_1/';
include($app_base_path . 'includes/vic/custom_processes_user.php');

$current_signed_in_user_access_profiles = $custom_configs_user['user_access_profiles'][$current_signed_in_user_group_key]['supplier-vic'];
?>


<?php
include('supplier/main.php');
?>