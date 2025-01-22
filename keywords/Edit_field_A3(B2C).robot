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
Variables    ../resources/field_B2C_A3.yaml

*** Keywords ***
No. 1 Edit field name (ฺB2C/A3) :
    [Arguments]    ${field}
    IF         '${field}' == '${product_categories_level.field}'
        Dropdown row 1                           ${product_categories_level.field}               ${product_categories_level.value}            ${product_categories_level.uuid}
    END

No. 2 Edit field name (ฺB2C/A3) :
    [Arguments]    ${field}
    IF         '${field}' == '${product_categories_level.field}'
        Input text editmass row 2                           ${product_categories_level.field}               ${product_categories_level.value}                     ${product_categories_level.uuid}
    END

No. 3 Edit field name (ฺB2C/A3) :
    [Arguments]    ${field}
    IF         '${field}' == '${product_categories_level.field}'
        Input text editmass row 3                           ${product_categories_level.field}               ${product_categories_level.value}                     ${product_categories_level.uuid}
    END


No. 4 Edit field name (ฺB2C/A3) :
    [Arguments]    ${field}
    IF         '${field}' == '${product_categories_level.field}'
        Input text editmass row 4                           ${product_categories_level.field}               ${product_categories_level.value}                     ${product_categories_level.uuid}
    END


No. 5 Edit field name (ฺB2C/A3) :
    [Arguments]    ${field}
    IF         '${field}' == '${product_categories_level.field}'
        Input text editmass row 5                           ${product_categories_level.field}               ${product_categories_level.value}                     ${product_categories_level.uuid}
    END






*** Test Cases ***
Article Edit mass round 1
    [Setup]    Login dohome and click web art(Edit Mass) A3
    Search by article    10337742
    Check value article    10337742
    Click check box all article
    Click button edit field    
    No. 1 Edit field name (ฺB2C/A3) :    Categories
    



