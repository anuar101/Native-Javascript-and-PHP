var template = {
    "record_list":{
        "table":"", 
        "row_header":"", 
        "row_body":"", 
        "row_body_odd":"", 
        "row_body_even":""    }
};

template['record_list']['table'] = '<table class="supplier_form_table_2" class="table_id">[TABLE_CONTENT]</table>';

template['record_list']['row_header'] = `
    <tr>
        <td class="supplier_form_table_column_header_1">#</td>
        <td class="supplier_form_table_column_header_1">Company Name</td>
        <td class="supplier_form_table_column_header_1">Address</td>
        <td class="supplier_form_table_column_header_1">Contact</td>
        <td class="supplier_form_table_column_header_1">Phone</td>
    </tr>
`;

template['record_list']['row_body'] = `
    <tr>
        <td class="supplier_form_table_column_body_1" onclick="assignSuppliersInfoFromRecordListToDataEntryForm(\'[RECORD_ID]\')">[ROW_NUMBER]</td>
        <td class="supplier_form_table_column_body_1" onclick="assignSuppliersInfoFromRecordListToDataEntryForm(\'[RECORD_ID]\')">[COMPANY_NAME]</td>
        <td class="supplier_form_table_column_body_1" onclick="assignSuppliersInfoFromRecordListToDataEntryForm(\'[RECORD_ID]\')">[ADDRESS]</td>
        <td class="supplier_form_table_column_body_1" onclick="assignSuppliersInfoFromRecordListToDataEntryForm(\'[RECORD_ID]\')">[PHONE]</td>
        <td class="supplier_form_table_column_body_1" onclick="assignSuppliersInfoFromRecordListToDataEntryForm(\'[RECORD_ID]\')">[MOBILE]</td>
    </tr>
`;
template['record_list']['row_body_odd'] = replaceSubstringInText(
    ['class="supplier_form_table_column_body_1"'], 
    ['class="supplier_form_table_column_body_1 supplier_form_table_row_odd"'], 
    template['record_list']['row_body']
);
template['record_list']['row_body_even'] = replaceSubstringInText(
    ['class="supplier_form_table_column_body_1"'], 
    ['class="supplier_form_table_column_body_1 supplier_form_table_row_even"'], 
    template['record_list']['row_body']
);
