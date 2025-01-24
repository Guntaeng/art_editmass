*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Resource    ../variables/config_art.robot


*** Keywords ***
Click Element with Delay   
    [Arguments]    ${locator}
    Click Element    ${locator}
    Sleep    1s

Input Text with Delay   
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}    
    Sleep    1.5s

Press Key with Delay 
    [Arguments]    ${locator}    ${text}
    Press Key    ${locator}    ${text}    
    Sleep    1s

Wait And Clear Element Text Ignore Error    #no require     
    [Arguments]    ${locator}
    Run Keyword And Ignore Error    Wait Until Keyword Succeeds    1x    2s    Clear Element Text    ${locator}

Wait And Click Element Ignore Error    #no require     
    [Arguments]    ${locator}
    Run Keyword And Ignore Error    Wait Until Keyword Succeeds    1x    2s    Click Element with Delay    ${locator}

Wait And Input Text with Delay Ignore Error     #no require
    [Arguments]    ${locator}    ${text}
    Run Keyword And Ignore Error    Wait Until Keyword Succeeds    1x    2s    Input Text with Delay    ${locator}    ${text}

Wait And Press Keys Ignore Error    #no require
    [Arguments]    ${locator}    ${keys}
    Run Keyword And Ignore Error    Wait Until Keyword Succeeds    1x    2s    Press Key    ${locator}    ${keys}

Conditional Wait And Click element
    [Arguments]    ${condition}    ${locator}
    Run Keyword If    ${condition}    Wait Until Keyword Succeeds    1x    2s    Click Element with Delay    ${locator}

Conditional Wait And Input text
    [Arguments]    ${condition}    ${locator}    ${text}
    Run Keyword If    ${condition}    Wait Until Keyword Succeeds    1x    2s    Input Text with Delay    ${locator}    ${text}

Conditional Wait And Press Keys
    [Arguments]    ${condition}    ${locator}    ${keys}
    Run Keyword If    ${condition}    Wait Until Keyword Succeeds    1x    2s    Press Key    ${locator}    ${keys}

Conditional Wait And Clear Element Text
    [Arguments]    ${condition}    ${locator}
    Run Keyword If    ${condition}    Wait Until Keyword Succeeds    1x    2s    Clear Element Text    ${locator}

Conditional Wait And Scroll Element Into View
    [Arguments]    ${condition}    ${locator}
    Run Keyword If    ${condition}    Wait Until Keyword Succeeds    1x    2s    Scroll Element Into View    ${locator}

Wait And Scroll Element Into View    #require
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    3x    0.8s    Scroll Element Into View    ${locator}

Wait And Clear Element Text    #require
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    3x    0.8s    Clear Element Text    ${locator}

Wait And Input Text with Delay    #require
    [Arguments]    ${locator}    ${text}
    Wait Until Keyword Succeeds    3x    0.8s    Input Text with Delay    ${locator}    ${text}

Wait And Press Keys    #require
    [Arguments]    ${locator}    ${keys}
    Wait Until Keyword Succeeds    3x    0.8s    Press Key    ${locator}    ${keys}

Wait And Click Element     #require
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    3x    0.8s    Click Element with Delay    ${locator}


Wait And Wait Until Element Is Visible    
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    5x    1s    Wait Until Element Is Visible    ${locator}

Wait And Wait Until Element Contains    
    [Arguments]    ${locator}    ${text}
    Wait until keyword succeeds    3x   1s    Wait Until Element Contains     ${locator}    ${text}    


Open browser web url	#ชื่อที่จะนำไปใช้
    [Documentation]    
    [Arguments]    ${url}    ${browserName}    
    SeleniumLibrary.open browser    ${url}    browser=${browserName}    
    ...    options=binary_location=r"C:\\chrome-win64\\chrome.exe"  


Open browser web url for mac	#ชื่อที่จะนำไปใช้
    [Documentation]    
    [Arguments]    ${url}    ${browserName}    
    SeleniumLibrary.open browser    ${url}    browser=${browserName}    
    ...    options=binary_location=r"/usr/local/bin/chrome-mac-x64/Google Chrome for Testing"  


### คำสั่งสำหรับการค้นหาโดยใช้ Article ###
Search by article
    [Documentation]    ค้นหา รหัสสินค้า ที่ต้องการแก้ไขฟิวด์
    [Arguments]    @{articles}
    Wait And Click Element                  //input[@name="article_id"]
    Wait And Click Element                  //textarea[@name="article"]
    FOR    ${article}    IN    @{articles}
        ${current_text}=    Get Value       //textarea[@name="article"]
        ${new_text}=        Set Variable    ${current_text}\n${article}
        Wait And Input Text with Delay      //textarea[@name="article"]    ${new_text}
    END
    Wait And Click Element                  //span[text()="ส่ง"]/parent::button
    Wait And Click Element                  //span[text()="ค้นหา"]/parent::button

### ฟังก์ชันมาตรฐาน ###

Click check box all article
    [Documentation]    เลือกสินค้าทั้งหมด ใน dataGrid
    Wait And Click Element    //span[text()="เลือกทั้งหมด"]/preceding-sibling::span

Click button edit field
    [Documentation]    คลิ๊กปุ่ม แก้ไขค่าของฟิลด์
    Wait And Click Element    //span[text()="แก้ไขค่าของฟิลด์"]/parent::button

Click button Confirm edit field
    [Documentation]    คลิ๊กยืนยันแก้ไข step 1
    Wait And Click Element                    //span[text()="ยืนยัน"]/parent::button
    Wait And Wait Until Element Is Visible    //span[text()="ขออนุมัติแก้ไข"]/parent::button
    Sleep    3s

Click button Approve edit field
    [Documentation]    คลิ๊กยืนยันแก้ไข step 2 ส่งข้อมูลไปเมนูรออนุมัติ
    Wait And Click Element    //span[text()="ขออนุมัติแก้ไข"]/parent::button
    Wait And Click Element    //span[text()="ยกเลิก"]/ancestor::div[2]/following-sibling::div//button
    Wait And Click Element    //span[text()="ยืนยัน"]/parent::button
    Wait Until Page Contains    อนุมัติแก้ไขสำเร็จ    timeout=10s

Check value article
    [Documentation]    ตรวจสอบรหัสสินค้าใน dataGrid ก่อนแก้ไข ว่ามีอยู่จริงหรือไม่
    [Arguments]    ${article}
    Wait And Wait Until Element Is Visible    //td[text()='${article}']



Login dohome and click web art(Create)
    #Open browser web url    ${url_dohome}    headlesschrome
    #Open browser web url for mac             ${url_dohome}                                     chrome             
    Open browser web url                     ${url_dohome}                                    chrome
    #Set Window Size    1920    1080
    Maximize Browser Window
    Wait And Wait Until Element Contains     //button[text()='เข้าสู่ระบบ']                       เข้าสู่ระบบ       
    Wait And Click Element                   //button[text()='เข้าสู่ระบบ']
    Wait And Wait Until Element Contains     //*[@class="text-2xl text-primary font-bold"]     เข้าสู่ระบบ
    Wait And Click Element                   //input[@name="username"] 
    Wait And Input Text with Delay           //input[@name="username"]                         ${user_create}
    Wait And Click Element                   //input[@name="password"]
    Wait And Input Text with Delay           //input[@name="password"]                         ${pass}
    Wait And Click Element                   //button[@type="submit"][ text()='เข้าสู่ระบบ']
    Wait And Click Element                   //*[@aria-label="ระบบจัดการข้อมูลสินค้า"]
    Switch Window    New
    Maximize Browser Window
    #Set Window Size    1920    1080    
    Wait And Wait Until Element Is Visible    //h3[text()="Article Master"]


Login dohome and click web art(Approve avp)
    #Open browser web url    ${url_dohome}    headlesschrome
    #Open browser web url for mac             ${url_dohome}                                     chrome             
    Open browser web url                     ${url_dohome}                                    chrome
    #Set Window Size    1920    1080
    Maximize Browser Window
    Wait And Wait Until Element Contains     //button[text()='เข้าสู่ระบบ']                       เข้าสู่ระบบ       
    Wait And Click Element                   //button[text()='เข้าสู่ระบบ']
    Wait And Wait Until Element Contains     //*[@class="text-2xl text-primary font-bold"]     เข้าสู่ระบบ
    Wait And Click Element                   //input[@name="username"] 
    Wait And Input Text with Delay           //input[@name="username"]                         ${user_avp}
    Wait And Click Element                   //input[@name="password"]
    Wait And Input Text with Delay           //input[@name="password"]                         ${pass}
    Wait And Click Element                   //button[@type="submit"][ text()='เข้าสู่ระบบ']
    Wait And Click Element                   //*[@aria-label="ระบบจัดการข้อมูลสินค้า"]
    Switch Window    New
    Maximize Browser Window
    #Set Window Size    1920    1080    
    Wait And Wait Until Element Is Visible    //h3[text()="Article Master"]
    

Login dohome and click web art(Approve dm)
    #Open browser web url    ${url_dohome}    headlesschrome
    #Open browser web url for mac             ${url_dohome}                                     chrome
    Open browser web url                     ${url_dohome}                                    chrome             
    #Set Window Size    1920    1080
    Maximize Browser Window
    Wait And Wait Until Element Contains     //button[text()='เข้าสู่ระบบ']                       เข้าสู่ระบบ       
    Wait And Click Element                   //button[text()='เข้าสู่ระบบ']
    Wait And Wait Until Element Contains     //*[@class="text-2xl text-primary font-bold"]     เข้าสู่ระบบ
    Wait And Click Element                   //input[@name="username"] 
    Wait And Input Text with Delay           //input[@name="username"]                         ${user_dm}
    Wait And Click Element                   //input[@name="password"]
    Wait And Input Text with Delay           //input[@name="password"]                         ${pass}
    Wait And Click Element                   //button[@type="submit"][ text()='เข้าสู่ระบบ']
    Wait And Click Element                   //*[@aria-label="ระบบจัดการข้อมูลสินค้า"]
    Switch Window    New
    Maximize Browser Window
    #Set Window Size    1920    1080    
    Wait And Wait Until Element Is Visible    //h3[text()="Article Master"]
    
Refresh page
    Execute JavaScript    location.reload()


Login dohome and click web art(Edit Mass) A2
    #Open browser web url    ${url_dohome}    headlesschrome
    #Open browser web url for mac             ${url_dohome}                                     chrome
    Open browser web url                     ${url_dohome}                                     chrome             
    #Set Window Size    1920    1080
    Maximize Browser Window
    Wait And Wait Until Element Contains     //button[text()='เข้าสู่ระบบ']                       เข้าสู่ระบบ       
    Wait And Click Element                   //button[text()='เข้าสู่ระบบ']
    Wait And Wait Until Element Contains     //*[@class="text-2xl text-primary font-bold"]     เข้าสู่ระบบ
    Wait And Click Element                   //input[@name="username"] 
    Wait And Input Text with Delay           //input[@name="username"]                         ${user_editmass_A2}
    Wait And Click Element                   //input[@name="password"]
    Wait And Input Text with Delay           //input[@name="password"]                         ${pass}
    Wait And Click Element                   //button[@type="submit"][ text()='เข้าสู่ระบบ']
    Wait And Click Element                   //*[@aria-label="ระบบจัดการข้อมูลสินค้า"]
    Switch Window    New
    Maximize Browser Window
    #Set Window Size    1920    1080    
    Wait And Wait Until Element Is Visible    //h3[text()="Article Master"]
    Wait And Click Element    //p[text()='จัดการสินค้า']
    Wait And Click Element    //p[text()='ขอเปลี่ยนแปลงข้อมูลสินค้า']/parent::span//parent::a[@href="/app/edit-mass-information"]
    Wait And Wait Until Element Is Visible    //input[@name="purchaser_group_no"]/following-sibling::div/div/input


Login dohome and click web art(Edit Mass) A3
    #Open browser web url    ${url_dohome}    headlesschrome
    #Open browser web url for mac             ${url_dohome}                                     chrome     
    Open browser web url                     ${url_dohome}                                     chrome        
    #Set Window Size    1920    1080
    Maximize Browser Window
    Wait And Wait Until Element Contains     //button[text()='เข้าสู่ระบบ']                       เข้าสู่ระบบ       
    Wait And Click Element                   //button[text()='เข้าสู่ระบบ']
    Wait And Wait Until Element Contains     //*[@class="text-2xl text-primary font-bold"]     เข้าสู่ระบบ
    Wait And Click Element                   //input[@name="username"] 
    Wait And Input Text with Delay           //input[@name="username"]                         ${user_editmass_A3}
    Wait And Click Element                   //input[@name="password"]
    Wait And Input Text with Delay           //input[@name="password"]                         ${pass}
    Wait And Click Element                   //button[@type="submit"][ text()='เข้าสู่ระบบ']
    Wait And Click Element                   //*[@aria-label="ระบบจัดการข้อมูลสินค้า"]
    Switch Window    New
    Maximize Browser Window
    #Set Window Size    1920    1080    
    Wait And Wait Until Element Is Visible    //h3[text()="Article Master"]
    Wait And Click Element    //p[text()='จัดการสินค้า']
    Wait And Click Element    //p[text()='ขอเปลี่ยนแปลงข้อมูลสินค้า']/parent::span//parent::a[@href="/app/edit-mass-information"]
    Wait And Wait Until Element Is Visible    //input[@name="purchaser_group_no"]/following-sibling::div/div/input




