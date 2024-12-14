*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/config_art.robot
Resource    ../keywords/common_art.robot
Library    BuiltIn
Library    OperatingSystem
Library    String
Library    DebugLibrary
Library    Process


*** Variables ***
${NOT_FOUND_LOCATOR}    //*[text()='ไม่พบรายการ']

*** Keywords ***
Login dohome and click web art(Approve Edit Mass AVP) 
    #Open browser web url    ${url_dohome}    headlesschrome
    Open Browser Web URL    ${url_dohome}    chrome             
    #Set Window Size    1920    1080
    Maximize Browser Window
    Wait until keyword succeeds    5x   2s    Wait Until Element Contains    //button[text()='เข้าสู่ระบบ']    เข้าสู่ระบบ       
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //button[text()='เข้าสู่ระบบ']
    Wait until keyword succeeds    5x   2s    Wait Until Element Contains   //*[@class="text-2xl text-primary font-bold"]     เข้าสู่ระบบ
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //input[@name="username"] 
    Wait until keyword succeeds    5x   2s    Input Text with Delay    //input[@name="username"]     ${user_avp}
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //input[@name="password"]
    Wait until keyword succeeds    5x   2s    Input Text with Delay   //input[@name="password"]    ${pass}
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //button[@type="submit"][ text()='เข้าสู่ระบบ']
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //*[@aria-label="ระบบจัดการข้อมูลสินค้า"]
    Wait until keyword succeeds    5x   2s    Switch Window    New
    Maximize Browser Window
    #Set Window Size    1920    1080    
    Wait until keyword succeeds    5x   2s    Wait Until Element Is Visible    //h3[text()="Article Master"]
    Wait And Click Element    //p[text()='จัดการสินค้า']
    Wait And Click Element    //p[text()='อนุมัติรายการขอเปลี่ยนแปลง']/parent::span//parent::a[@href="/app/edit-mass-approve"]
    Wait And Wait Until Element Is Visible    //p[text()="ชุดคำสั่งการเปลี่ยนแปลงข้อมูล"]

Login dohome and click web art(Approve Edit Mass DM) 
    #Open browser web url    ${url_dohome}    headlesschrome
    Open Browser Web URL    ${url_dohome}    chrome             
    #Set Window Size    1920    1080
    Maximize Browser Window
    Wait until keyword succeeds    5x   2s    Wait Until Element Contains    //button[text()='เข้าสู่ระบบ']    เข้าสู่ระบบ       
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //button[text()='เข้าสู่ระบบ']
    Wait until keyword succeeds    5x   2s    Wait Until Element Contains   //*[@class="text-2xl text-primary font-bold"]     เข้าสู่ระบบ
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //input[@name="username"] 
    Wait until keyword succeeds    5x   2s    Input Text with Delay    //input[@name="username"]     ${user_dm}
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //input[@name="password"]
    Wait until keyword succeeds    5x   2s    Input Text with Delay   //input[@name="password"]    ${pass}
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //button[@type="submit"][ text()='เข้าสู่ระบบ']
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //*[@aria-label="ระบบจัดการข้อมูลสินค้า"]
    Wait until keyword succeeds    5x   2s    Switch Window    New
    Maximize Browser Window
    #Set Window Size    1920    1080    
    Wait until keyword succeeds    5x   2s    Wait Until Element Is Visible    //h3[text()="Article Master"]
    Wait And Click Element    //p[text()='จัดการสินค้า']
    Wait And Click Element    //p[text()='อนุมัติรายการขอเปลี่ยนแปลง']/parent::span//parent::a[@href="/app/edit-mass-approve"]
    Wait And Wait Until Element Is Visible    //p[text()="ชุดคำสั่งการเปลี่ยนแปลงข้อมูล"]








Condition search A1 Waiting for AVP approval
    Wait And Click Element    //*[@name="A1"]/following-sibling::div/span[1]
    Wait And Click Element    //*[@name="AVP_W"]/following-sibling::div/span[1]
    Wait And Click Element    //*[text()="ค้นหา"]
    Wait And Wait Until Element Is Visible    //*[text()="อนุมัติ"]



Condition search A2 Waiting for DM approval
    Wait And Click Element    //*[@name="A2"]/following-sibling::div/span[1]
    Wait And Click Element    //*[@name="DM_W"]/following-sibling::div/span[1]
    Wait And Click Element    //*[text()="ค้นหา"]
    Wait And Wait Until Element Is Visible    //*[text()="อนุมัติ"]




Filter By Article
    [Arguments]    ${article}
    Wait And Input Text with Delay    //tbody/tr[2]/td[6]/div[1]/div[2]/div[1]/div[1]/div[1]/input[1]    ${article}        


Click check all box
    Wait And Click Element    //body[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[3]/div[1]/div[1]/div[1]/div[5]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/div[1]/div[1]/span[1]


Click Approve
    Wait And Click Element    //*[text()='อนุมัติ']
    Wait And Click Element    //*[text()='ยืนยัน']

