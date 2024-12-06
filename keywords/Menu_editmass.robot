*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/config_art.robot
Resource    ../keywords/common_art.robot
Library    ../resources/csv_ready.py
Library    CSVLibrary
Library    BuiltIn
Library    OperatingSystem
Library    Collections
Library    String
Library    DebugLibrary

*** Variables ***
${path_file_csv}    resources/edit_mass_2.csv
${mark_2}
${field_2}




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

Click check box all article    
    Wait And Click Element    //span[text()="เลือกทั้งหมด"]/preceding-sibling::span

Click button edit field
    Wait And Click Element    //span[text()="แก้ไขค่าของฟิลด์"]/parent::button

Click button Confirm edit field
    Wait And Click Element    //span[text()="ยืนยัน"]/parent::button
    Wait And Wait Until Element Is Visible    //span[text()="ขออนุมัติแก้ไข"]/parent::button

Click button Approve edit field
    Wait And Click Element    //span[text()="ขออนุมัติแก้ไข"]/parent::button
    Wait And Click Element    //span[text()="ขออนุมัติแก้ไข"]/parent::button
    Wait And Click Element    //span[text()="ยืนยัน"]/parent::button
    Wait Until Page Contains    อนุมัติแก้ไขสำเร็จ    timeout=10s



Get Data
    ${result}=    Count X In Column And Get Rows    ${path_file_csv}
    ${x_rows}=     Get From Dictionary    ${result}    x_rows   
    ${index}=     Set Variable    1   # เริ่มต้นที่ 1
    FOR    ${row}    IN    @{x_rows}
        ${level_approve}=    Get From List    ${row}    0
        ${round}=            Get From List    ${row}    1
        ${field}=            Get From List    ${row}    2
        ${value}=            Get From List    ${row}    3
        ${uuid}=             Get From List    ${row}    4
        
        # Log ข้อมูลทุกครั้งที่ลูป
        Log    level_approve: ${level_approve}, round: ${round}, field: ${field}, value: ${value}, uuid: ${uuid}
        
        # เซ็ตตัวแปรตามลำดับที่ได้จาก index
        Set Suite Variable    ${level_approve_${index}}    ${level_approve}
        Set Suite Variable    ${round_${index}}           ${round}
        Set Suite Variable    ${field_${index}}           ${field}
        Set Suite Variable    ${value_${index}}           ${value}
        Set Suite Variable    ${uuid_${index}}            ${uuid}

        # เพิ่มค่า index และวนกลับไป 1 เมื่อถึง 5
        ${index}=    Evaluate    (${index} % 5) + 1
    END
    




Edit field 1
    [Arguments]    ${run}
    ${run_code}    Set Variable    ${run}
    IF    '${field_1}' == 'ชื่อสินค้า Commercial (ภาษาอังกฤษ)' and '${round_1}' == 'X1' and '${run_code}' == '1' 
        Input text editmass row 1
    ELSE IF    '${field_1}' == 'จุดเด่นจุดขาย' and '${round_1}' == 'X2'
        Input text editmass row 1 (section14)        
    ELSE IF    '${field_1}' == 'จำนวน(วัน)' and '${round_1}' == 'X3'
        Input text editmass row 1 (day warranty)        
    END


Edit field 2
    IF    '${field_2}' == 'ชื่อสินค้า Commercial (ภาษาไทย)' and '${round_2}' == 'X1'
        Input text editmass row 2
    ELSE IF    '${field_2}' == 'คุณสมบัติสินค้า' and '${round_2}' == 'X2'
        Input text editmass row 2 (section14)        
    ELSE IF    '${field_2}' == 'ชื่อแบรนด์สินค้า(ยี่ห้อ) (Brand)' and '${round_2}' == 'X3'
        Dropdown row 2       
    END


Edit field 3
    IF    '${field_3}' == 'รุ่นของสินค้า' and '${round_3}' == 'X1'
        Input text editmass row 3
    ELSE IF    '${field_3}' == 'การบำรุงรักษา' and '${round_3}' == 'X2'
        Input text editmass row 3 (section14)        
    ELSE IF    '${field_3}' == 'ประเภทของการรับประกัน' and '${round_3}' == 'X3'
        Dropdown row 3 (type warranty)       
    END


Edit field 4
    IF    '${field_4}' == 'เลขที่ มอก. (TIS Number)' and '${round_4}' == 'X1'
        Input text editmass row 4        
    ELSE IF    '${field_4}' == 'การใช้งาน' and '${round_4}' == 'X2'
        Input text editmass row 4 (section14)       
    ELSE IF    '${field_4}' == 'กำหนดรูปแบบการขาย' and '${round_4}' == 'X3'
        Dropdown row 4       
    END


Edit field 5
    IF    '${field_5}' == 'เลขที่ใบอนุญาต มอก. (TIS License)' and '${round_5}' == 'X1'
        Input text editmass row 5        
    ELSE IF    '${field_5}' == 'ข้อควรระวัง' and '${round_5}' == 'X2'
        Input text editmass row 5 (section14)        
    END


Input text editmass row 1
    Wait And Click Element    //input[@name="master_tabcols_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    ${field_1}
    Wait And Press Keys    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //input[@name="values_new"]
    Wait And Input Text with Delay    //input[@name="values_new"]    ${value_1}
    

Input text editmass row 2
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${field_2}
    Wait And Press Keys    xpath=//div[4]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${uuid_2}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${uuid_2}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${value_2}
    

Input text editmass row 3
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${field_3}
    Wait And Press Keys    xpath=//div[5]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input      \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${uuid_3}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${uuid_3}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${value_3}
    #Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${uuid_3}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    


Input text editmass row 4
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${field_4}
    Wait And Press Keys    xpath=//div[6]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${uuid_4}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${uuid_4}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${value_4}
    #Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${uuid_4}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    


Input text editmass row 5
    Wait And Scroll Element Into View    //*[text()=" เพิ่ม"]
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${field_5}
    Wait And Press Keys    xpath=//div[7]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${uuid_5}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${uuid_5}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${value_5}
    #Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${uuid_5}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13 


Input text editmass row 1 (section14)
    Wait And Click Element    //input[@name="master_tabcols_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    ${field_1}
    Wait And Press Keys    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //*[@data-placeholder="ค่า (Value)"]
    Wait And Input Text with Delay    //*[@data-placeholder="ค่า (Value)"]    ${value_1}


Input text editmass row 2 (section14)
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${field_2}
    Wait And Press Keys    xpath=//div[4]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${uuid_2}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div//*[@data-placeholder="ค่า (Value)"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${uuid_2}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div//*[@data-placeholder="ค่า (Value)"]    ${value_2}
    

Input text editmass row 3 (section14)
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${field_3}
    Wait And Press Keys    xpath=//div[5]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${uuid_3}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div//*[@data-placeholder="ค่า (Value)"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${uuid_3}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div//*[@data-placeholder="ค่า (Value)"]    ${value_3}


Input text editmass row 4 (section14)
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${field_4}
    Wait And Press Keys    xpath=//div[6]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${uuid_4}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div//*[@data-placeholder="ค่า (Value)"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${uuid_4}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div//*[@data-placeholder="ค่า (Value)"]    ${value_4}


Input text editmass row 5 (section14)
    Wait And Scroll Element Into View    //*[text()=" เพิ่ม"]
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${field_5}
    Wait And Press Keys    xpath=//div[7]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${uuid_5}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div//*[@data-placeholder="ค่า (Value)"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${uuid_5}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div//*[@data-placeholder="ค่า (Value)"]    ${value_5}





Dropdown row 1
    Wait And Click Element    //input[@name="master_tabcols_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    ${field_1}
    Wait And Press Keys    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //input[@name="values_new"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="values_new"]/following-sibling::div/div/input    ${value_1}
    Wait And Press Keys    //input[@name="values_new"]/following-sibling::div/div/input    \\13

Dropdown row 2
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${field_2}
    Wait And Press Keys    xpath=//div[4]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${uuid_2}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${uuid_2}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${value_2}
    Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${uuid_2}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    

Dropdown row 3
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${field_3}
    Wait And Press Keys    xpath=//div[5]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${uuid_3}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${uuid_3}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${value_3}
    Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${uuid_3}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    

Dropdown row 4
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${field_4}
    Wait And Press Keys    xpath=//div[6]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input      \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${uuid_4}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${uuid_4}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${value_4}
    Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${uuid_4}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    

Dropdown row 5
    Wait And Scroll Element Into View    //*[text()=" เพิ่ม"]
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${field_5}
    Wait And Press Keys    xpath=//div[7]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input      \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${uuid_5}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${uuid_5}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${value_5}
    Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${uuid_5}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    

Input text editmass row 1 (day warranty)
    Wait And Click Element    //input[@name="master_tabcols_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    ${field_1}
    Wait And Press Keys    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //input[@name="values_new"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="values_new"]/following-sibling::div/div/input    ${value_1}
    

Input text editmass row 2 (day warranty)
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${field_2}
    Wait And Press Keys    xpath=//div[4]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //input[@name="values_new"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="values_new"]/following-sibling::div/div/input    ${value_2}
    

Input text editmass row 3 (day warranty)
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${field_3}
    Wait And Press Keys    xpath=//div[5]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //input[@name="values_new"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="values_new"]/following-sibling::div/div/input    ${value_3}

Input text editmass row 4 (day warranty)
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${field_4}
    Wait And Press Keys    xpath=//div[6]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //input[@name="values_new"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="values_new"]/following-sibling::div/div/input    ${value_4}

Input text editmass row 5 (day warranty)
    Wait And Scroll Element Into View    //*[text()=" เพิ่ม"]
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${field_5}
    Wait And Press Keys    xpath=//div[7]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //input[@name="values_new"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="values_new"]/following-sibling::div/div/input    ${value_5}


Dropdown row 1 (type warranty)
    Wait And Click Element    //input[@name="master_tabcols_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    ${field_1}
    Wait And Press Keys    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    \ue015
    Wait And Press Keys    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //input[@name="values_new"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="values_new"]/following-sibling::div/div/input    ${value_1}
    Wait And Press Keys    //input[@name="values_new"]/following-sibling::div/div/input    \\13


Dropdown row 2 (type warranty)
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${field_2}
    Wait And Press Keys    xpath=//div[4]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \ue015
    Wait And Press Keys    xpath=//div[4]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${uuid_2}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${uuid_2}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${value_2}
    Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${uuid_2}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    


Dropdown row 3 (type warranty)
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${field_3}
    Wait And Press Keys    xpath=//div[5]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \ue015
    Wait And Press Keys    xpath=//div[5]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${uuid_3}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${uuid_3}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${value_3}
    Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${uuid_3}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    


Dropdown row 4 (type warranty)
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${field_4}
    Wait And Press Keys    xpath=//div[6]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \ue015
    Wait And Press Keys    xpath=//div[6]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${uuid_4}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${uuid_4}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${value_4}
    Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${uuid_4}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    


Dropdown row 5 (type warranty)
    Wait And Scroll Element Into View    //*[text()=" เพิ่ม"]
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${field_5}
    Wait And Press Keys    xpath=//div[7]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \ue015
    Wait And Press Keys    xpath=//div[7]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${uuid_5}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${uuid_5}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${value_5}
    Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${uuid_5}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    

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


