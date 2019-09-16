<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Supplier</title>
        <meta charset="UTF-8">
        <script src="<?php echo $config['path']['app_url'] . 'jscript/system/supplier/core/functions_general_ajax_call.js'; ?>" type="text/javascript"></script>
        <script src="<?php echo $config['path']['app_url'] . 'jscript/system/supplier/core/functions_general.js'; ?>" type="text/javascript"></script>
        <script src="<?php echo $config['path']['app_url'] . 'jscript/system/supplier/templates_module_supplier_form.js'; ?>" type="text/javascript"></script>
        <script src="<?php echo $config['path']['app_url'] . 'jscript/system/supplier/functions_module_supplier_crud.js'; ?>" type="text/javascript"></script>
        <script src="<?php echo $config['path']['app_url'] . 'jscript/system/supplier/functions_module_supplier_form.js'; ?>" type="text/javascript"></script>
        <script src="<?php echo $config['path']['app_url'] . 'jscript/system/supplier/functions_module_supplier.js'; ?>" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css" href="<?php echo $config['path']['app_url'] . 'jscript/system/supplier/style_form_supplier.css'; ?>" />

        <?php
        include 'client_config_general.php';
        include 'client_config_supplier.php';
        ?>
    </head>
    <body onload="initProgram()" onresize="adaptContainerDimensionAsCurrentWindow('supplier_form_container_area', 0, 0)">
        <div id="supplier_form_container_area" class="supplier_form_container_area_1">
            <div id="supplier_form_record_list_area_1" class="supplier_form_record_list_area_1">
                <table class="supplier_form_table_1">
                    <tr>
                        <td class="supplier_form_title_1" id="supplier_form_data_entry_area_1_main_title">SUPPLIER RECORD LIST</td>
                    </tr>
                    <tr>
                        <td class="supplier_form_row_separator_1">&nbsp;</td>
                    </tr>
                    <tr id="supplier_form_data_entry_area_1_button_row">
                        <td class="supplier_form_field_name_3">
                            Page No.:&nbsp;
                            <select class="supplier_form_selectbox_1" id="supplier_form_page_number_list" name="supplier_form_page_number_list" onchange="refreshSupplierDataList()">
                            </select >
                            
                            Page Size:&nbsp;
                            <select class="supplier_form_selectbox_1" id="supplier_form_record_per_page_list" name="supplier_form_record_per_page_list" onchange="refreshSupplierDataList()">
                            </select >

                            Order By:&nbsp;
                            <select class="supplier_form_selectbox_1" id="supplier_form_order_by_field_name_list" name="supplier_form_order_by_field_name_list" onchange="refreshSupplierDataList()">
                            </select >

                            &nbsp;&nbsp;|&nbsp;&nbsp;
                            <span id="supplier_form_record_info"></span>
                            &nbsp;&nbsp;|&nbsp;&nbsp;
                            Keyword:&nbsp;
                            
                            <input type="text" class="supplier_form_textbox_2" id="supplier_form_search_keyword" name="supplier_form_search_keyword" value="" />
                            <input type="button" class="supplier_form_button_1" id="supplier_form_button_search" name="supplier_form_button_search" value="Search" onclick="retrieveSupplierDataList('search')" />
                            <input type="button" class="supplier_form_button_1" id="supplier_form_button_clear" name="supplier_form_button_clear" value="Clear" onclick="retrieveSupplierDataList('clear')" />
                            &nbsp;&nbsp;|&nbsp;&nbsp;
                            <input type="button" class="supplier_form_button_2" id="supplier_form_button_add_new_record" name="supplier_form_button_add_new_record" value="Add New Record" onclick="clearSupplierDataEntryForm()" />
                        </td>
                    </tr>
                    <tr>
                        <td class="supplier_form_row_separator_1">&nbsp;</td>
                    </tr>
                    <tr id="supplier_form_data_entry_area_record_list_row">
                        <td  id="supplier_form_data_table_area">
                        </td>
                    </tr>
                </table>
            </div>

            <div id="supplier_form_data_entry_area_1" class="supplier_form_data_entry_area_1_1">
            	<table align="center">

            		<tr>
            			<td colspan="2" class="supplier_form_title_1" id="supplier_form_data_entry_area_1_main_title">Supplier Details</td>
            			<td colspan="2" class="supplier_form_title_2" id="supplier_form_data_entry_area_1_main_title">Supplier Contact</td>
            		</tr>

            		<tr>
            			
            			<td colspan="2" class="supplier_form_row_separator_1">&nbsp;</td>
            		</tr>

            		<tr>
            			<td class="supplier_form_table_column_1">Company Name: </td>
            			<td class="supplier_form_table_column_2">
            				<input type="hidden" id="supplier_form_record_id" value="" />
            				<input type="text" class="supplier_form_textbox_2" id="supplier_form_company_name" value="" />
            			</td>
            			<td class="supplier_form_table_column_1">Title: </td>
            			<td class="supplier_form_table_column_2">
            				<select class="supplier_form_textbox_2" id="supplier_form_title">
            					<option value="mr">Mr</option>
            					<option value="ms">Ms</option>
            				</select >
            			</td>
            		</tr>

            		<tr>
            			<td class="supplier_form_table_column_1">Address 1: </td>
            			<td class="supplier_form_table_column_2">
            				<input type="text" class="supplier_form_textbox_2" id="supplier_form_address1" value="" />
            			</td>
            			<td class="supplier_form_table_column_1">First Name: </td>
            			<td class="supplier_form_table_column_1">
            				<input type="text" class="supplier_form_textbox_2" id="supplier_form_first_name" value="" />
            			</td>
            		</tr>

            		<tr>
            			<td class="supplier_form_table_column_1">Address 2: </td>
            			<td class="supplier_form_table_column_2">
            				<input type="text" class="supplier_form_textbox_2" id="supplier_form_address2" value="" />
            			</td>
            			<td class="supplier_form_table_column_1">Last Name: </td>
            			<td class="supplier_form_table_column_1">
            				<input type="text" class="supplier_form_textbox_2" id="supplier_form_last_name" value="" />
            			</td>
            		</tr>

            		<tr>
            			<td class="supplier_form_table_column_1">Suburb: </td>
            			<td class="supplier_form_table_column_2" id="suburb_div_id">
            			</td>

            			<input type="hidden" class="supplier_form_suburb_id" id="supplier_form_suburb_id" value="" />
            			<td class="supplier_form_table_column_3">Mobile: </td>
            			<td class="supplier_form_table_column_3">
            				<input type="text" class="supplier_form_textbox_2" id="supplier_form_mobile" value="" />
            			</td>
            		</tr>

            		<tr>
            			<td class="supplier_form_table_column_1">State: </td>
            			<td class="supplier_form_table_column_2">
            				<input type="text" class="supplier_form_textbox_2" id="supplier_form_state" value="" />
            			</td>
            			<td class="supplier_form_table_column_3">Notes: </td>
            			<td class="supplier_form_table_column_3">
            				<textarea  class="supplier_form_textbox_2" id="supplier_form_notes"></textarea>
            			</td>
            		</tr>

            		<tr>
            			<td class="supplier_form_table_column_1">Postcode: </td>
            			<td class="supplier_form_table_column_2">
            				<input type="text" class="supplier_form_textbox_2" id="supplier_form_postcode" value="" />
            			</td>
            		</tr>

            		<tr>
            			<td class="supplier_form_table_column_1">Work Phone: </td>
            			<td class="supplier_form_table_column_2">
            				<input type="text" class="supplier_form_textbox_2" id="supplier_form_work_phone" value="" />
            			</td>
            		</tr>

            		<tr>
            			<td class="supplier_form_table_column_1">Fax: </td>
            			<td class="supplier_form_table_column_2">
            				<input type="text" class="supplier_form_textbox_2" id="supplier_form_fax" value="" />
            			</td>
            		</tr>

            		<tr>
            			<td class="supplier_form_table_column_1">Email: </td>
            			<td class="supplier_form_table_column_2">
            				<input type="text" class="supplier_form_textbox_2" id="supplier_form_email" value="" />
            			</td>
            		</tr>

            		<tr>
            			<td class="supplier_form_table_column_1">Website: </td>
            			<td class="supplier_form_table_column_2">
            				<input type="text" class="supplier_form_textbox_2" id="supplier_form_website" value="" />
            			</td>
            		</tr>

            		<tr id="supplier_form_date_created_row">
            			<td class="supplier_form_table_column_1">Date Created: </td>
            			<td class="supplier_form_table_column_2">
            				<input type="text" class="supplier_form_textbox_2" id="supplier_form_date_created" value="" />
            			</td>
            		</tr>

            		<tr>
            			<td colspan="2" class="supplier_form_row_separator_1">&nbsp;</td>
            		</tr>

            		<tr id="supplier_form_data_entry_area_1_button_row">
            			<td colspan="2" class="supplier_form_table_column_3">
            				<input type="button" class="supplier_form_button_1" id="supplier_form_button_save" name="supplier_form_button_save" value="Save" onclick="saveSupplierSectionDataEntryForm()" />
            				<input type="button" class="supplier_form_button_1" id="supplier_form_button_cancel" name="supplier_form_button_cancel" value="Close" onclick="showSupplierForm('record_list')" />
                            <input type="button" class="supplier_form_button_1" id="supplier_form_button_delete" name="supplier_form_button_delete" value="Delete" onclick="deleteSupplierDataEntry()" />
                            <input type="button" class="supplier_form_button_1" id="supplier_form_button_new" name="supplier_form_button_new" value="New" onclick="clearSupplierDataEntryForm()" />
            			</td>
            		</tr>
            	</table>
            </div>

        </div>
    </body>
</html>
