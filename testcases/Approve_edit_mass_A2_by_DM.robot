*** Settings ***
Library          SeleniumLibrary
Resource         ../keywords/Menu_approve_edit_mass.robot
Library          DataDriver    file=../resources/article_waiting_approve.csv  dialect=excel    encoding=utf-8
Suite Setup      Login dohome and click web art(Approve Edit Mass DM)
Test Template    Approve Edit mass (DM)
Test Teardown    Refresh page


*** Test Cases ***
Approve Edit mass (DM)    ${art}

*** Keywords ***
Approve Edit mass (DM)
    [Arguments]    ${art}
    Condition search A2 Waiting for DM approval
    Filter By Article    ${art}
    Click check all box
    Click Approve
