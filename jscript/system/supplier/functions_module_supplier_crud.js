        /*
        ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
        ----- retrieve supplier data -----
        ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
        */
        function processResultRetrieveSupplierDataList(results) {
            if (results['error'] == 'null') {
                if (debug_mode == 'on') {
                    console.log('processResultRetrieveSupplierDataList > results:');
                    console.log(results);
                }

                supplier_form_record_list = results['data']['supplier_form_record_list'];
                supplier_form_record_total = results['data']['supplier_form_record_total'];

                supplier_section_form_record_list = results['data']['supplier_section_form_record_list'];
                supplier_suburb_form_record_list = results['data']['supplier_suburb_form_record_list'];

                if (supplier_suburb_form_record_list) {

                    if (document.getElementById("supplier_form_suburb") == null) {
                        
                        var suburb_div = document.getElementById("suburb_div_id");
                        var selectList = document.createElement("select");
                        selectList.setAttribute("id", "supplier_form_suburb");
                        selectList.setAttribute("onclick", "getSuburbStatePostcode()");
                        selectList.setAttribute("class", "supplier_form_textbox_2");
                        suburb_div.appendChild(selectList);

                        for (var i = 0; i < supplier_suburb_form_record_list.length; i++) {
                            var option = document.createElement("option");
                            option.setAttribute('value','{"suburb_state":"'+supplier_suburb_form_record_list[i]['suburb_list']['suburb_state']+'","suburb_id":"'+supplier_suburb_form_record_list[i]['suburb_list']['suburb_id']+'","suburb_postcode":"'+supplier_suburb_form_record_list[i]['suburb_list']['suburb_postcode']+'"}');
                            option.text = supplier_suburb_form_record_list[i]['suburb_list']['suburb'];
                            selectList.appendChild(option);
                        }
                    }
                }

                page_number_list = [];
                var c1 = 0;
                var temp_object = {};
                var total_page = calculateTotalPageFromTotalRecord(
                    supplier_form_record_total, 
                    document.getElementById('supplier_form_record_per_page_list').value
                );
                for (c1 = 1; c1 <= total_page; c1++) {
                    temp_object = JSON.parse('{"company_name":"' + c1 + '", "display_name":"' + c1 + '", "display_order":"' + c1 + '"}');
                    page_number_list.push(temp_object);
                }

                var previous_selected_page_number    = document.getElementById('supplier_form_page_number_list').value;
                var previous_selected_record_per_page  = document.getElementById('supplier_form_record_per_page_list').value;

                if (previous_selected_page_number == 'null') {
                    previous_selected_page_number = 1;
                }

                if (previous_selected_record_per_page == 'null') {
                    previous_selected_record_per_page = 25;
                }

                var row_number_begin = ((previous_selected_page_number - 1) * previous_selected_record_per_page) + 1;
                var row_number_end = (previous_selected_page_number * previous_selected_record_per_page);
                if (row_number_end > supplier_form_record_total)  {
                    row_number_end = supplier_form_record_total;
                }
                document.getElementById('supplier_form_record_info').innerHTML = 'Record: ' + (row_number_begin) + '..' + (row_number_end) + ' / ' + (supplier_form_record_total);

                initHtmlSelectBox(
                    page_number_list, 
                    'supplier_form_selectbox_1', 
                    'supplier_form_page_number_list', 
                    [], 
                    [], 
                    'company_name', 
                    'display_name', 
                    previous_selected_page_number, 
                    false
                );

                if (previous_selected_page_number == null) {
                    previous_selected_page_number = 1;
                }

                generateHtmlTableFromSupplierDataList(
                    supplier_section_form_record_list, 
                    previous_selected_page_number, 
                    previous_selected_record_per_page
                );

                if (previous_selected_page_number > total_page) {
                    document.getElementById('supplier_form_page_number_list').value = default_page_number;
                    refreshSupplierDataList();
                }
            } else {
                console.log('processResultRetrieveSupplierDataList > results:');
                console.log(results);
            }
        }

        function retrieveSupplierDataList(action_option) {
            var url = supplier_form_system_info['script_url'] + '?api_mode=1';
            var access_mode = 'supplier_list';
            var page_number = document.getElementById('supplier_form_page_number_list').value;
            var per_page    = document.getElementById('supplier_form_record_per_page_list').value;
            var field_name  = document.getElementById('supplier_form_order_by_field_name_list').value;
            var search_keyword  = document.getElementById('supplier_form_search_keyword').value;

            if (page_number == 'null') {
                page_number = 1;
            }

            if (per_page == 'null') {
                per_page = 25;
            }

            if (field_name == 'null') {
                field_name = 'id ASC';
            }

            switch (action_option) {
                case 'search':
                    access_mode = 'supplier_search_list';
                    if (search_keyword == '') {
                        console.log('Empty search keyword '+search_keyword)
                        return false;
                    }
                    break;
                case 'clear':
                    document.getElementById('supplier_form_search_keyword').value = '';
                    break;
            }

            var request_data = {
                "form_operation":"retrieve", 
                "access_mode":access_mode, 
                "page_number": page_number, 
                "record_per_page": per_page, 
                "order_by_field_name": field_name, 
                "search_keyword":search_keyword, 
                "username":login_user_info['username'], 
                "password":login_user_info['password']
            };

            requestAjaxCall(url, request_data, 'processResultRetrieveSupplierDataList');
            if (debug_mode == 'on') {
                console.log('url:');
                console.log(url);
                console.log('request_data:');
                console.log(request_data);
            }
        }

        function saveSupplierSectionDataEntryForm() {

            copySupplierSectionFormData();

            if (!isValidLandLineNumber(supplier_form_data['phone']) && supplier_form_data['phone'] != "") {
               console.log('Invalid work phone number!!! Valid format (xx xxxx xxxx)');
                //return false;
            }

            if (!isValidEmail(supplier_form_data['email']) && supplier_form_data['email'] != "") {
                console.log('Invalid email address!!');
                //return false;
            }

            if (!isValidMobileNumber(supplier_form_data['mobile']) && supplier_form_data['mobile'] != "") {
                console.log('Invalid mobile number!!! Valid format (xxxx xxx xxx)');
                //return false;
            }

            supplier_form_data = filterJsonObjectContent(supplier_form_data);

            var form_operation = 'save';
            if (document.getElementById('supplier_form_record_id').value.length > 0) {
                form_operation = 'update';
            }
            var url = supplier_form_system_info['script_url'] + '?api_mode=1';
            var request_data = {
                "form_operation":form_operation, 
                "access_mode":"supplier_section_save", 
                "username":login_user_info['username'], 
                "password":login_user_info['password'], 
                "supplier_form_data":supplier_form_data
            };

            requestAjaxCall(url, request_data, 'processResultSupplierDataEntry ');
            if (debug_mode == 'on') {
                console.log('url:');
                console.log(url);
                console.log('request_data:');
                console.log(request_data);
            }
        }

        function processResultSupplierDataEntry(results) {
            if (results['error'] == 'null') {
                
                if (debug_mode == 'on') {
                    console.log('processResultSaveSupplierDataEntryForm > results:');
                    console.log(results);
                }

                if (document.getElementById('supplier_form_record_id').value.length == 0 && typeof results['data']['new_record_id'] !== 'undefined') {
                    document.getElementById('supplier_form_record_id').value = results['data']['new_record_id'];
                    document.getElementById('supplier_form_date_created').value = results['data']['new_date_created'];
                    showSupplierForm('data_entry');
                }

                retrieveSupplierDataList('supplier_list');

            } else {
                console.log('processResultSupplierDataEntry > results:');
                console.log(results);
            }
        }

        function deleteSupplierDataEntry() {
            copySupplierSectionFormData();
            supplier_form_data = filterJsonObjectContent(supplier_form_data);

            var form_operation = 'delete';
            var url = supplier_form_system_info['script_url'] + '?api_mode=1';
            var request_data = {
                "form_operation":form_operation, 
                "access_mode":"supplier_delete", 
                "username":login_user_info['username'], 
                "password":login_user_info['password'], 
                "supplier_form_data":supplier_form_data
            };

            requestAjaxCall(url, request_data, 'processResultSupplierDataEntry');
            if (debug_mode == 'on') {
                console.log('url:');
                console.log(url);
                console.log('request_data:');
                console.log(request_data);
            }
        }