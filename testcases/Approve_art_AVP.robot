*** Settings ***
Library            SeleniumLibrary
Library            DebugLibrary
Library            DataDriver    file=../resources/data_Create_Article.csv  dialect=excel    encoding=utf-8
Resource           ../keywords/common_art.robot
Suite Setup        Login dohome and click web art(Approve avp) 
Test Template      Approve art AVP 
Test Teardown      Refresh page 

*** Test Cases ***
Approve art AVP    ${new_name_th}

*** Keywords ***
Approve art AVP
    [Arguments]    ${new_name_th}         
    Wait And Click Element   //p[text()='จัดการสินค้า']
    Wait And Click Element    //p[text()='จัดการข้อมูลสินค้า']
    Wait And Wait Until Element Is Visible    //div[@class="dx-datagrid-text-content"][text()='วันที่สร้าง']
    Wait And Click Element    //input[@name="article_name"]
    Wait And Input Text with Delay    //input[@name="article_name"]    ${new_name_th}
    Wait And Click Element    //*[text()='รอ AVP พิจารณา']//parent::div
    Wait And Click Element    //*[text()='ค้นหา']/parent::button
    Wait And Click Element    //tbody/tr[1]/td[2]/div[1]/button[1]
    Wait And Click Element    //*[text()='อนุมัติ']//parent::button/..
    Wait And Click Element    //*[text()='ยืนยัน']//parent::button/..
    Wait And Wait Until Element Is Visible    //*[text()='จัดการข้อมูลสินค้า']
    Sleep    1s
    Pass Execution    End Test