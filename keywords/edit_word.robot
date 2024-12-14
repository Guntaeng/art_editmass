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



*** Variables ***
${name}    123


*** Keywords ***
Insert name 
    [Arguments]    ${name}    
    Input Text    id=ชื่อเล่น    ${name}    ###ฟิล ชื่อเล่น
    Input Text    id=ชื่อจริง    ${name}    ###ฟิล ชื่อจริง


*** Test Cases ***
Test
    Insert name    ${name}    
    Log To Console    ${name}






*** Keywords ***
Edit field 1
    IF    '${mark_1}' == 'X' and '${field_1}' == 'ชื่อสินค้า Commercial (ภาษาอังกฤษ)' and '${round_1}' == 'X1'
        Input text editmass row 1
    ELSE IF    '${mark_1}' == 'X' and '${field_1}' == 'ชื่อสินค้า Commercial (ภาษาไทย)'
        Input text editmass row 1
    ELSE IF    '${mark_1}' == 'X' and '${field_1}' == 'รุ่นของสินค้า'
        Input text editmass row 1
    ELSE IF    '${mark_1}' == 'X' and '${field_1}' == 'เลขที่ มอก. (TIS Number)'
        Input text editmass row 1        
    ELSE IF    '${mark_1}' == 'X' and '${field_1}' == 'เลขที่ใบอนุญาต มอก. (TIS License)'
        Input text editmass row 1        
    ELSE IF    '${mark_1}' == 'X' and '${field_1}' == 'จุดเด่นจุดขาย'
        Input text editmass row 1 (section14)        
    ELSE IF    '${mark_1}' == 'X' and '${field_1}' == 'คุณสมบัติสินค้า'
        Input text editmass row 1 (section14)        
    ELSE IF    '${mark_1}' == 'X' and '${field_1}' == 'การบำรุงรักษา'
        Input text editmass row 1 (section14)        
    ELSE IF    '${mark_1}' == 'X' and '${field_1}' == 'การใช้งาน'
        Input text editmass row 1 (section14)        
    ELSE IF    '${mark_1}' == 'X' and '${field_1}' == 'ข้อควรระวัง'
        Input text editmass row 1 (section14)        
    ELSE IF    '${mark_1}' == 'X' and '${field_1}' == 'จำนวน(วัน)'
        Input text editmass row 1 (day warranty)        
    ELSE IF    '${mark_1}' == 'X' and '${field_1}' == 'ชื่อแบรนด์สินค้า(ยี่ห้อ) (Brand)'
        Dropdown row 1       
    ELSE IF    '${mark_1}' == 'X' and '${field_1}' == 'ประเภทของการรับประกัน'
        Dropdown row 1 (type warranty)       
    ELSE IF    '${mark_1}' == 'X' and '${field_1}' == 'กำหนดรูปแบบการขาย'
        Dropdown row 1       
    END


Edit field 2
    IF    '${mark_2}' == 'X' and '${field_2}' == 'ชื่อสินค้า Commercial (ภาษาอังกฤษ)'
        Input text editmass row 2
    ELSE IF    '${mark_2}' == 'X' and '${field_2}' == 'ชื่อสินค้า Commercial (ภาษาไทย)' and '${round_2}' == 'X1'
        Input text editmass row 2
    ELSE IF    '${mark_2}' == 'X' and '${field_2}' == 'รุ่นของสินค้า'
        Input text editmass row 2
    ELSE IF    '${mark_2}' == 'X' and '${field_2}' == 'เลขที่ มอก. (TIS Number)'
        Input text editmass row 2        
    ELSE IF    '${mark_2}' == 'X' and '${field_2}' == 'เลขที่ใบอนุญาต มอก. (TIS License)'
        Input text editmass row 2        
    ELSE IF    '${mark_2}' == 'X' and '${field_2}' == 'จุดเด่นจุดขาย'
        Input text editmass row 2 (section14)        
    ELSE IF    '${mark_2}' == 'X' and '${field_2}' == 'คุณสมบัติสินค้า'
        Input text editmass row 2 (section14)        
    ELSE IF    '${mark_2}' == 'X' and '${field_2}' == 'การบำรุงรักษา'
        Input text editmass row 2 (section14)        
    ELSE IF    '${mark_2}' == 'X' and '${field_2}' == 'การใช้งาน'
        Input text editmass row 2 (section14)        
    ELSE IF    '${mark_2}' == 'X' and '${field_2}' == 'ข้อควรระวัง'
        Input text editmass row 2 (section14)        
    ELSE IF    '${mark_2}' == 'X' and '${field_2}' == 'จำนวน(วัน)'
        Input text editmass row 2 (day warranty)        
    ELSE IF    '${mark_2}' == 'X' and '${field_2}' == 'ชื่อแบรนด์สินค้า(ยี่ห้อ) (Brand)'
        Dropdown row 2       
    ELSE IF    '${mark_2}' == 'X' and '${field_2}' == 'ประเภทของการรับประกัน'
        Dropdown row 2 (type warranty)       
    ELSE IF    '${mark_2}' == 'X' and '${field_2}' == 'กำหนดรูปแบบการขาย'
        Dropdown row 2       
    END


Edit field 3
    IF    '${mark_3}' == 'X' and '${field_3}' == 'ชื่อสินค้า Commercial (ภาษาอังกฤษ)'
        Input text editmass row 3
    ELSE IF    '${mark_3}' == 'X' and '${field_3}' == 'ชื่อสินค้า Commercial (ภาษาไทย)'
        Input text editmass row 3
    ELSE IF    '${mark_3}' == 'X' and '${field_3}' == 'รุ่นของสินค้า' and '${round_3}' == 'X1'
        Input text editmass row 3
    ELSE IF    '${mark_3}' == 'X' and '${field_3}' == 'เลขที่ มอก. (TIS Number)'
        Input text editmass row 3        
    ELSE IF    '${mark_3}' == 'X' and '${field_3}' == 'เลขที่ใบอนุญาต มอก. (TIS License)'
        Input text editmass row 3        
    ELSE IF    '${mark_3}' == 'X' and '${field_3}' == 'จุดเด่นจุดขาย'
        Input text editmass row 3 (section14)        
    ELSE IF    '${mark_3}' == 'X' and '${field_3}' == 'คุณสมบัติสินค้า'
        Input text editmass row 3 (section14)        
    ELSE IF    '${mark_3}' == 'X' and '${field_3}' == 'การบำรุงรักษา'
        Input text editmass row 3 (section14)        
    ELSE IF    '${mark_3}' == 'X' and '${field_3}' == 'การใช้งาน'
        Input text editmass row 3 (section14)        
    ELSE IF    '${mark_3}' == 'X' and '${field_3}' == 'ข้อควรระวัง'
        Input text editmass row 3 (section14)        
    ELSE IF    '${mark_3}' == 'X' and '${field_3}' == 'จำนวน(วัน)'
        Input text editmass row 3 (day warranty)        
    ELSE IF    '${mark_3}' == 'X' and '${field_3}' == 'ชื่อแบรนด์สินค้า(ยี่ห้อ) (Brand)'
        Dropdown row 3       
    ELSE IF    '${mark_3}' == 'X' and '${field_3}' == 'ประเภทของการรับประกัน'
        Dropdown row 3 (type warranty)       
    ELSE IF    '${mark_3}' == 'X' and '${field_3}' == 'กำหนดรูปแบบการขาย'
        Dropdown row 3       
    END


Edit field 4
    IF    '${mark_4}' == 'X' and '${field_4}' == 'ชื่อสินค้า Commercial (ภาษาอังกฤษ)'
        Input text editmass row 4
    ELSE IF    '${mark_4}' == 'X' and '${field_4}' == 'ชื่อสินค้า Commercial (ภาษาไทย)'
        Input text editmass row 4
    ELSE IF    '${mark_4}' == 'X' and '${field_4}' == 'รุ่นของสินค้า'
        Input text editmass row 4
    ELSE IF    '${mark_4}' == 'X' and '${field_4}' == 'เลขที่ มอก. (TIS Number)' and '${round_4}' == 'X1'
        Input text editmass row 4        
    ELSE IF    '${mark_4}' == 'X' and '${field_4}' == 'เลขที่ใบอนุญาต มอก. (TIS License)'
        Input text editmass row 4        
    ELSE IF    '${mark_4}' == 'X' and '${field_4}' == 'จุดเด่นจุดขาย'
        Input text editmass row 4 (section14)        
    ELSE IF    '${mark_4}' == 'X' and '${field_4}' == 'คุณสมบัติสินค้า'
        Input text editmass row 4 (section14)        
    ELSE IF    '${mark_4}' == 'X' and '${field_4}' == 'การบำรุงรักษา'
        Input text editmass row 4 (section14)        
    ELSE IF    '${mark_4}' == 'X' and '${field_4}' == 'การใช้งาน'
        Input text editmass row 4 (section14)        
    ELSE IF    '${mark_4}' == 'X' and '${field_4}' == 'ข้อควรระวัง'
        Input text editmass row 4 (section14)        
    ELSE IF    '${mark_4}' == 'X' and '${field_4}' == 'จำนวน(วัน)'
        Input text editmass row 4 (day warranty)        
    ELSE IF    '${mark_4}' == 'X' and '${field_4}' == 'ชื่อแบรนด์สินค้า(ยี่ห้อ) (Brand)'
        Dropdown row 4       
    ELSE IF    '${mark_4}' == 'X' and '${field_4}' == 'ประเภทของการรับประกัน'
        Dropdown row 4 (type warranty)       
    ELSE IF    '${mark_4}' == 'X' and '${field_4}' == 'กำหนดรูปแบบการขาย'
        Dropdown row 4       
    END


Edit field 5
    IF    '${mark_5}' == 'X' and '${field_5}' == 'ชื่อสินค้า Commercial (ภาษาอังกฤษ)'
        Input text editmass row 5
    ELSE IF    '${mark_5}' == 'X' and '${field_5}' == 'ชื่อสินค้า Commercial (ภาษาไทย)'
        Input text editmass row 5
    ELSE IF    '${mark_5}' == 'X' and '${field_5}' == 'รุ่นของสินค้า'
        Input text editmass row 5
    ELSE IF    '${mark_5}' == 'X' and '${field_5}' == 'เลขที่ มอก. (TIS Number)'
        Input text editmass row 5        
    ELSE IF    '${mark_5}' == 'X' and '${field_5}' == 'เลขที่ใบอนุญาต มอก. (TIS License)' and '${round_5}' == 'X1'
        Input text editmass row 5        
    ELSE IF    '${mark_5}' == 'X' and '${field_5}' == 'จุดเด่นจุดขาย'
        Input text editmass row 5 (section14)        
    ELSE IF    '${mark_5}' == 'X' and '${field_5}' == 'คุณสมบัติสินค้า'
        Input text editmass row 5 (section14)        
    ELSE IF    '${mark_5}' == 'X' and '${field_5}' == 'การบำรุงรักษา'
        Input text editmass row 5 (section14)        
    ELSE IF    '${mark_5}' == 'X' and '${field_5}' == 'การใช้งาน'
        Input text editmass row 5 (section14)        
    ELSE IF    '${mark_5}' == 'X' and '${field_5}' == 'ข้อควรระวัง'
        Input text editmass row 5 (section14)        
    ELSE IF    '${mark_5}' == 'X' and '${field_5}' == 'จำนวน(วัน)'
        Input text editmass row 5 (day warranty)        
    ELSE IF    '${mark_5}' == 'X' and '${field_5}' == 'ชื่อแบรนด์สินค้า(ยี่ห้อ) (Brand)'
        Dropdown row 5       
    ELSE IF    '${mark_5}' == 'X' and '${field_5}' == 'ประเภทของการรับประกัน'
        Dropdown row 5 (type warranty)       
    ELSE IF    '${mark_5}' == 'X' and '${field_5}' == 'กำหนดรูปแบบการขาย'
        Dropdown row 5       
    END
