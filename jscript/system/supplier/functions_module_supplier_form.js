        function generateHtmlTableFromSupplierDataList(data_list, page_number, record_per_page) {
            var c1 = 0;
            var temp_text = '';
            var html_text = '';
            var target_template_row_body = '';
            var row_number = ((page_number - 1) * record_per_page) + 1;

            temp_text = replaceSubstringInText(
                [], 
                [], 
                template['record_list']['row_header']
            );
            html_text = temp_text;

            for (c1 = 0; c1 < data_list.length; c1++) {
                temp_text = '';

                target_template_row_body = template['record_list']['row_body_odd'];
                if ((c1 % 2) == 0) {
                    target_template_row_body = template['record_list']['row_body_even'];
                }

                temp_text = replaceSubstringInText(
                    [
                        '[ROW_NUMBER]', 
                        '[RECORD_ID]', 
                        '[COMPANY_NAME]', 
                        '[ADDRESS]', 
                        '[PHONE]',
                        '[MOBILE]'
                    ], 
                    [
                        row_number, 
                        data_list[c1]['record_id'], 
                        data_list[c1]['company_name'], 
                        data_list[c1]['address1'], 
                        data_list[c1]['phone'],
                        data_list[c1]['mobile']
                    ], 
                    target_template_row_body
                );

                row_number++;

                html_text += temp_text;
            }

            html_text = replaceSubstringInText(
                [
                    '[TABLE_CONTENT]'
                ], 
                [
                    html_text
                ], 
                template['record_list']['table']
            );

            document.getElementById('supplier_form_data_table_area').innerHTML = html_text;
        }

        function assignSuppliersInfoFromRecordListToDataEntryForm(record_id) {
            current_selected_record_id = record_id;

            var data_list = supplier_section_form_record_list;
            var search_ref_names = ['record_id'];
            var search_values = [current_selected_record_id];
            var data_rows = getDataRowsFromDataList(data_list, search_ref_names, search_values);
            if (data_rows.length > 0) {
                document.getElementById('supplier_form_state').disabled = true;
                document.getElementById('supplier_form_postcode').disabled = true;
                document.getElementById('supplier_form_state').value = data_rows[0]['state'] ? data_rows[0]['state'] : '';
                document.getElementById('supplier_form_postcode').value = data_rows[0]['postcode'] ? data_rows[0]['postcode'] : '';
                document.getElementById('supplier_form_record_id').value = data_rows[0]['record_id'] ? data_rows[0]['record_id'] : '';
                document.getElementById('supplier_form_company_name').value = data_rows[0]['company_name'] ? data_rows[0]['company_name'] : '';
                document.getElementById('supplier_form_title').value = data_rows[0]['title'] ? data_rows[0]['title'] : '';
                document.getElementById('supplier_form_first_name').value = data_rows[0]['first_name'] ? data_rows[0]['first_name'] : '';
                document.getElementById('supplier_form_last_name').value = data_rows[0]['last_name'] ? data_rows[0]['last_name'] : '';
                document.getElementById('supplier_form_mobile').value = data_rows[0]['mobile'] ? data_rows[0]['mobile'] : '';
                document.getElementById('supplier_form_notes').value = data_rows[0]['notes'] ? data_rows[0]['notes'] : '';
                document.getElementById('supplier_form_address1').value = data_rows[0]['address1'] ? data_rows[0]['address1'] : '';
                document.getElementById('supplier_form_address2').value = data_rows[0]['address2'] ? data_rows[0]['address2'] : '';
                document.getElementById('supplier_form_suburb_id').value = data_rows[0]['suburb_id'] ? data_rows[0]['suburb_id'] : '';
                document.getElementById('supplier_form_work_phone').value = data_rows[0]['phone'] ? data_rows[0]['phone'] : '';
                document.getElementById('supplier_form_fax').value = data_rows[0]['fax'] ? data_rows[0]['fax'] : '';
                document.getElementById('supplier_form_email').value = data_rows[0]['email'] ? data_rows[0]['email'] : '';
                document.getElementById('supplier_form_website').value = data_rows[0]['website'] ? data_rows[0]['website'] : ''; 
                document.getElementById('supplier_form_date_created').value = data_rows[0]['date_created'] ? data_rows[0]['date_created'] : ''; 

                if (data_rows[0]['suburb'] 
                    && data_rows[0]['state'] 
                    && data_rows[0]['suburbid'] 
                    && data_rows[0]['postcode']) {
                    document.getElementById('supplier_form_suburb').value ='{"suburb_state":"'+data_rows[0]['state']+'","suburb_id":"'+data_rows[0]['suburbid']+'","suburb_postcode":"'+data_rows[0]['postcode']+'"}';
                } else {
                    document.getElementById('supplier_form_suburb').value ='';
                    console.log('Empty suburb------>'+data_rows[0]['suburb']);
                    console.log('Empty state------>'+data_rows[0]['state']);
                    console.log('Empty suburb_id------>'+data_rows[0]['suburbid']);
                    console.log('Empty post_code------>'+data_rows[0]['postcode']);
                }
            }

            showSupplierForm('data_entry');
        }

        function initSupplierFormInputElements() {
            initHtmlSelectBox(
                page_number_list, 
                'supplier_form_selectbox_1', 
                'supplier_form_page_number_list', 
                [], 
                [], 
                'ref_name', 
                'display_name', 
                default_page_number, 
                false
            );

            initHtmlSelectBox(
                record_per_page_list, 
                'supplier_form_selectbox_1', 
                'supplier_form_record_per_page_list', 
                [], 
                [], 
                'ref_name', 
                'display_name', 
                default_record_per_page, 
                false
            );

            initHtmlSelectBox(
                order_by_field_name_list, 
                'supplier_form_selectbox_1', 
                'supplier_form_order_by_field_name_list', 
                [], 
                [], 
                'ref_name', 
                'display_name', 
                default_order_by_field_name, 
                false
            );

            document.getElementById('supplier_form_record_per_page_list').value = default_record_per_page;
        }

        function clearSupplierDataEntryForm() {
            document.getElementById('supplier_form_state').disabled = true;
            document.getElementById('supplier_form_postcode').disabled = true;
            document.getElementById('supplier_form_record_id').value = '';
            document.getElementById('supplier_form_company_name').value = '';
            document.getElementById('supplier_form_title').value = '';
            document.getElementById('supplier_form_first_name').value = '';
            document.getElementById('supplier_form_last_name').value = '';
            document.getElementById('supplier_form_mobile').value = '';
            document.getElementById('supplier_form_notes').value = '';
            document.getElementById('supplier_form_address1').value = '';
            document.getElementById('supplier_form_address2').value = '';
            document.getElementById('supplier_form_suburb_id').value = '';
            document.getElementById('supplier_form_suburb').value = '';
            document.getElementById('supplier_form_state').value = '';
            document.getElementById('supplier_form_postcode').value = '';
            document.getElementById('supplier_form_work_phone').value = '';
            document.getElementById('supplier_form_fax').value = '';
            document.getElementById('supplier_form_email').value = '';
            document.getElementById('supplier_form_website').value = '';
            document.getElementById('supplier_form_date_created').value = '';
            document.getElementById("suburb_div_id").value = '';
            document.getElementById('supplier_form_company_name').focus();

            showSupplierForm('data_entry');
        }


        function copySupplierSectionFormData() {
            document.getElementById('supplier_form_date_created_row').style.visibility = 'hidden';
            var sfs = document.getElementById("supplier_form_suburb");
            var sfsoption = "";

            if (typeof sfs.options[sfs.selectedIndex] != "undefined") {
                sfsoption = sfs.options[sfs.selectedIndex].text;
            }

            supplier_form_data['record_id'] = document.getElementById('supplier_form_record_id').value;
            supplier_form_data['supplierid'] = document.getElementById('supplier_form_record_id').value;
            supplier_form_data['company_name'] = document.getElementById('supplier_form_company_name').value;
            supplier_form_data['title'] = document.getElementById('supplier_form_title').value;
            supplier_form_data['firstname'] = document.getElementById('supplier_form_first_name').value;
            supplier_form_data['lastname'] = document.getElementById('supplier_form_last_name').value;
            supplier_form_data['mobile'] = document.getElementById('supplier_form_mobile').value;
            supplier_form_data['notes'] = document.getElementById('supplier_form_notes').value;
            supplier_form_data['address1'] = document.getElementById('supplier_form_address1').value;
            supplier_form_data['address2'] = document.getElementById('supplier_form_address2').value;
            supplier_form_data['suburb'] = sfsoption;
            supplier_form_data['suburbid'] = document.getElementById('supplier_form_suburb_id').value;
            supplier_form_data['state'] = document.getElementById('supplier_form_state').value;
            supplier_form_data['postcode'] = document.getElementById('supplier_form_postcode').value;
            supplier_form_data['phone'] = document.getElementById('supplier_form_work_phone').value;
            supplier_form_data['fax'] = document.getElementById('supplier_form_fax').value;
            supplier_form_data['email'] = document.getElementById('supplier_form_email').value;
            supplier_form_data['website'] = document.getElementById('supplier_form_website').value;
        }

        function getSuburbStatePostcode() {
            var suburb = document.getElementById('supplier_form_suburb').value;

            if (suburb) {

                var obj = JSON.parse(suburb);
                document.getElementById('supplier_form_suburb_id').value = obj.suburb_id;
                document.getElementById('supplier_form_state').value = obj.suburb_state;
                document.getElementById('supplier_form_postcode').value = obj.suburb_postcode;
                document.getElementById('supplier_form_state').disabled = true;
                document.getElementById('supplier_form_postcode').disabled = true;
            }
        }

        function refreshSupplierDataList() {
            if (document.getElementById('supplier_form_page_number_list').value != 'null' && 
                document.getElementById('supplier_form_record_per_page_list').value != 'null' && 
                document.getElementById('supplier_form_order_by_field_name_list').value != 'null') {

                if (document.getElementById('supplier_form_search_keyword').value.length == 0) {
                    retrieveSupplierDataList('');
                } else {
                    retrieveSupplierDataList('search');
                }
            }
        }