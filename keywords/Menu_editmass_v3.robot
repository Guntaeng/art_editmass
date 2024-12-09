*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/config_art.robot
Resource    ../keywords/common_art.robot
Library    ../resources/csv_ready.py
Library    ../resources/csv_ready_v2.py
Library    CSVLibrary
Library    BuiltIn
Library    OperatingSystem
Library    Collections
Library    String
Library    DebugLibrary


*** Variables ***
${CSV_PATH}    resources/edit_mass_2.csv  


*** Keywords ***
Process CSV Rows
    ${result}=    Read Csv    ${CSV_PATH}
    # กำหนดค่าตัวแปร ${x_rows} เป็น list ที่อ่านจาก CSV
    ${x_rows}=    Set Variable    ${result}
    # เริ่มต้นที่ index 1
    ${index}=    Set Variable    1
    # วนลูปข้อมูลใน ${x_rows}
    FOR    ${row}    IN    @{x_rows}
        # ดึงค่าจาก dictionary โดยใช้คีย์ที่มี ${}
        ${level_approve}=    Get From Dictionary    ${row}    level_approve    default=Not Found
        ${round}=            Get From Dictionary    ${row}    round    default=Not Found
        ${field}=            Get From Dictionary    ${row}    field    default=Not Found
        ${value}=            Get From Dictionary    ${row}    value    default=Not Found
        ${uuid}=             Get From Dictionary    ${row}    uuid    default=Not Found
        # เซ็ตตัวแปรตามลำดับที่ได้จาก index
        Set Suite Variable    ${level_approve_${index}}    ${level_approve}
        Set Suite Variable    ${round_${index}}           ${round}
        Set Suite Variable    ${field_${index}}           ${field}
        Set Suite Variable    ${value_${index}}           ${value}
        Set Suite Variable    ${uuid_${index}}            ${uuid}
        # เพิ่มค่า index และวนกลับไป 1 เมื่อถึง 5
        ${index}=    Evaluate    (${index}) + 1
    END


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

Click button Approve edit field
    Wait And Click Element    //span[text()="ขออนุมัติแก้ไข"]/parent::button
    Wait And Click Element    //span[text()="ยกเลิก"]/ancestor::div[2]/following-sibling::div//button
    Wait And Click Element    //span[text()="ยืนยัน"]/parent::button
    Wait Until Page Contains    อนุมัติแก้ไขสำเร็จ    timeout=10s



#การกรอกข้อมูล
Edit field 1
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
    ELSE IF    '${round_15}' == 'X4' and '${run}' == 'Run 4'    ###A3
        ${master_tabcols_id}    Set Variable    ${field_15}
        ${values_new}    Set Variable    ${value_15}
        Dropdown row 1    ${master_tabcols_id}    ${values_new}
    END


Edit field 2
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
    ELSE IF    '${round_16}' == 'X4' and '${run}' == 'Run 4'
        ${master_tabcols_id}    Set Variable    ${field_16} 
        ${values_new}    Set Variable    ${value_16} 
        ${new_uuid}    Set Variable    ${uuid_16} 
        Dropdown row 2    ${master_tabcols_id}    ${values_new}    ${new_uuid}                
    END


Edit field 3
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


Edit field 4
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


Edit field 5
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



Input text editmass row 1
    [Arguments]    ${master_tabcols_id}    ${values_new}   
    Wait And Click Element    //input[@name="master_tabcols_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    ${master_tabcols_id}
    Wait And Press Keys    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //input[@name="values_new"]
    Wait And Input Text with Delay    //input[@name="values_new"]    ${values_new}
    

Input text editmass row 2
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}  
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id}
    Wait And Press Keys    xpath=//div[4]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${values_new}
    

Input text editmass row 3
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}  
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id}
    Wait And Press Keys    xpath=//div[5]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input      \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${values_new}
    #Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    


Input text editmass row 4
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}  
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id}
    Wait And Press Keys    xpath=//div[6]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${values_new}
    #Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    


Input text editmass row 5
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}  
    Wait And Scroll Element Into View    //*[text()=" เพิ่ม"]
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id}
    Wait And Press Keys    xpath=//div[7]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${values_new}
    #Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13 


Input text editmass row 1 (section14)
    [Arguments]    ${master_tabcols_id}    ${values_new}      
    Wait And Click Element    //input[@name="master_tabcols_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    ${master_tabcols_id}
    Wait And Press Keys    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //*[@data-placeholder="ค่า (Value)"]
    Wait And Input Text with Delay    //*[@data-placeholder="ค่า (Value)"]    ${values_new}


Input text editmass row 2 (section14)
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id}
    Wait And Press Keys    xpath=//div[4]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div//*[@data-placeholder="ค่า (Value)"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div//*[@data-placeholder="ค่า (Value)"]    ${values_new}
    

Input text editmass row 3 (section14)
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[5]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div//*[@data-placeholder="ค่า (Value)"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div//*[@data-placeholder="ค่า (Value)"]    ${values_new} 


Input text editmass row 4 (section14)
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[6]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div//*[@data-placeholder="ค่า (Value)"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div//*[@data-placeholder="ค่า (Value)"]    ${values_new} 


Input text editmass row 5 (section14)
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Scroll Element Into View    //*[text()=" เพิ่ม"]
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[7]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div//*[@data-placeholder="ค่า (Value)"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div//*[@data-placeholder="ค่า (Value)"]    ${values_new} 





Dropdown row 1
    [Arguments]    ${master_tabcols_id}    ${values_new}    
    Wait And Click Element    //input[@name="master_tabcols_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    ${master_tabcols_id} 
    Wait And Press Keys    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //input[@name="values_new"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="values_new"]/following-sibling::div/div/input    ${values_new} 
    Wait And Press Keys    //input[@name="values_new"]/following-sibling::div/div/input    \\13

Dropdown row 2
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[4]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${values_new} 
    Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    

Dropdown row 3
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[5]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${values_new} 
    Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    

Dropdown row 4
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[6]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input      \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${values_new} 
    Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    

Dropdown row 5
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Scroll Element Into View    //*[text()=" เพิ่ม"]
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[7]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input      \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${values_new} 
    Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    

Input text editmass row 1 (day warranty)
    [Arguments]    ${master_tabcols_id}    ${values_new}    
    Wait And Click Element    //input[@name="master_tabcols_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    ${master_tabcols_id} 
    Wait And Press Keys    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //input[@name="values_new"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="values_new"]/following-sibling::div/div/input    ${values_new} 
    

Input text editmass row 2 (day warranty)
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[4]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //input[@name="values_new"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="values_new"]/following-sibling::div/div/input    ${values_new} 
    

Input text editmass row 3 (day warranty)
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[5]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //input[@name="values_new"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="values_new"]/following-sibling::div/div/input    ${values_new} 

Input text editmass row 4 (day warranty)
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[6]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //input[@name="values_new"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="values_new"]/following-sibling::div/div/input    ${values_new} 

Input text editmass row 5 (day warranty)
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Scroll Element Into View    //*[text()=" เพิ่ม"]
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[7]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //input[@name="values_new"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="values_new"]/following-sibling::div/div/input    ${values_new} 


Dropdown row 1 (type warranty)
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //input[@name="master_tabcols_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    ${master_tabcols_id} 
    Wait And Press Keys    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    \ue015
    Wait And Press Keys    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //input[@name="values_new"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="values_new"]/following-sibling::div/div/input    ${values_new} 
    Wait And Press Keys    //input[@name="values_new"]/following-sibling::div/div/input    \\13


Dropdown row 2 (type warranty)
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[4]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \ue015
    Wait And Press Keys    xpath=//div[4]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${values_new} 
    Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    


Dropdown row 3 (type warranty)
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[5]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \ue015
    Wait And Press Keys    xpath=//div[5]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${values_new} 
    Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    


Dropdown row 4 (type warranty)
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[6]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \ue015
    Wait And Press Keys    xpath=//div[6]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${values_new} 
    Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    


Dropdown row 5 (type warranty)
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Scroll Element Into View    //*[text()=" เพิ่ม"]
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[7]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \ue015
    Wait And Press Keys    xpath=//div[7]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${values_new} 
    Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    



Dropdown row 1 (c1,c2,c3)     #กำหนดรูปแบบการรับประกัน เพ่ิ่ม req. C1,c2,c3
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[6]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input      \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${values_new} 
    Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div//select/..
    Wait And Click Element    //*[text()='C1: DoHome/Retail']/ancestor::div[2]//div[@class="dx-list-select-all-label"]
    Wait And Click Element    //*[text()='OK']


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




