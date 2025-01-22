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
Variables    ../resources/field_A1.yaml    

*** Keywords ***
No. 1 Edit field name (A1) :
    [Arguments]    ${field}
    IF         '${field}' == '${ownership_show.field}'
        Dropdown row 1                          ${ownership_show.field}                   ${ownership_show.value}
    ELSE IF    '${field}' == '${import_purchase.field}'   
        Dropdown row 1                          ${import_purchase.field}                  ${import_purchase.value}
    ELSE IF    '${field}' == '${product_status.field}'   
        Dropdown row 1                          ${product_status.field}                   ${product_status.value}
    ELSE IF    '${field}' == '${flag_batch_management.field}'   
        Check box row 1                         ${flag_batch_management.field}            ${flag_batch_management.value}    ${flag_batch_management.uuid}
    ELSE IF    '${field}' == '${product_role.field}'   
        Dropdown row 1                          ${product_role.field}                     ${product_role.value}
    ELSE IF    '${field}' == '${abc_indicator.field}'   
        Dropdown row 1                          ${abc_indicator.field}                    ${abc_indicator.value}
    ELSE IF    '${field}' == '${product_sub_role.field}'   
        Dropdown row 1                          ${product_sub_role.field}                 ${product_sub_role.value}
    ELSE IF    '${field}' == '${product_trend.field}'   
        Dropdown row 1                          ${product_trend.field}                    ${product_trend.value}
    ELSE IF    '${field}' == '${purchaser_group_no.field}'   
        Dropdown row 1                          ${purchaser_group_no.field}               ${purchaser_group_no.value}
    ELSE IF    '${field}' == '${shipping_group.field}'   
        Dropdown row 1                          ${shipping_group.field}                   ${shipping_group.value}
    ELSE IF    '${field}' == '${status_purchase.field}'   
        Dropdown row 1                          ${status_purchase.field}                  ${status_purchase.value}
    ELSE IF    '${field}' == '${status_sale.field}'   
        Dropdown row 1                          ${status_sale.field}                      ${status_sale.value}            
    ELSE IF    '${field}' == '${stock_show.field}'   
        Dropdown row 1                          ${stock_show.field}                       ${stock_show.value}                   
    ELSE IF    '${field}' == '${product_sub_indicator.field}'   
        Dropdown row 1                          ${product_sub_indicator.field}            ${product_sub_indicator.value}
    END

No. 2 Edit field name (A1) :
    [Arguments]    ${field}
    IF         '${field}' == '${ownership_show.field}'
        Dropdown row 2                          ${ownership_show.field}                   ${ownership_show.value}                ${ownership_show.uuid}        
    ELSE IF    '${field}' == '${import_purchase.field}'   
        Dropdown row 2                          ${import_purchase.field}                  ${import_purchase.value}               ${import_purchase.uuid}
    ELSE IF    '${field}' == '${product_status.field}'   
        Dropdown row 2                          ${product_status.field}                   ${product_status.value}                ${product_status.uuid}
    ELSE IF    '${field}' == '${flag_batch_management.field}'   
        Check box row 2                         ${flag_batch_management.field}            ${flag_batch_management.value}         ${flag_batch_management.uuid}
    ELSE IF    '${field}' == '${product_role.field}'   
        Dropdown row 2                          ${product_role.field}                     ${product_role.value}                  ${product_role.uuid}
    ELSE IF    '${field}' == '${abc_indicator.field}'   
        Dropdown row 2                          ${abc_indicator.field}                    ${abc_indicator.value}                 ${abc_indicator.uuid}
    ELSE IF    '${field}' == '${product_sub_role.field}'   
        Dropdown row 2                          ${product_sub_role.field}                 ${product_sub_role.value}              ${product_sub_role.uuid}
    ELSE IF    '${field}' == '${product_trend.field}'   
        Dropdown row 2                          ${product_trend.field}                    ${product_trend.value}                 ${product_trend.uuid}
    ELSE IF    '${field}' == '${purchaser_group_no.field}'   
        Dropdown row 2                          ${purchaser_group_no.field}               ${purchaser_group_no.value}            ${purchaser_group_no.uuid}
    ELSE IF    '${field}' == '${shipping_group.field}'   
        Dropdown row 2                          ${shipping_group.field}                   ${shipping_group.value}                ${shipping_group.uuid}
    ELSE IF    '${field}' == '${status_purchase.field}'   
        Dropdown row 2                          ${status_purchase.field}                  ${status_purchase.value}               ${status_purchase.uuid}
    ELSE IF    '${field}' == '${status_sale.field}'   
        Dropdown row 2                          ${status_sale.field}                      ${status_sale.value}                   ${status_sale.uuid}           
    ELSE IF    '${field}' == '${stock_show.field}'   
        Dropdown row 2                          ${stock_show.field}                       ${stock_show.value}                    ${stock_show.uuid}                   
    ELSE IF    '${field}' == '${product_sub_indicator.field}'   
        Dropdown row 2                          ${product_sub_indicator.field}            ${product_sub_indicator.value}         ${product_sub_indicator.uuid}
    END

No. 3 Edit field name (A1) :
    [Arguments]    ${field}
    IF         '${field}' == '${ownership_show.field}'
        Dropdown row 3                          ${ownership_show.field}                   ${ownership_show.value}                ${ownership_show.uuid}        
    ELSE IF    '${field}' == '${import_purchase.field}'   
        Dropdown row 3                          ${import_purchase.field}                  ${import_purchase.value}               ${import_purchase.uuid}
    ELSE IF    '${field}' == '${product_status.field}'   
        Dropdown row 3                          ${product_status.field}                   ${product_status.value}                ${product_status.uuid}
    ELSE IF    '${field}' == '${flag_batch_management.field}'   
        Check box row 3                         ${flag_batch_management.field}            ${flag_batch_management.value}         ${flag_batch_management.uuid}
    ELSE IF    '${field}' == '${product_role.field}'   
        Dropdown row 3                          ${product_role.field}                     ${product_role.value}                  ${product_role.uuid}
    ELSE IF    '${field}' == '${abc_indicator.field}'   
        Dropdown row 3                          ${abc_indicator.field}                    ${abc_indicator.value}                 ${abc_indicator.uuid}
    ELSE IF    '${field}' == '${product_sub_role.field}'   
        Dropdown row 3                          ${product_sub_role.field}                 ${product_sub_role.value}              ${product_sub_role.uuid}
    ELSE IF    '${field}' == '${product_trend.field}'   
        Dropdown row 3                          ${product_trend.field}                    ${product_trend.value}                 ${product_trend.uuid}
    ELSE IF    '${field}' == '${purchaser_group_no.field}'   
        Dropdown row 3                          ${purchaser_group_no.field}               ${purchaser_group_no.value}            ${purchaser_group_no.uuid}
    ELSE IF    '${field}' == '${shipping_group.field}'   
        Dropdown row 3                          ${shipping_group.field}                   ${shipping_group.value}                ${shipping_group.uuid}
    ELSE IF    '${field}' == '${status_purchase.field}'   
        Dropdown row 3                          ${status_purchase.field}                  ${status_purchase.value}               ${status_purchase.uuid}
    ELSE IF    '${field}' == '${status_sale.field}'   
        Dropdown row 3                          ${status_sale.field}                      ${status_sale.value}                   ${status_sale.uuid}           
    ELSE IF    '${field}' == '${stock_show.field}'   
        Dropdown row 3                          ${stock_show.field}                       ${stock_show.value}                    ${stock_show.uuid}                   
    ELSE IF    '${field}' == '${product_sub_indicator.field}'   
        Dropdown row 3                          ${product_sub_indicator.field}            ${product_sub_indicator.value}         ${product_sub_indicator.uuid}
    END


No. 4 Edit field name (A1) :
    [Arguments]    ${field}
    IF         '${field}' == '${ownership_show.field}'
        Dropdown row 4                          ${ownership_show.field}                   ${ownership_show.value}                ${ownership_show.uuid}        
    ELSE IF    '${field}' == '${import_purchase.field}'   
        Dropdown row 4                          ${import_purchase.field}                  ${import_purchase.value}               ${import_purchase.uuid}
    ELSE IF    '${field}' == '${product_status.field}'   
        Dropdown row 4                          ${product_status.field}                   ${product_status.value}                ${product_status.uuid}
    ELSE IF    '${field}' == '${flag_batch_management.field}'   
        Check box row 4                         ${flag_batch_management.field}            ${flag_batch_management.value}         ${flag_batch_management.uuid}
    ELSE IF    '${field}' == '${product_role.field}'   
        Dropdown row 4                          ${product_role.field}                     ${product_role.value}                  ${product_role.uuid}
    ELSE IF    '${field}' == '${abc_indicator.field}'   
        Dropdown row 4                          ${abc_indicator.field}                    ${abc_indicator.value}                 ${abc_indicator.uuid}
    ELSE IF    '${field}' == '${product_sub_role.field}'   
        Dropdown row 4                          ${product_sub_role.field}                 ${product_sub_role.value}              ${product_sub_role.uuid}
    ELSE IF    '${field}' == '${product_trend.field}'   
        Dropdown row 4                          ${product_trend.field}                    ${product_trend.value}                 ${product_trend.uuid}
    ELSE IF    '${field}' == '${purchaser_group_no.field}'   
        Dropdown row 4                          ${purchaser_group_no.field}               ${purchaser_group_no.value}            ${purchaser_group_no.uuid}
    ELSE IF    '${field}' == '${shipping_group.field}'   
        Dropdown row 4                          ${shipping_group.field}                   ${shipping_group.value}                ${shipping_group.uuid}
    ELSE IF    '${field}' == '${status_purchase.field}'   
        Dropdown row 4                          ${status_purchase.field}                  ${status_purchase.value}               ${status_purchase.uuid}
    ELSE IF    '${field}' == '${status_sale.field}'   
        Dropdown row 4                          ${status_sale.field}                      ${status_sale.value}                   ${status_sale.uuid}           
    ELSE IF    '${field}' == '${stock_show.field}'   
        Dropdown row 4                          ${stock_show.field}                       ${stock_show.value}                    ${stock_show.uuid}                   
    ELSE IF    '${field}' == '${product_sub_indicator.field}'   
        Dropdown row 4                          ${product_sub_indicator.field}            ${product_sub_indicator.value}         ${product_sub_indicator.uuid}
    END


No. 5 Edit field name (A1) :
    [Arguments]    ${field}
    IF         '${field}' == '${ownership_show.field}'
        Dropdown row 5                          ${ownership_show.field}                   ${ownership_show.value}                ${ownership_show.uuid}        
    ELSE IF    '${field}' == '${import_purchase.field}'   
        Dropdown row 5                          ${import_purchase.field}                  ${import_purchase.value}               ${import_purchase.uuid}
    ELSE IF    '${field}' == '${product_status.field}'   
        Dropdown row 5                          ${product_status.field}                   ${product_status.value}                ${product_status.uuid}
    ELSE IF    '${field}' == '${flag_batch_management.field}'   
        Check box row 5                         ${flag_batch_management.field}            ${flag_batch_management.value}         ${flag_batch_management.uuid}
    ELSE IF    '${field}' == '${product_role.field}'   
        Dropdown row 5                          ${product_role.field}                     ${product_role.value}                  ${product_role.uuid}
    ELSE IF    '${field}' == '${abc_indicator.field}'   
        Dropdown row 5                          ${abc_indicator.field}                    ${abc_indicator.value}                 ${abc_indicator.uuid}
    ELSE IF    '${field}' == '${product_sub_role.field}'   
        Dropdown row 5                          ${product_sub_role.field}                 ${product_sub_role.value}              ${product_sub_role.uuid}
    ELSE IF    '${field}' == '${product_trend.field}'   
        Dropdown row 5                          ${product_trend.field}                    ${product_trend.value}                 ${product_trend.uuid}
    ELSE IF    '${field}' == '${purchaser_group_no.field}'   
        Dropdown row 5                          ${purchaser_group_no.field}               ${purchaser_group_no.value}            ${purchaser_group_no.uuid}
    ELSE IF    '${field}' == '${shipping_group.field}'   
        Dropdown row 5                          ${shipping_group.field}                   ${shipping_group.value}                ${shipping_group.uuid}
    ELSE IF    '${field}' == '${status_purchase.field}'   
        Dropdown row 5                          ${status_purchase.field}                  ${status_purchase.value}               ${status_purchase.uuid}
    ELSE IF    '${field}' == '${status_sale.field}'   
        Dropdown row 5                          ${status_sale.field}                      ${status_sale.value}                   ${status_sale.uuid}           
    ELSE IF    '${field}' == '${stock_show.field}'   
        Dropdown row 5                          ${stock_show.field}                       ${stock_show.value}                    ${stock_show.uuid}                   
    ELSE IF    '${field}' == '${product_sub_indicator.field}'   
        Dropdown row 5                          ${product_sub_indicator.field}            ${product_sub_indicator.value}         ${product_sub_indicator.uuid}
    END






*** Test Cases ***
Article Edit mass round 1
    [Setup]    Login dohome and click web art(Edit Mass) A2
    Search by article    10337742
    Check value article    10337742
    Click check box all article
    Click button edit field    
    No. 1 Edit field name (A1) :    กรรมสิทธิ์ของตัวโชว์
    No. 2 Edit field name (A1) :    กลุ่มจัดซื้อต่างประเทศ
    No. 3 Edit field name (A1) :    สถานะสินค้า Active / Inactive (Item Status)
    No. 4 Edit field name (A1) :    สินค้าที่ต้องระบุ batch (Batch management)
    No. 5 Edit field name (A1) :    กลุ่มสินค้า Core หลัก /เสริม (Product Role)





