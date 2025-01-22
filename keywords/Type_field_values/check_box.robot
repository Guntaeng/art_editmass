*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    OperatingSystem
Library    Collections
Library    DebugLibrary
Resource    ../common_art.robot    

*** Keywords ***
Check box month row 1
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[3]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div[4]
    Wait And Click Element    //*[text()="${values_new}"]/preceding-sibling::div/div
    Wait And Click Element    //*[text()="${values_new}"]/ancestor::div/following-sibling::div//span[text()='OK']

Check box month row 2
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[4]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div[4]
    Wait And Click Element    //*[text()="${values_new}"]/preceding-sibling::div/div
    Wait And Click Element    //*[text()="${values_new}"]/ancestor::div/following-sibling::div//span[text()='OK']

Check box month row 3
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[5]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div[4]
    Wait And Click Element    //*[text()="${values_new}"]/preceding-sibling::div/div
    Wait And Click Element    //*[text()="${values_new}"]/ancestor::div/following-sibling::div//span[text()='OK']


Check box month row 4
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[6]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div[4]
    Wait And Click Element    //*[text()="${values_new}"]/preceding-sibling::div/div
    Wait And Click Element    //*[text()="${values_new}"]/ancestor::div/following-sibling::div//span[text()='OK']

Check box month row 5
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[7]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13    
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div[4]
    Wait And Click Element    //*[text()="${values_new}"]/preceding-sibling::div/div
    Wait And Click Element    //*[text()="${values_new}"]/ancestor::div/following-sibling::div//span[text()='OK']

Check box row 1
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[3]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13 
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div[5]


Check box row 2
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[4]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13 
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div[5]

Check box row 3
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[5]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13 
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div[5]

Check box row 4
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[6]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13 
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div[5]

Check box row 5
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input
    Wait And Input Text with Delay    //div[@data-dx_placeholder="เลือกฟิลด์" and @class="dx-placeholder"]/preceding-sibling::input    ${master_tabcols_id} 
    Wait And Press Keys    xpath=//div[7]/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div/div/input       \\13 
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div[5]


Check box and Channel row 1
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //input[@name="master_tabcols_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    ${master_tabcols_id}
    Wait And Press Keys    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div[4]
    #Click channel
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div//select/..
    Wait And Click Element    //*[text()='C1: DoHome/Retail']/ancestor::div[2]//div[@class="dx-list-select-all-label"]
    Wait And Click Element    //*[text()='C1: DoHome/Retail']/ancestor::div[2]//div[@class="dx-list-select-all-label"]/ancestor::div[6]/following::div[8]

Check box and Channel row 2
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //input[@name="master_tabcols_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    ${master_tabcols_id}
    Wait And Press Keys    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div[4]
    #Click channel
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div//select/..
    Wait And Click Element    //*[text()='C1: DoHome/Retail']/ancestor::div[2]//div[@class="dx-list-select-all-label"]
    Wait And Click Element    //*[text()='C1: DoHome/Retail']/ancestor::div[2]//div[@class="dx-list-select-all-label"]/ancestor::div[6]/following::div[8]

Check box and Channel row 3
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //input[@name="master_tabcols_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    ${master_tabcols_id}
    Wait And Press Keys    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div[4]
    #Click channel
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div//select/..
    Wait And Click Element    //*[text()='C1: DoHome/Retail']/ancestor::div[2]//div[@class="dx-list-select-all-label"]
    Wait And Click Element    //*[text()='C1: DoHome/Retail']/ancestor::div[2]//div[@class="dx-list-select-all-label"]/ancestor::div[6]/following::div[8]

Check box and Channel row 4
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //input[@name="master_tabcols_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    ${master_tabcols_id}
    Wait And Press Keys    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div[4]
    #Click channel
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div//select/..
    Wait And Click Element    //*[text()='C1: DoHome/Retail']/ancestor::div[2]//div[@class="dx-list-select-all-label"]
    Wait And Click Element    //*[text()='C1: DoHome/Retail']/ancestor::div[2]//div[@class="dx-list-select-all-label"]/ancestor::div[6]/following::div[8]

Check box and Channel row 5
    [Arguments]    ${master_tabcols_id}    ${values_new}    ${new_uuid}
    Wait And Click Element    //*[text()=" เพิ่ม"]
    Wait And Click Element    //input[@name="master_tabcols_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    ${master_tabcols_id}
    Wait And Press Keys    //input[@name="master_tabcols_id"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div[1]/descendant::div[4]
    #Click channel
    Wait And Click Element    //*[@name="master_tabcols_id" and @value="${new_uuid}"]/ancestor::div[6]/following-sibling::div//select/..
    Wait And Click Element    //*[text()='C1: DoHome/Retail']/ancestor::div[2]//div[@class="dx-list-select-all-label"]
    Wait And Click Element    //*[text()='C1: DoHome/Retail']/ancestor::div[2]//div[@class="dx-list-select-all-label"]/ancestor::div[6]/following::div[8]
