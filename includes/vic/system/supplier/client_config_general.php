<script>
    var page_number_list = [
        {"ref_name":"1", "display_name":"1", "display_order":"1"}
    ];

    var record_per_page_list = [
        {"ref_name":"25", "display_name":"25", "display_order":"1"}, 
        {"ref_name":"50", "display_name":"50", "display_order":"2"}, 
        {"ref_name":"100", "display_name":"100", "display_order":"3"}
    ];

    var login_user_info = <?php echo $login_user_info_in_json; ?>;

    var default_record_per_page = '<?php echo $default_record_per_page; ?>';
    var default_page_number = '<?php echo $default_page_number; ?>';
    var default_order_by_field_name = '<?php echo $default_order_by_field_name; ?>';
    var debug_mode = '<?php echo $debug_mode; ?>';
</script>
