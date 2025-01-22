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
No. 1 Edit field name (ฺB2C/A2) :
    [Arguments]    ${field}
    IF         '${field}' == '${name_en.field}'
        Input text editmass row 1                           ${name_en.field}               ${name_en.value}                    ${name_en.uuid}
    ELSE IF    '${field}' == '${e_comm_name_th.field}'   
        Input text editmass row 1                           ${e_comm_name_th.field}        ${e_comm_name_th.value}             ${e_comm_name_th.uuid}
    ELSE IF    '${field}' == '${product_model.field}'   
        Input text editmass row 1                           ${product_model.field}         ${product_model.value}              ${product_model.uuid}
    ELSE IF    '${field}' == '${tis_number.field}'   
        Input text editmass row 1                           ${tis_number.field}            ${tis_number.value}                 ${tis_number.uuid}
    ELSE IF    '${field}' == '${tis_license_number.field}'   
        Input text editmass row 1                           ${tis_license_number.field}    ${tis_license_number.value}         ${tis_license_number.uuid}
    ELSE IF    '${field}' == '${selling_point.field}'   
        Input text editmass row 1 (section14)               ${selling_point.field}         ${selling_point.value}              ${selling_point.uuid}
    ELSE IF    '${field}' == '${maintenance.field}'   
        Input text editmass row 1 (section14)               ${maintenance.field}           ${maintenance.value}                ${maintenance.uuid}
    ELSE IF    '${field}' == '${method_of_use.field}'   
        Input text editmass row 1 (section14)               ${method_of_use.field}         ${method_of_use.value}              ${method_of_use.uuid}
    ELSE IF    '${field}' == '${caution.field}'   
        Input text editmass row 1 (section14)               ${caution.field}               ${caution.value}                    ${caution.uuid}
    ELSE IF    '${field}' == '${warranty_days.field}'   
        Input text editmass row 1 (day warranty)            ${warranty_days.field}         ${warranty_days.value}              ${warranty_days.uuid}
    ELSE IF    '${field}' == '${item_code.field}'   
        Dropdown row 1                                      ${item_code.field}             ${item_code.value}                  ${item_code.uuid}
    ELSE IF    '${field}' == '${warranty_type_id.field}'   
        Dropdown row 1 (type warranty)                      ${warranty_type_id.field}      ${warranty_type_id.value}           ${warranty_type_id.uuid}
    ELSE IF    '${field}' == '${item_name.field}'   
        Dropdown row 1 (c1,c2,c3)                           ${item_name.field}             ${item_name.value}                  ${item_name.uuid}
    ELSE IF    '${field}' == '${color_id.field}'   
        Dropdown row 1                                      ${color_id.field}              ${color_id.value}                   ${color_id.uuid}
    END

No. 2 Edit field name (ฺB2C/A2) :
    [Arguments]    ${field}
    IF         '${field}' == '${name_en.field}'
        Input text editmass row 2                           ${name_en.field}               ${name_en.value}                     ${name_en.uuid}
    ELSE IF    '${field}' == '${e_comm_name_th.field}'   
        Input text editmass row 2                           ${e_comm_name_th.field}        ${e_comm_name_th.value}              ${e_comm_name_th.uuid}
    ELSE IF    '${field}' == '${product_model.field}'   
        Input text editmass row 2                           ${product_model.field}         ${product_model.value}               ${product_model.uuid}
    ELSE IF    '${field}' == '${tis_number.field}'   
        Input text editmass row 2                           ${tis_number.field}            ${tis_number.value}                  ${tis_number.uuid}
    ELSE IF    '${field}' == '${tis_license_number.field}'   
        Input text editmass row 2                           ${tis_license_number.field}    ${tis_license_number.value}          ${tis_license_number.uuid}
    ELSE IF    '${field}' == '${selling_point.field}'   
        Input text editmass row 2 (section14)               ${selling_point.field}         ${selling_point.value}               ${selling_point.uuid}
    ELSE IF    '${field}' == '${maintenance.field}'   
        Input text editmass row 2 (section14)               ${maintenance.field}           ${maintenance.value}                 ${maintenance.uuid}
    ELSE IF    '${field}' == '${method_of_use.field}'   
        Input text editmass row 2 (section14)               ${method_of_use.field}         ${method_of_use.value}               ${method_of_use.uuid}
    ELSE IF    '${field}' == '${caution.field}'   
        Input text editmass row 2 (section14)               ${caution.field}               ${caution.value}                     ${caution.uuid}
    ELSE IF    '${field}' == '${warranty_days.field}'   
        Input text editmass row 2 (day warranty)            ${warranty_days.field}         ${warranty_days.value}               ${warranty_days.uuid}
    ELSE IF    '${field}' == '${item_code.field}'   
        Dropdown row 2                                      ${item_code.field}             ${item_code.value}                   ${item_code.uuid}
    ELSE IF    '${field}' == '${warranty_type_id.field}'   
        Dropdown row 2 (type warranty)                      ${warranty_type_id.field}      ${warranty_type_id.value}            ${warranty_type_id.uuid}
    ELSE IF    '${field}' == '${item_name.field}'   
        Dropdown row 2 (c1,c2,c3)                           ${item_name.field}             ${item_name.value}                   ${item_name.uuid}
    ELSE IF    '${field}' == '${color_id.field}'   
        Dropdown row 2                                      ${color_id.field}              ${color_id.value}                    ${color_id.uuid}
    END

No. 3 Edit field name (ฺB2C/A2) :
    [Arguments]    ${field}
    IF         '${field}' == '${name_en.field}'
        Input text editmass row 3                           ${name_en.field}               ${name_en.value}                     ${name_en.uuid}
    ELSE IF    '${field}' == '${e_comm_name_th.field}'   
        Input text editmass row 3                           ${e_comm_name_th.field}        ${e_comm_name_th.value}              ${e_comm_name_th.uuid}
    ELSE IF    '${field}' == '${product_model.field}'   
        Input text editmass row 3                           ${product_model.field}         ${product_model.value}               ${product_model.uuid}
    ELSE IF    '${field}' == '${tis_number.field}'   
        Input text editmass row 3                           ${tis_number.field}            ${tis_number.value}                  ${tis_number.uuid}
    ELSE IF    '${field}' == '${tis_license_number.field}'   
        Input text editmass row 3                           ${tis_license_number.field}    ${tis_license_number.value}          ${tis_license_number.uuid}
    ELSE IF    '${field}' == '${selling_point.field}'   
        Input text editmass row 3 (section14)               ${selling_point.field}         ${selling_point.value}               ${selling_point.uuid}
    ELSE IF    '${field}' == '${maintenance.field}'   
        Input text editmass row 3 (section14)               ${maintenance.field}           ${maintenance.value}                 ${maintenance.uuid}
    ELSE IF    '${field}' == '${method_of_use.field}'   
        Input text editmass row 3 (section14)               ${method_of_use.field}         ${method_of_use.value}               ${method_of_use.uuid}
    ELSE IF    '${field}' == '${caution.field}'   
        Input text editmass row 3 (section14)               ${caution.field}               ${caution.value}                     ${caution.uuid}
    ELSE IF    '${field}' == '${warranty_days.field}'   
        Input text editmass row 3 (day warranty)            ${warranty_days.field}         ${warranty_days.value}               ${warranty_days.uuid}
    ELSE IF    '${field}' == '${item_code.field}'   
        Dropdown row 3                                      ${item_code.field}             ${item_code.value}                   ${item_code.uuid}
    ELSE IF    '${field}' == '${warranty_type_id.field}'   
        Dropdown row 3 (type warranty)                      ${warranty_type_id.field}      ${warranty_type_id.value}            ${warranty_type_id.uuid}
    ELSE IF    '${field}' == '${item_name.field}'   
        Dropdown row 3 (c1,c2,c3)                           ${item_name.field}             ${item_name.value}                   ${item_name.uuid}
    ELSE IF    '${field}' == '${color_id.field}'   
        Dropdown row 3                                      ${color_id.field}              ${color_id.value}                    ${color_id.uuid}
    END


No. 4 Edit field name (ฺB2C/A2) :
    [Arguments]    ${field}
    IF         '${field}' == '${name_en.field}'
        Input text editmass row 4                           ${name_en.field}               ${name_en.value}                     ${name_en.uuid}
    ELSE IF    '${field}' == '${e_comm_name_th.field}'   
        Input text editmass row 4                           ${e_comm_name_th.field}        ${e_comm_name_th.value}              ${e_comm_name_th.uuid}
    ELSE IF    '${field}' == '${product_model.field}'   
        Input text editmass row 4                           ${product_model.field}         ${product_model.value}               ${product_model.uuid}
    ELSE IF    '${field}' == '${tis_number.field}'   
        Input text editmass row 4                           ${tis_number.field}            ${tis_number.value}                  ${tis_number.uuid}
    ELSE IF    '${field}' == '${tis_license_number.field}'   
        Input text editmass row 4                           ${tis_license_number.field}    ${tis_license_number.value}          ${tis_license_number.uuid}
    ELSE IF    '${field}' == '${selling_point.field}'   
        Input text editmass row 4 (section14)               ${selling_point.field}         ${selling_point.value}               ${selling_point.uuid}
    ELSE IF    '${field}' == '${maintenance.field}'   
        Input text editmass row 4 (section14)               ${maintenance.field}           ${maintenance.value}                 ${maintenance.uuid}
    ELSE IF    '${field}' == '${method_of_use.field}'   
        Input text editmass row 4 (section14)               ${method_of_use.field}         ${method_of_use.value}               ${method_of_use.uuid}
    ELSE IF    '${field}' == '${caution.field}'   
        Input text editmass row 4 (section14)               ${caution.field}               ${caution.value}                     ${caution.uuid}
    ELSE IF    '${field}' == '${warranty_days.field}'   
        Input text editmass row 4 (day warranty)            ${warranty_days.field}         ${warranty_days.value}               ${warranty_days.uuid}
    ELSE IF    '${field}' == '${item_code.field}'   
        Dropdown row 4                                      ${item_code.field}             ${item_code.value}                   ${item_code.uuid}
    ELSE IF    '${field}' == '${warranty_type_id.field}'   
        Dropdown row 4 (type warranty)                      ${warranty_type_id.field}      ${warranty_type_id.value}            ${warranty_type_id.uuid}
    ELSE IF    '${field}' == '${item_name.field}'   
        Dropdown row 4 (c1,c2,c3)                           ${item_name.field}             ${item_name.value}                   ${item_name.uuid}
    ELSE IF    '${field}' == '${color_id.field}'   
        Dropdown row 4                                      ${color_id.field}              ${color_id.value}                    ${color_id.uuid}
    END


No. 5 Edit field name (ฺB2C/A2) :
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






*** Test Cases ***
Article Edit mass round 1
    [Setup]    Login dohome and click web art(Edit Mass) A2
    Search by article    10337742
    Check value article    10337742
    Click check box all article
    Click button edit field    
    No. 1 Edit field name (ฺB2C/A2) :    ประเภทของการรับประกัน
    No. 2 Edit field name (ฺB2C/A2) :    โทนสี
    No. 3 Edit field name (ฺB2C/A2) :    จุดเด่นจุดขาย
    No. 4 Edit field name (ฺB2C/A2) :    จำนวน(วัน)
    No. 5 Edit field name (ฺB2C/A2) :    กำหนดรูปแบบการขาย



