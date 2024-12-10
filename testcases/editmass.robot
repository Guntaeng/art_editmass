*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Suite Setup    Login dohome and click web art(Edit Mass)
Resource    ../keywords/common_art.robot
Resource    ../keywords/Menu_editmass_v3.robot
Resource    ../keywords/Menu_editmass_default_field.robot
Test Teardown    Refresh page


*** Test Cases ***
Article Edit mass round 1
    Process CSV Rows    ${CSV_PATH_B2C}
    Search by article    81000075
    Click check box all article
    Click button edit field    
    Edit field 1 (B2C)    Run 1
    Edit field 2 (B2C)    Run 1
    Edit field 3 (B2C)    Run 1
    Edit field 4 (B2C)    Run 1
    Edit field 5 (B2C)    Run 1
    Click button Confirm edit field
    Click button Approve edit field

Article Edit mass round 2
    Process CSV Rows    ${CSV_PATH_B2C}
    Search by article    19999124
    Click check box all article
    Click button edit field    
    Edit field 1 (B2C)    Run 2
    Edit field 2 (B2C)    Run 2
    Edit field 3 (B2C)    Run 2
    Edit field 4 (B2C)    Run 2
    Edit field 5 (B2C)    Run 2
    Click button Confirm edit field
    Click button Approve edit field

Article Edit mass round 3
    Process CSV Rows    ${CSV_PATH_B2C}
    Search by article    55000219
    Click check box all article
    Click button edit field    
    Edit field 1 (B2C)    Run 3
    Edit field 2 (B2C)    Run 3
    Edit field 3 (B2C)    Run 3
    Edit field 4 (B2C)    Run 3
    # Edit field 5    Run 3
    Click button Confirm edit field
    Click button Approve edit field


Article Edit mass round 1 (default)
    Process CSV Rows    ${CSV_PATH_NOT_REQ}
    Search by article    10337178
    Click check box all article
    Click button edit field    
    Edit field 1 (default)    Run 1
    Edit field 2 (default)    Run 1
    Edit field 3 (default)    Run 1
    Click button Confirm edit field
    Click button Approve edit field
