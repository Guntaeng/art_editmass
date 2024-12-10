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
Search by article
    [Arguments]    @{articles}
    Wait And Click Element    //input[@name="article_id"]
    Wait And Click Element    //textarea[@name="article"]
    FOR    ${article}    IN    @{articles}
        ${current_text}=    Get Value    //textarea[@name="article"]
        ${new_text}=    Set Variable    ${current_text}\n${article}
        Wait And Input Text with Delay    //textarea[@name="article"]    ${new_text}
    END
    Wait And Click Element    //span[text()="ส่ง"]/parent::button
    Wait And Click Element    //span[text()="ค้นหา"]/parent::button

###ส่วนใช้งาน standard
Click check box all article    
    Wait And Click Element    //span[text()="เลือกทั้งหมด"]/preceding-sibling::span

Click button edit field
    Wait And Click Element    //span[text()="แก้ไขค่าของฟิลด์"]/parent::button

Click button Confirm edit field
    Wait And Click Element    //span[text()="ยืนยัน"]/parent::button
    Wait And Wait Until Element Is Visible    //span[text()="ขออนุมัติแก้ไข"]/parent::button
    Sleep    3s

Click button Approve edit field
    Wait And Click Element    //span[text()="ขออนุมัติแก้ไข"]/parent::button
    Wait And Click Element    //span[text()="ยกเลิก"]/ancestor::div[2]/following-sibling::div//button
    Wait And Click Element    //span[text()="ยืนยัน"]/parent::button
    Wait Until Page Contains    อนุมัติแก้ไขสำเร็จ    timeout=10s



### *** การกรอกข้อมูล A2 ################################################################################################################################
Edit field 1 (B2C) A2
    [Arguments]    ${run}
    IF    '${round_1}' == 'X1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_1} 
        ${values_new}    Set Variable    ${value_1} 
        Input text editmass row 1    ${master_tabcols_id}    ${values_new}
    ELSE IF    '${round_6}' == 'X2' and '${run}' == 'Run 2'
        ${master_tabcols_id}    Set Variable    ${field_6}
        ${values_new}    Set Variable    ${value_6}
        Input text editmass row 1 (section14)    ${master_tabcols_id}    ${values_new}       
    ELSE IF    '${round_11}' == 'X3' and '${run}' == 'Run 3'
        ${master_tabcols_id}    Set Variable    ${field_11}
        ${values_new}    Set Variable    ${value_11}
        Input text editmass row 1 (day warranty)    ${master_tabcols_id}    ${values_new}
    END


Edit field 2 (B2C) A2
    [Arguments]    ${run}    
    IF    '${round_2}' == 'X1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_2} 
        ${values_new}    Set Variable    ${value_2} 
        ${new_uuid}    Set Variable    ${uuid_2} 
        Input text editmass row 2    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    ELSE IF    '${round_7}' == 'X2' and '${run}' == 'Run 2' 
        ${master_tabcols_id}    Set Variable    ${field_7} 
        ${values_new}    Set Variable    ${value_7} 
        ${new_uuid}    Set Variable    ${uuid_7} 
        Input text editmass row 2 (section14)    ${master_tabcols_id}    ${values_new}    ${new_uuid}        
    ELSE IF    '${round_12}' == 'X3' and '${run}' == 'Run 3'
        ${master_tabcols_id}    Set Variable    ${field_12} 
        ${values_new}    Set Variable    ${value_12} 
        ${new_uuid}    Set Variable    ${uuid_12} 
        Dropdown row 2    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    END


Edit field 3 (B2C) A2
    [Arguments]    ${run}
    IF    '${round_3}' == 'X1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_3} 
        ${values_new}    Set Variable    ${value_3} 
        ${new_uuid}    Set Variable    ${uuid_3}  
        Input text editmass row 3    ${master_tabcols_id}    ${values_new}    ${new_uuid} 
    ELSE IF    '${round_8}' == 'X2' and '${run}' == 'Run 2'
        ${master_tabcols_id}    Set Variable    ${field_8} 
        ${values_new}    Set Variable    ${value_8} 
        ${new_uuid}    Set Variable    ${uuid_8}  
        Input text editmass row 3 (section14)     ${master_tabcols_id}    ${values_new}    ${new_uuid}         
    ELSE IF    '${round_13}' == 'X3' and '${run}' == 'Run 3'
        ${master_tabcols_id}    Set Variable    ${field_13} 
        ${values_new}    Set Variable    ${value_13} 
        ${new_uuid}    Set Variable    ${uuid_13}  
        Dropdown row 3 (type warranty)    ${master_tabcols_id}    ${values_new}    ${new_uuid}        
    END


Edit field 4 (B2C) A2
    [Arguments]    ${run}
    IF    '${round_4}' == 'X1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_4} 
        ${values_new}    Set Variable    ${value_4} 
        ${new_uuid}    Set Variable    ${uuid_4}  
        Input text editmass row 4    ${master_tabcols_id}    ${values_new}    ${new_uuid}         
    ELSE IF    '${round_9}' == 'X2' and '${run}' == 'Run 2'
        ${master_tabcols_id}    Set Variable    ${field_9} 
        ${values_new}    Set Variable    ${value_9} 
        ${new_uuid}    Set Variable    ${uuid_9}  
        Input text editmass row 4 (section14)    ${master_tabcols_id}    ${values_new}    ${new_uuid}        
    ELSE IF    '${round_14}' == 'X3' and '${run}' == 'Run 3'
        ${master_tabcols_id}    Set Variable    ${field_14} 
        ${values_new}    Set Variable    ${value_14} 
        ${new_uuid}    Set Variable    ${uuid_14}  
        Dropdown row 1 (c1,c2,c3)    ${master_tabcols_id}    ${values_new}    ${new_uuid}        
    END


Edit field 5 (B2C) A2
    [Arguments]    ${run}
    IF    '${round_5}' == 'X1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_5} 
        ${values_new}    Set Variable    ${value_5} 
        ${new_uuid}    Set Variable    ${uuid_5}  
        Input text editmass row 5    ${master_tabcols_id}    ${values_new}    ${new_uuid}         
    ELSE IF    '${round_10}' == 'X2' and '${run}' == 'Run 2'
        ${master_tabcols_id}    Set Variable    ${field_10} 
        ${values_new}    Set Variable    ${value_10} 
        ${new_uuid}    Set Variable    ${uuid_10}  
        Input text editmass row 5 (section14)    ${master_tabcols_id}    ${values_new}    ${new_uuid}         
    END




### *** การกรอกข้อมูล A3 ################################################################################################################################


Edit field 1 (B2C) A3
    [Arguments]    ${run}
    IF    '${round_1}' == 'X1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_1} 
        ${values_new}    Set Variable    ${value_1} 
        Dropdown row 1    ${master_tabcols_id}    ${values_new}
    END


Edit field 2 (B2C) A3
    [Arguments]    ${run}    
    IF    '${round_2}' == 'X1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_2} 
        ${values_new}    Set Variable    ${value_2} 
        ${new_uuid}    Set Variable    ${uuid_2} 
        Dropdown row 2    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    END


Edit field 3 (B2C) A3
    [Arguments]    ${run}
    IF    '${round_3}' == 'X1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_3} 
        ${values_new}    Set Variable    ${value_3} 
        ${new_uuid}    Set Variable    ${uuid_3}  
        Check box month row 3    ${master_tabcols_id}    ${values_new}    ${new_uuid} 
    END


Edit field 4 (B2C) A3
    [Arguments]    ${run}
    IF    '${round_4}' == 'X1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_4} 
        ${values_new}    Set Variable    ${value_4} 
        ${new_uuid}    Set Variable    ${uuid_4}  
        Input text editmass row 4    ${master_tabcols_id}    ${values_new}    ${new_uuid}         
    END


Edit field 5 (B2C) A3
    [Arguments]    ${run}
    IF    '${round_5}' == 'X1' and '${run}' == 'Run 1'
        ${master_tabcols_id}    Set Variable    ${field_5} 
        ${values_new}    Set Variable    ${value_5} 
        ${new_uuid}    Set Variable    ${uuid_5}  
        Input text editmass row 5    ${master_tabcols_id}    ${values_new}    ${new_uuid}         
    END




















#input text
#ชื่อสินค้า Commercial (ภาษาอังกฤษ) 
#ชื่อสินค้า Commercial (ภาษาไทย) 
#รุ่นของสินค้า
#เลขที่ มอก. (TIS Number)
#เลขที่ใบอนุญาต มอก. (TIS License)
#จุดเด่นจุดขาย
#คุณสมบัติสินค้า
#การบำรุงรักษา
#การใช้งาน
#ข้อควรระวัง
#จำนวน(วัน)

#dropdown
#ชื่อแบรนด์สินค้า(ยี่ห้อ) (Brand)
#ประเภทของการรับประกัน > preekey down ก่อนค่อย enter
#กำหนดรูปแบบการขาย 




