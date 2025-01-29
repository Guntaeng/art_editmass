*** Settings ***
Library          SeleniumLibrary
Library          DebugLibrary
Library          CSVLibrary
Resource         ../keywords/common_art.robot
Resource         ../keywords/Edit_field_A1.robot
Resource         ../keywords/Edit_field_A2(B2C).robot
Resource         ../keywords/Edit_field_A3(B2C).robot
Library          DataDriver    file=../resources/data_driven/art_barcode.csv  dialect=excel    encoding=utf-8
Suite Setup      Login dohome and click web art(Edit Mass) A3
Test Template    Edit field name Categories
Test Teardown    Refresh page



*** Test Cases ***
Run Edit field Categories    ${article_no}    ${value}


*** Keywords ***
Edit field name Categories
    [Arguments]    ${article_no}    ${value}   
    Search by article                               ${article_no}
    Click check box all article
    Click button edit field    
    No. 1 Edit field name (ฺB2C/A3/Data-Driven) :    Categories    ${value}
    Click button Confirm edit field
    Click button Approve edit field

