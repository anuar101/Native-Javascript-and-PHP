<?php
function saveTableActivityLogInfo($db_connection, $input_data, $sql_templates) {
    $processing_results = array(
        'total_input' => 0, 
        'total_success' => 0, 
        'total_failure' => 0, 
        'is_success' => false, 
        'error' => array(), 
        'message' => array(), 
        'new_record_id' => null
    );

    $submitted_record_id = null;

    $new_record_id = null;
    if ($submitted_record_id == null) {
        $processing_results['total_input'] = 1;

        $sql = str_replace(
            array('[TABLE_NAME]'), 
            array('table_activity_log'), 
            $sql_templates['retrieve_table_status']
        );

        $results = executeDbQuery($sql, $db_connection);
        if ($results['error'] == 'null') {
            $r1 = mysql_fetch_array($results['data']);
            $new_record_id = $r1['Auto_increment'];
        } else {
            $processing_results['error'][] = $results['error'];
            $processing_results['message'][] = $results['message'];
        }

        if ($new_record_id != null) {
            $data_before_activity_in_json_text = json_encode($input_data['data_before_activity']);

            $sql = str_replace(
                array(
                    '[ID]', 
                    '[ACTIVITY_TYPE]', 
                    '[TARGET_TABLE]', 
                    '[TARGET_ID]', 
                    '[DATA_BEFORE_ACTIVITY]', 
                    '[USER_ID]', 
                    '[GROUP_ID]'
                ), 
                array(
                    addslashes($new_record_id), 
                    addslashes($input_data['activity_type']), 
                    addslashes($input_data['target_table']), 
                    addslashes($input_data['target_id']), 
                    addslashes($data_before_activity_in_json_text), 
                    addslashes($input_data['user_id']), 
                    addslashes($input_data['user_group_id'])
                ), 
                $sql_templates['insert_table_activity_log']
            );

            $results = executeDbQuery($sql, $db_connection);
            if ($results['error'] == 'null') {
                $processing_results['total_success']++;
            } else {
                $processing_results['total_failure']++;
                $processing_results['error'][] = $results['error'];
                $processing_results['message'][] = $results['message'];
            }
        }

        if ($processing_results['total_input'] == $processing_results['total_success']) {
            $processing_results['is_success'] = true;
        }
    }

    if ($new_record_id == null) {
        $new_record_id = $submitted_record_id;
    }

    $processing_results['new_record_id'] = $new_record_id;

    return $processing_results;
}
?>