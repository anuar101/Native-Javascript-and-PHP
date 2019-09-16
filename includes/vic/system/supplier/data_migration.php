<?php
$enable_migration = array(
    'sample_table' => false 
);

$table_names = array(
    'sample_table' => 'sample_table_1'
);

$id_field_names = array(
    'sample_table' => 'id' 
);

$migration_results = array();


foreach ($enable_migration as $key1 => $value1) {
    if ($value1 == true) {
        $sql = "SELECT * FROM " . $table_names[$key1] . " ORDER BY " . $id_field_names[$key1] . " ";
        $results = executeDbQuery($sql, $db_connection);

        $total_record_outdated = 0;
        $total_record_updated = 0;
        $failure_indexes = array();

        if ($results['error'] == 'null') {
            while ($r1 = mysql_fetch_array($results['data'])) {
                $temp_array = array();
                $current_ref_name = "";
                $new_ref_name = "";
                $update_fields = array();
                $current_update_sql = "";

                if (isset($r1['ref_name'])) {
                    if (substr($r1['ref_name'], 0, 3) == 'IVR') {
                        $current_ref_name = $r1['ref_name'];
                        $new_ref_name = 'IRV' . substr($r1['ref_name'], 3);
                        $update_fields[] = "ref_name = '" . $new_ref_name . "'";
                    }
                }

                if (count($update_fields) > 0) {
                    $total_record_outdated++;
                    $current_update_sql = "
                        UPDATE " . $table_names[$key1] . " 
                        SET 
                        " . implode(', ', $update_fields) . " 
                        WHERE " . $id_field_names[$key1] . " = '" . $r1[$id_field_names[$key1]] . "'; 
                    ";

                    $results2 = executeDbQuery($current_update_sql, $db_connection);
                    if ($results2['error'] == 'null') {
                        $total_record_updated++;
                    } else {
                        $failure_indexes[$r1[$id_field_names[$key1]]] = $current_update_sql;
                    }
                }
            }
            echo '<br />';
        }

        $migration_results[$key1] = array(
            'total_record_outdated' => $total_record_outdated, 
            'total_record_updated' => $total_record_updated, 
            'failure_indexes' => $failure_indexes
        );
    }
}


foreach ($migration_results as $key1 => $value1) {
    echo $key1;
    echo '<br />';
    echo 'total_record_outdated: ' . $value1['total_record_outdated'];
    echo '<br />';
    echo 'total_record_updated: ' . $value1['total_record_updated'];
    echo '<br />';
    echo 'failure_indexes: ';
    echo '<br />';
    print_r($value1['failure_indexes']);
    echo '<br />';
    echo '<br />';
}


exit;
?>