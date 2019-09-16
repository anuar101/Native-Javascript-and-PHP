        function showSupplierForm(form_area_id) {
            switch (form_area_id) {
                case 'record_list':
                    document.getElementById('supplier_form_record_list_area_1').style.display = 'block';
                    document.getElementById('supplier_form_data_entry_area_1').style.display = 'none';
                    break;
                case 'data_entry':
                    document.getElementById('supplier_form_record_list_area_1').style.display = 'none';
                    document.getElementById('supplier_form_data_entry_area_1').style.display = 'block';
                    if (document.getElementById('supplier_form_record_id').value.length > 0) {
                        document.getElementById('supplier_form_date_created_row').style.visibility = 'visible';
                        document.getElementById('supplier_form_button_delete').style.visibility = 'visible';
                        document.getElementById('supplier_form_button_new').style.visibility = 'visible';
                    } else {
                        document.getElementById('supplier_form_date_created_row').style.visibility = 'hidden';
                        document.getElementById('supplier_form_button_delete').style.visibility = 'hidden';
                        document.getElementById('supplier_form_button_new').style.visibility = 'hidden';
                    }
                    break;
            };
        }

        function initialiseSupplierFormLayout() {
            switch (supplier_form_system_info['access_mode']) {
                case 'list_view':
                    showSupplierForm('record_list');
                    break;
                case 'data_entry_view':
                    showSupplierForm('data_entry');
                    break;
            };

            var target_hidden_elements = [];
            var c1 = 0;
            for (c1 = 0; c1 < target_hidden_elements.length; c1++) {
                document.getElementById(target_hidden_elements[c1]).style.display = 'none';
            }
        }

        function initProgram() {
            initPageInputBlocker(); 
            adaptContainerDimensionAsCurrentWindow('supplier_form_container_area', -30, -160);

            initSupplierFormInputElements();
            initialiseSupplierFormLayout();
            retrieveSupplierDataList('');
        }
