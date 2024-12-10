*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/config_art.robot
Resource    ../keywords/common_art.robot
Resource    ../keywords/Type_field_values/input_text.robot
Resource    ../keywords/Type_field_values/drop_down.robot
Resource    ../keywords/Type_field_values/check_box.robot
Resource    ../keywords/Read_csv/Read_data_csv.robot
Library    BuiltIn
Library    OperatingSystem
Library    Collections
Library    String
Library    DebugLibrary

*** Keywords ***
Edit field 1 (default)
    [Arguments]    ${run}
    IF    '${round_1}' == 'NR1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_1} 
        ${values_new}    Set Variable    ${value_1} 
        Input text editmass row 1    ${master_tabcols_id}    ${values_new}
    END


Edit field 2 (default)
    [Arguments]    ${run}    
    IF    '${round_2}' == 'NR1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_2} 
        ${values_new}    Set Variable    ${value_2} 
        ${new_uuid}    Set Variable    ${uuid_2} 
        Dropdown row 2    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    END


Edit field 3 (default)
    [Arguments]    ${run}
    IF    '${round_3}' == 'NR1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_3} 
        ${values_new}    Set Variable    ${value_3} 
        ${new_uuid}    Set Variable    ${uuid_3}  
        Check box month row 3    ${master_tabcols_id}    ${values_new}    ${new_uuid} 
    END


Edit field 4 (default)
    [Arguments]    ${run}
    IF    '${round_4}' == 'NR1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_4} 
        ${values_new}    Set Variable    ${value_4} 
        ${new_uuid}    Set Variable    ${uuid_4}  
        Input text editmass row 4    ${master_tabcols_id}    ${values_new}    ${new_uuid}         
    END


Edit field 5 (default)
    [Arguments]    ${run}
    IF    '${round_5}' == 'NR1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_5} 
        ${values_new}    Set Variable    ${value_5} 
        ${new_uuid}    Set Variable    ${uuid_5}  
        Input text editmass row 5    ${master_tabcols_id}    ${values_new}    ${new_uuid}         
    END
