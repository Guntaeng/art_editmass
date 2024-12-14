*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    OperatingSystem
Library    Collections
Library    DebugLibrary
Resource    ../common_art.robot    


*** Keywords ***
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


Input text editmass row 1 (day warranty)    #จำนวน(วัน) การรับประกัน
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
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${values_new} 
    
    

Input text editmass row 3 (day warranty)
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[5]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${values_new} 

Input text editmass row 4 (day warranty)
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[6]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${values_new} 

Input text editmass row 5 (day warranty)
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Scroll Element Into View    //*[text()=" เพิ่ม"]
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[7]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]
    Wait And Input Text with Delay    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::input[@class="dx-texteditor-input"]    ${values_new} 
