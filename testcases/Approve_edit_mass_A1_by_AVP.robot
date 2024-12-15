*** Settings ***
Library          SeleniumLibrary
Resource         ../keywords/Menu_approve_edit_mass.robot
Library          DataDriver    file=../resources/article_waiting_approve.csv  dialect=excel    encoding=utf-8
Suite Setup      Login dohome and click web art(Approve Edit Mass AVP)
Test Template    Approve Edit mass (AVP)
Test Teardown    Refresh page



*** Test Cases ***
Approve Edit mass (AVP)    ${art}

*** Keywords ***
Approve Edit mass (AVP)
    [Arguments]    ${art}
    Condition search A1 Waiting for AVP approval
    Filter By Article    ${art}
    Click check all box
    Click Approve



