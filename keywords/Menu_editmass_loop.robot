*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/config_art.robot
Resource    ../keywords/common_art.robot
#Resource    ../keywords/Menu_editmass.robot
Resource    ../testcases/editmass.robot
Library    ../resources/csv_ready.py
Library    ../resources/csv_ready_v2.py
Library    CSVLibrary
Library    BuiltIn
Library    OperatingSystem
Library    Collections
Library    String
Library    DebugLibrary


*** Variables ***
${path_file_csv}    C:/Automate_WEB/Create_Article_automate/resources/edit_mass_2.csv


*** Keywords ***
Edit field 1
    IF    '${field_1}' == 'ชื่อสินค้า Commercial (ภาษาอังกฤษ)' and '${round_1}' == 'X1'
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


*** Variables ***
${path_file_csv}  path_to_your_csv_file.csv

*** Keywords ***
Get Data From CSV
    ${result}=    Get Row    ${path_file_csv}
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


Get Data From CSV2
    ${result}=    Get Row    ${path_file_csv}
    ${x_rows}=    Get From Dictionary    ${result}    x_rows   
    ${index}=     Set Variable    1   # เริ่มต้นที่ 1
    @{data}=      Create List    # สร้างลิสต์สำหรับเก็บข้อมูลแต่ละชุด
    FOR    ${row}    IN    @{x_rows}
        ${level_approve}=    Get From List    ${row}    0
        ${round}=            Get From List    ${row}    1
        ${field}=            Get From List    ${row}    2
        ${value}=            Get From List    ${row}    3
        ${uuid}=             Get From List    ${row}    4

        # Log ข้อมูลทุกครั้งที่ลูป
        Log    level_approve: ${level_approve}, round: ${round}, field: ${field}, value: ${value}, uuid: ${uuid}

        # เซ็ตข้อมูลทั้งหมดในแต่ละรอบเป็น dictionary แล้วเพิ่มลงในลิสต์
        ${data_item}=    Create Dictionary    
        ...    level_approve=${level_approve}
        ...    round=${round}
        ...    field=${field}
        ...    value=${value}
        ...    uuid=${uuid}
        Append To List    ${data}    ${data_item}

        # เพิ่มค่า index และวนกลับไป 1 เมื่อถึง 5
        ${index}=    Evaluate    (${index} % 5) + 1
    END

    # Log ข้อมูลทั้งหมดที่เก็บในรูปแบบลิสต์
    Log    ${data}



*** Test Cases ***
TX 
    Get Data From CSV2
    ${filtered}=    Evaluate    [item for item in ${data} if item['round'] == '1']
    Log    ${filtered}