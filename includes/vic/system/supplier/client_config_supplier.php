<script>
    var supplier_form_record_list = <?php echo $supplier_form_record_list; ?>;
    var supplier_suburb_form_record_list = <?php echo $supplier_suburb_form_record_list; ?>;
    var supplier_form_record_total = 0;

    var supplier_form_data = {
        "record_id":"",
        "ref_name":"",
        "description":"",
        "description":""
    };

    var supplier_form_system_info = <?php echo $supplier_form_system_info_in_json; ?>;

    var current_selected_record_id = '';

    var order_by_field_name_list = [
        {"ref_name":"id ASC", "display_name":"ID - Ascending", "display_order":"1"}, 
        {"ref_name":"id DESC", "display_name":"ID - Descending", "display_order":"2"}, 
        {"ref_name":"company_name ASC", "display_name":"Company name - Ascending", "display_order":"3"}, 
        {"ref_name":"company_name DESC", "display_name":"Company name - Descending", "display_order":"4"}, 
        {"ref_name":"address1 ASC", "display_name":"Address - Ascending", "display_order":"5"}, 
        {"ref_name":"address1 DESC", "display_name":"Address - Descending", "display_order":"6"}, 
        {"ref_name":"date_created ASC", "display_name":"Date Created - Ascending", "display_order":"7"}, 
        {"ref_name":"date_created DESC", "display_name":"Date Created - Descending", "display_order":"8"}
    ];
</script>
