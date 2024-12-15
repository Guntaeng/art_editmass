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
###################################### A1 ###################################
Edit field 1 (default) A1
    [Arguments]    ${run}
    IF    '${round_1}' == 'NR1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_1}
        ${values_new}           Set Variable    ${value_1}
        Dropdown row 1          ${master_tabcols_id}    ${values_new}
    ELSE IF    '${round_6}' == 'NR2' and '${run}' == 'Run 2'
        ${master_tabcols_id}    Set Variable    ${field_6}
        ${values_new}           Set Variable    ${value_6}
        Dropdown row 1          ${master_tabcols_id}    ${values_new}
    ELSE IF    '${round_11}' == 'NR3' and '${run}' == 'Run 3'
        ${master_tabcols_id}    Set Variable    ${field_11}
        ${values_new}           Set Variable    ${value_11}
        Dropdown row 1          ${master_tabcols_id}    ${values_new}
    END


Edit field 2 (default) A1
    [Arguments]    ${run}
    IF    '${round_2}' == 'NR1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_2}
        ${values_new}           Set Variable    ${value_2}
        ${new_uuid}             Set Variable    ${uuid_2}
        Dropdown row 2          ${master_tabcols_id}    ${values_new}    ${new_uuid}
    ELSE IF    '${round_7}' == 'NR2' and '${run}' == 'Run 2'
        ${master_tabcols_id}    Set Variable    ${field_7}
        ${values_new}           Set Variable    ${value_7}
        ${new_uuid}             Set Variable    ${uuid_7}
        Dropdown row 2          ${master_tabcols_id}    ${values_new}    ${new_uuid}
    ELSE IF    '${round_12}' == 'NR3' and '${run}' == 'Run 3'
        ${master_tabcols_id}    Set Variable    ${field_12}
        ${values_new}           Set Variable    ${value_12}
        ${new_uuid}             Set Variable    ${uuid_12}
        Dropdown row 2          ${master_tabcols_id}    ${values_new}    ${new_uuid}
    END


Edit field 3 (default) A1
    [Arguments]    ${run}
    IF    '${round_3}' == 'NR1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_3}
        ${values_new}           Set Variable    ${value_3}
        ${new_uuid}             Set Variable    ${uuid_3}
        Dropdown row 3          ${master_tabcols_id}    ${values_new}    ${new_uuid}
    ELSE IF    '${round_8}' == 'NR2' and '${run}' == 'Run 2'
        ${master_tabcols_id}    Set Variable    ${field_8}
        ${values_new}           Set Variable    ${value_8}
        ${new_uuid}             Set Variable    ${uuid_8}
        Dropdown row 3          ${master_tabcols_id}    ${values_new}    ${new_uuid}
    ELSE IF    '${round_13}' == 'NR3' and '${run}' == 'Run 3'
        ${master_tabcols_id}    Set Variable    ${field_13}
        ${values_new}           Set Variable    ${value_13}
        ${new_uuid}             Set Variable    ${uuid_13}
        Dropdown row 3          ${master_tabcols_id}    ${values_new}    ${new_uuid}
    END

Edit field 4 (default) A1
    [Arguments]    ${run}
    IF    '${round_4}' == 'NR1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_4}
        ${values_new}           Set Variable    ${value_4}
        ${new_uuid}             Set Variable    ${uuid_4}
        Check box row 4         ${master_tabcols_id}    ${values_new}    ${new_uuid}
    ELSE IF    '${round_9}' == 'NR2' and '${run}' == 'Run 2'
        ${master_tabcols_id}    Set Variable    ${field_9}
        ${values_new}           Set Variable    ${value_9}
        ${new_uuid}             Set Variable    ${uuid_9}
        Dropdown row 4          ${master_tabcols_id}    ${values_new}    ${new_uuid}
    ELSE IF    '${round_14}' == 'NR3' and '${run}' == 'Run 3'
        ${master_tabcols_id}    Set Variable    ${field_14}
        ${values_new}           Set Variable    ${value_14}
        ${new_uuid}             Set Variable    ${uuid_14}
        Dropdown row 4          ${master_tabcols_id}    ${values_new}    ${new_uuid}
    END

Edit field 5 (default) A1
    [Arguments]    ${run}
    IF    '${round_5}' == 'NR1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_5}
        ${values_new}           Set Variable    ${value_5}
        ${new_uuid}             Set Variable    ${uuid_5}
        Dropdown row 5          ${master_tabcols_id}    ${values_new}    ${new_uuid}
    ELSE IF    '${round_10}' == 'NR2' and '${run}' == 'Run 2'
        ${master_tabcols_id}    Set Variable    ${field_10}
        ${values_new}           Set Variable    ${value_10}
        ${new_uuid}             Set Variable    ${uuid_10}
        Dropdown row 5          ${master_tabcols_id}    ${values_new}    ${new_uuid}
    ELSE IF    '${round_15}' == 'NR3' and '${run}' == 'Run 3'
        ${master_tabcols_id}    Set Variable    ${field_15}
        ${values_new}           Set Variable    ${value_15}
        ${new_uuid}             Set Variable    ${uuid_15}
        Dropdown row 5          ${master_tabcols_id}    ${values_new}    ${new_uuid}
    END


###################################### A2 ###################################
Edit field 1 (default) A2
    [Arguments]    ${run}
    IF    '${round_1}' == 'NR1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_1} 
        ${values_new}           Set Variable    ${value_1} 
        Input text editmass row 1    ${master_tabcols_id}    ${values_new}
    ELSE IF    '${round_6}' == 'NR2' and '${run}' == 'Run 2'
        ${master_tabcols_id}    Set Variable    ${field_6}
        ${values_new}           Set Variable    ${value_6}
        Input text editmass row 1    ${master_tabcols_id}    ${values_new}       
    ELSE IF    '${round_11}' == 'NR3' and '${run}' == 'Run 3'
        ${master_tabcols_id}    Set Variable    ${field_11}
        ${values_new}           Set Variable    ${value_11}
        Input text editmass row 1    ${master_tabcols_id}    ${values_new}       
    ELSE IF    '${round_16}' == 'NR4' and '${run}' == 'Run 4'
        ${master_tabcols_id}    Set Variable    ${field_16}
        ${values_new}           Set Variable    ${value_16}
        Input text editmass row 1 (day warranty)   ${master_tabcols_id}    ${values_new}       
    ELSE IF    '${round_21}' == 'NR5' and '${run}' == 'Run 5'
        ${master_tabcols_id}    Set Variable    ${field_21}
        ${values_new}           Set Variable    ${value_21}
        Dropdown row 1    ${master_tabcols_id}    ${values_new}       
    ELSE IF    '${round_26}' == 'NR6' and '${run}' == 'Run 6'
        ${master_tabcols_id}    Set Variable    ${field_26}
        ${values_new}           Set Variable    ${value_26}
        Dropdown row 1    ${master_tabcols_id}    ${values_new}       
    ELSE IF    '${round_31}' == 'NR7' and '${run}' == 'Run 7'
        ${master_tabcols_id}    Set Variable    ${field_31}
        ${values_new}           Set Variable    ${value_31}
        Input text editmass row 1    ${master_tabcols_id}    ${values_new}       
    END


Edit field 2 (default) A2
    [Arguments]    ${run}    
    IF    '${round_2}' == 'NR1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_2} 
        ${values_new}           Set Variable    ${value_2} 
        ${new_uuid}             Set Variable    ${uuid_2} 
        Dropdown row 2    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    ELSE IF    '${round_7}' == 'NR2' and '${run}' == 'Run 2'
        ${master_tabcols_id}    Set Variable    ${field_7}
        ${values_new}           Set Variable    ${value_7}
        ${new_uuid}             Set Variable    ${uuid_7}
        Check box month row 2    ${master_tabcols_id}    ${values_new}    ${new_uuid}       
    ELSE IF    '${round_12}' == 'NR3' and '${run}' == 'Run 3'
        ${master_tabcols_id}    Set Variable    ${field_12}
        ${values_new}           Set Variable    ${value_12}
        ${new_uuid}             Set Variable    ${uuid_12}
        Input text editmass row 2    ${master_tabcols_id}    ${values_new}    ${new_uuid}       
    ELSE IF    '${round_17}' == 'NR4' and '${run}' == 'Run 4'
        ${master_tabcols_id}    Set Variable    ${field_17}
        ${values_new}           Set Variable    ${value_17}
        ${new_uuid}             Set Variable    ${uuid_17}
        Input text editmass row 2    ${master_tabcols_id}    ${values_new}    ${new_uuid}      
    ELSE IF    '${round_22}' == 'NR5' and '${run}' == 'Run 5'
        ${master_tabcols_id}    Set Variable    ${field_22}
        ${values_new}           Set Variable    ${value_22}
        ${new_uuid}             Set Variable    ${uuid_22}
        Dropdown row 2    ${master_tabcols_id}    ${values_new}    ${new_uuid}       
    ELSE IF    '${round_27}' == 'NR6' and '${run}' == 'Run 6'
        ${master_tabcols_id}    Set Variable    ${field_27}
        ${values_new}           Set Variable    ${value_27}
        ${new_uuid}             Set Variable    ${uuid_27}
        Input text editmass row 2    ${master_tabcols_id}    ${values_new}    ${new_uuid}       
    ELSE IF    '${round_32}' == 'NR7' and '${run}' == 'Run 7'
        ${master_tabcols_id}    Set Variable    ${field_32}
        ${values_new}           Set Variable    ${value_32}
        ${new_uuid}             Set Variable    ${uuid_32}
        Input text editmass row 2 (day warranty)    ${master_tabcols_id}    ${values_new}    ${new_uuid}       
    END


Edit field 3 (default) A2
    [Arguments]    ${run}
    IF    '${round_3}' == 'NR1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_3} 
        ${values_new}           Set Variable    ${value_3} 
        ${new_uuid}             Set Variable    ${uuid_3}  
        Check box month row 3    ${master_tabcols_id}    ${values_new}    ${new_uuid} 
    ELSE IF    '${round_8}' == 'NR2' and '${run}' == 'Run 2'
        ${master_tabcols_id}    Set Variable    ${field_8}
        ${values_new}           Set Variable    ${value_8}
        ${new_uuid}             Set Variable    ${uuid_8}
        Input text editmass row 3 (section14)    ${master_tabcols_id}    ${values_new}     ${new_uuid}      
    ELSE IF    '${round_13}' == 'NR3' and '${run}' == 'Run 3'
        ${master_tabcols_id}    Set Variable    ${field_13}
        ${values_new}           Set Variable    ${value_13}
        ${new_uuid}             Set Variable    ${uuid_13}
        Dropdown row 3   ${master_tabcols_id}    ${values_new}    ${new_uuid}      
    ELSE IF    '${round_18}' == 'NR4' and '${run}' == 'Run 4'
        ${master_tabcols_id}    Set Variable    ${field_18}
        ${values_new}           Set Variable    ${value_18}
        ${new_uuid}             Set Variable    ${uuid_18}
        Dropdown row 3    ${master_tabcols_id}    ${values_new}     ${new_uuid}      
    ELSE IF    '${round_23}' == 'NR5' and '${run}' == 'Run 5'
        ${master_tabcols_id}    Set Variable    ${field_23}
        ${values_new}           Set Variable    ${value_23}
        ${new_uuid}             Set Variable    ${uuid_23}
        Dropdown row 3    ${master_tabcols_id}    ${values_new}     ${new_uuid}      
    ELSE IF    '${round_28}' == 'NR6' and '${run}' == 'Run 6'
        ${master_tabcols_id}    Set Variable    ${field_28}
        ${values_new}           Set Variable    ${value_28}
        ${new_uuid}             Set Variable    ${uuid_28}
        Dropdown row 3    ${master_tabcols_id}    ${values_new}     ${new_uuid}      
    ELSE IF    '${round_33}' == 'NR7' and '${run}' == 'Run 7'
        ${master_tabcols_id}    Set Variable    ${field_33}
        ${values_new}           Set Variable    ${value_33}
        ${new_uuid}             Set Variable    ${uuid_33}
        Dropdown row 3    ${master_tabcols_id}    ${values_new}    ${new_uuid}       
    END


Edit field 4 (default) A2
    [Arguments]    ${run}
    IF    '${round_4}' == 'NR1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_4} 
        ${values_new}           Set Variable    ${value_4} 
        ${new_uuid}             Set Variable    ${uuid_4}  
        Input text editmass row 4    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    ELSE IF    '${round_9}' == 'NR2' and '${run}' == 'Run 2'
        ${master_tabcols_id}    Set Variable    ${field_9}
        ${values_new}           Set Variable    ${value_9}
        ${new_uuid}             Set Variable    ${uuid_9}
        Input text editmass row 4      ${master_tabcols_id}    ${values_new}     ${new_uuid}      
    ELSE IF    '${round_14}' == 'NR3' and '${run}' == 'Run 3'
        ${master_tabcols_id}    Set Variable    ${field_14}
        ${values_new}           Set Variable    ${value_14}
        ${new_uuid}             Set Variable    ${uuid_14}
        Dropdown row 4   ${master_tabcols_id}    ${values_new}    ${new_uuid}      
    ELSE IF    '${round_19}' == 'NR4' and '${run}' == 'Run 4'
        ${master_tabcols_id}    Set Variable    ${field_19}
        ${values_new}           Set Variable    ${value_19}
        ${new_uuid}             Set Variable    ${uuid_19}
        Dropdown row 4    ${master_tabcols_id}    ${values_new}     ${new_uuid}      
    ELSE IF    '${round_24}' == 'NR5' and '${run}' == 'Run 5'
        ${master_tabcols_id}    Set Variable    ${field_24}
        ${values_new}           Set Variable    ${value_24}
        ${new_uuid}             Set Variable    ${uuid_24}
        Dropdown row 4    ${master_tabcols_id}    ${values_new}     ${new_uuid}      
    ELSE IF    '${round_29}' == 'NR6' and '${run}' == 'Run 6'
        ${master_tabcols_id}    Set Variable    ${field_29}
        ${values_new}           Set Variable    ${value_29}
        ${new_uuid}             Set Variable    ${uuid_29}
        Dropdown row 4    ${master_tabcols_id}    ${values_new}     ${new_uuid}      
    END


Edit field 5 (default) A2
    [Arguments]    ${run}
    IF    '${round_5}' == 'NR1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_5} 
        ${values_new}           Set Variable    ${value_5} 
        ${new_uuid}             Set Variable    ${uuid_5}  
        Dropdown row 5    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    ELSE IF    '${round_10}' == 'NR2' and '${run}' == 'Run 2'
        ${master_tabcols_id}    Set Variable    ${field_10}
        ${values_new}           Set Variable    ${value_10}
        ${new_uuid}             Set Variable    ${uuid_10}
        Input text editmass row 5 (day warranty)    ${master_tabcols_id}    ${values_new}     ${new_uuid}      
    ELSE IF    '${round_15}' == 'NR3' and '${run}' == 'Run 3'
        ${master_tabcols_id}    Set Variable    ${field_15}
        ${values_new}           Set Variable    ${value_15}
        ${new_uuid}             Set Variable    ${uuid_15}
        Input text editmass row 5    ${master_tabcols_id}    ${values_new}    ${new_uuid}      
    ELSE IF    '${round_20}' == 'NR4' and '${run}' == 'Run 4'
        ${master_tabcols_id}    Set Variable    ${field_20}
        ${values_new}           Set Variable    ${value_20}
        ${new_uuid}             Set Variable    ${uuid_20}
        Dropdown row 5   ${master_tabcols_id}    ${values_new}     ${new_uuid}      
    ELSE IF    '${round_25}' == 'NR5' and '${run}' == 'Run 5'
        ${master_tabcols_id}    Set Variable    ${field_25}
        ${values_new}           Set Variable    ${value_25}
        ${new_uuid}             Set Variable    ${uuid_25}
        Dropdown row 5    ${master_tabcols_id}    ${values_new}     ${new_uuid}      
    ELSE IF    '${round_30}' == 'NR6' and '${run}' == 'Run 6'
        ${master_tabcols_id}    Set Variable    ${field_30}
        ${values_new}           Set Variable    ${value_30}
        ${new_uuid}             Set Variable    ${uuid_30}
        Input text editmass row 5 (day warranty)    ${master_tabcols_id}    ${values_new}     ${new_uuid}      
    END






############################## A3 ############################################
Edit field 1 (default) A3
    [Arguments]    ${run}
    IF    '${round_1}' == 'NR1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_1} 
        ${values_new}           Set Variable    ${value_1} 
        ${new_uuid}             Set Variable    ${uuid_1}
        Check box and Channel row 1    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    ELSE IF    '${round_6}' == 'NR2' and '${run}' == 'Run 2'
        ${master_tabcols_id}    Set Variable    ${field_6}
        ${values_new}           Set Variable    ${value_6}
        Dropdown row 1    ${master_tabcols_id}    ${values_new}       
    ELSE IF    '${round_11}' == 'NR3' and '${run}' == 'Run 3'
        ${master_tabcols_id}    Set Variable    ${field_11}
        ${values_new}           Set Variable    ${value_11}
        Dropdown row 1    ${master_tabcols_id}    ${values_new}       
    END


Edit field 2 (default) A3
    [Arguments]    ${run}    
    IF    '${round_2}' == 'NR1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_2} 
        ${values_new}           Set Variable    ${value_2} 
        ${new_uuid}             Set Variable    ${uuid_2} 
        Dropdown row 2    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    ELSE IF    '${round_7}' == 'NR2' and '${run}' == 'Run 2'
        ${master_tabcols_id}    Set Variable    ${field_7}
        ${values_new}           Set Variable    ${value_7}
        ${new_uuid}             Set Variable    ${uuid_7}
        Dropdown row 2    ${master_tabcols_id}    ${values_new}    ${new_uuid}       
    ELSE IF    '${round_12}' == 'NR3' and '${run}' == 'Run 3'
        ${master_tabcols_id}    Set Variable    ${field_12}
        ${values_new}           Set Variable    ${value_12}
        ${new_uuid}             Set Variable    ${uuid_12}
        Dropdown row 2    ${master_tabcols_id}    ${values_new}    ${new_uuid} 
    END      



Edit field 3 (default) A3
    [Arguments]    ${run}
    IF    '${round_3}' == 'NR1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_3} 
        ${values_new}           Set Variable    ${value_3} 
        ${new_uuid}             Set Variable    ${uuid_3}  
        Check box row 3    ${master_tabcols_id}    ${values_new}    ${new_uuid} 
    ELSE IF    '${round_8}' == 'NR2' and '${run}' == 'Run 2'
        ${master_tabcols_id}    Set Variable    ${field_8}
        ${values_new}           Set Variable    ${value_8}
        ${new_uuid}             Set Variable    ${uuid_8}
        Dropdown row 3    ${master_tabcols_id}    ${values_new}     ${new_uuid}      
    ELSE IF    '${round_13}' == 'NR3' and '${run}' == 'Run 3'
        ${master_tabcols_id}    Set Variable    ${field_13}
        ${values_new}           Set Variable    ${value_13}
        ${new_uuid}             Set Variable    ${uuid_13}
        Dropdown row 3   ${master_tabcols_id}    ${values_new}    ${new_uuid}  
    END    



Edit field 4 (default) A3
    [Arguments]    ${run}
    IF    '${round_4}' == 'NR1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_4} 
        ${values_new}           Set Variable    ${value_4} 
        ${new_uuid}             Set Variable    ${uuid_4}  
        Dropdown row 4    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    ELSE IF    '${round_9}' == 'NR2' and '${run}' == 'Run 2'
        ${master_tabcols_id}    Set Variable    ${field_9}
        ${values_new}           Set Variable    ${value_9}
        ${new_uuid}             Set Variable    ${uuid_9}
        Dropdown row 4      ${master_tabcols_id}    ${values_new}     ${new_uuid}      
    ELSE IF    '${round_14}' == 'NR3' and '${run}' == 'Run 3'
        ${master_tabcols_id}    Set Variable    ${field_14}
        ${values_new}           Set Variable    ${value_14}
        ${new_uuid}             Set Variable    ${uuid_14}
        Dropdown row 4   ${master_tabcols_id}    ${values_new}    ${new_uuid}   
    END   



Edit field 5 (default) A3
    [Arguments]    ${run}
    IF    '${round_5}' == 'NR1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_5} 
        ${values_new}           Set Variable    ${value_5} 
        ${new_uuid}             Set Variable    ${uuid_5}  
        Dropdown row 5    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    ELSE IF    '${round_10}' == 'NR2' and '${run}' == 'Run 2'
        ${master_tabcols_id}    Set Variable    ${field_10}
        ${values_new}           Set Variable    ${value_10}
        ${new_uuid}             Set Variable    ${uuid_10}
        Dropdown row 5    ${master_tabcols_id}    ${values_new}     ${new_uuid}      
    ELSE IF    '${round_15}' == 'NR3' and '${run}' == 'Run 3'
        ${master_tabcols_id}    Set Variable    ${field_15}
        ${values_new}           Set Variable    ${value_15}
        ${new_uuid}             Set Variable    ${uuid_15}
        Dropdown row 5    ${master_tabcols_id}    ${values_new}    ${new_uuid}      
    END
