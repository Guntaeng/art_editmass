*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    OperatingSystem
Library    Collections
Library    DebugLibrary
Resource    ../common_art.robot    


*** Keywords ***
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


Dropdown row 1 (type warranty)    #ประเภทของการรับประกัน > preekey down ก่อนค่อย enter
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
    #Click channel
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div//select/..
    Wait And Click Element    //*[text()='C1: DoHome/Retail']/ancestor::div[2]//div[@class="dx-list-select-all-label"]
    Wait And Click Element    //*[text()='OK']


Dropdown row 2 (c1,c2,c3)
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[4]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${values_new} 
    Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div//select/..
    Wait And Click Element    //*[text()='C1: DoHome/Retail']/ancestor::div[2]//div[@class="dx-list-select-all-label"]
    Wait And Click Element    //*[text()='OK']

Dropdown row 3 (c1,c2,c3)
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[5]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${values_new} 
    Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div//select/..
    Wait And Click Element    //*[text()='C1: DoHome/Retail']/ancestor::div[2]//div[@class="dx-list-select-all-label"]
    Wait And Click Element    //*[text()='OK']

Dropdown row 4 (c1,c2,c3)
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

Dropdown row 5 (c1,c2,c3)
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Scroll Element Into View    //*[text()=" เพิ่ม"]
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[7]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input      \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${values_new} 
    Wait And Press Keys    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div//select/..
    Wait And Click Element    //*[text()='C1: DoHome/Retail']/ancestor::div[2]//div[@class="dx-list-select-all-label"]
    Wait And Click Element    //*[text()='OK']

