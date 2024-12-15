*** Settings ***
Library          SeleniumLibrary
Library          DebugLibrary
Resource         ../keywords/common_art.robot
Resource         ../keywords/Menu_editmass_B2C_field.robot
Resource         ../keywords/Menu_editmass_default_field.robot
Suite Setup      Login dohome and click web art(Edit Mass) A3
Test Teardown    Refresh page


*** Test Cases ***
Article Edit mass round 1 (default)
    Process CSV Rows    ${CSV_PATH_NOT_REQ(A3)}
    Search by article    10337178
    Click check box all article
    Click button edit field    
    Edit field 1 (default) A3    Run 1
    Edit field 2 (default) A3    Run 1
    Edit field 3 (default) A3    Run 1
    Edit field 4 (default) A3    Run 1
    Edit field 5 (default) A3    Run 1
    Click button Confirm edit field
    Click button Approve edit field

Article Edit mass round 2 (default)
    Process CSV Rows    ${CSV_PATH_NOT_REQ(A3)}
    Search by article    10337178
    Click check box all article
    Click button edit field    
    Edit field 1 (default) A3    Run 2
    Edit field 2 (default) A3    Run 2
    Edit field 3 (default) A3    Run 2
    Edit field 4 (default) A3    Run 2
    Edit field 5 (default) A3    Run 2
    Click button Confirm edit field
    Click button Approve edit field

Article Edit mass round 3 (default)
    Process CSV Rows    ${CSV_PATH_NOT_REQ(A3)}
    Search by article    10337178
    Click check box all article
    Click button edit field    
    Edit field 1 (default) A3    Run 3
    Edit field 2 (default) A3    Run 3
    Edit field 3 (default) A3    Run 3
    Edit field 4 (default) A3    Run 3
    Edit field 5 (default) A3    Run 3
    Click button Confirm edit field
    Click button Approve edit field

