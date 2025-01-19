*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    OperatingSystem
Library    String
Library    DebugLibrary
Library    yaml
Resource    ../variables/config_art.robot
Resource    ../keywords/common_art.robot
Resource    ../keywords/Type_field_values/input_text.robot
Resource    ../keywords/Type_field_values/drop_down.robot
Resource    ../keywords/Type_field_values/check_box.robot
Variables    ../resources/field_B2C_A2.yaml

*** Keywords ***
No. 5 Edit field name :
    [Arguments]    ${field}
    IF         '${field}' == '${name_en.field}'
        Input text editmass row 5                           ${name_en.field}               ${name_en.value}                     ${name_en.uuid}
    ELSE IF    '${field}' == '${e_comm_name_th.field}'   
        Input text editmass row 5                           ${e_comm_name_th.field}        ${e_comm_name_th.value}              ${e_comm_name_th.uuid}
    ELSE IF    '${field}' == '${product_model.field}'   
        Input text editmass row 5                           ${product_model.field}         ${product_model.value}               ${product_model.uuid}
    ELSE IF    '${field}' == '${tis_number.field}'   
        Input text editmass row 5                           ${tis_number.field}            ${tis_number.value}                  ${tis_number.uuid}
    ELSE IF    '${field}' == '${tis_license_number.field}'   
        Input text editmass row 5                           ${tis_license_number.field}    ${tis_license_number.value}          ${tis_license_number.uuid}
    ELSE IF    '${field}' == '${selling_point.field}'   
        Input text editmass row 5 (section14)               ${selling_point.field}         ${selling_point.value}               ${selling_point.uuid}
    ELSE IF    '${field}' == '${maintenance.field}'   
        Input text editmass row 5 (section14)               ${maintenance.field}           ${maintenance.value}                 ${maintenance.uuid}
    ELSE IF    '${field}' == '${method_of_use.field}'   
        Input text editmass row 5 (section14)               ${method_of_use.field}         ${method_of_use.value}               ${method_of_use.uuid}
    ELSE IF    '${field}' == '${caution.field}'   
        Input text editmass row 5 (section14)               ${caution.field}               ${caution.value}                     ${caution.uuid}
    ELSE IF    '${field}' == '${warranty_days.field}'   
        Input text editmass row 5 (day warranty)            ${warranty_days.field}         ${warranty_days.value}               ${warranty_days.uuid}
    ELSE IF    '${field}' == '${item_code.field}'   
        Dropdown row 5                                      ${item_code.field}             ${item_code.value}                   ${item_code.uuid}
    ELSE IF    '${field}' == '${warranty_type_id.field}'   
        Dropdown row 5 (type warranty)                      ${warranty_type_id.field}      ${warranty_type_id.value}            ${warranty_type_id.uuid}
    ELSE IF    '${field}' == '${item_name.field}'   
        Dropdown row 5 (c1,c2,c3)                           ${item_name.field}             ${item_name.value}                   ${item_name.uuid}
    ELSE IF    '${field}' == '${color_id.field}'   
        Dropdown row 5                                      ${color_id.field}              ${color_id.value}                    ${color_id.uuid}
    END

