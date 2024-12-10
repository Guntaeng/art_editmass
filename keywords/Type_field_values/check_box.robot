*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    OperatingSystem
Library    Collections
Library    DebugLibrary
Resource    ../common_art.robot    

*** Keywords ***
Check box month row 3
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[5]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div[4]
    Wait And Click Element    //*[text()="${values_new}"]/preceding-sibling::div/div
    Wait And Click Element    //*[text()="${values_new}"]/ancestor::div/following-sibling::div//span[text()='OK']