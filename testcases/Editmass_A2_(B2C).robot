*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Suite Setup    Login dohome and click web art(Edit Mass) A2   
Resource    ../keywords/common_art.robot
Resource    ../keywords/Menu_editmass_B2C_field.robot
Resource    ../keywords/Menu_editmass_default_field.robot
Test Teardown    Refresh page


*** Test Cases ***
Article Edit mass round 1
    Process CSV Rows    ${CSV_PATH_B2C(A2)}
    Search by article    10337742
    #Check value article    810000756
    Click check box all article
    Click button edit field    
    Edit field 1 (B2C) A2     Run 1
    Edit field 2 (B2C) A2     Run 1
    Edit field 3 (B2C) A2     Run 1
    Edit field 4 (B2C) A2     Run 1
    Edit field 5 (B2C) A2     Run 1
    Click button Confirm edit field
    Click button Approve edit field

Article Edit mass round 2
    Process CSV Rows    ${CSV_PATH_B2C(A2)}
    Search by article    10337743
    #Check value article    19999124
    Click check box all article
    Click button edit field    
    Edit field 1 (B2C) A2    Run 2
    Edit field 2 (B2C) A2    Run 2
    Edit field 3 (B2C) A2    Run 2
    Edit field 4 (B2C) A2    Run 2
    Edit field 5 (B2C) A2    Run 2
    Click button Confirm edit field
    Click button Approve edit field

Article Edit mass round 3
    Process CSV Rows    ${CSV_PATH_B2C(A2)}
    Search by article    10337741
    Click check box all article
    Click button edit field    
    Edit field 1 (B2C) A2    Run 3
    Edit field 2 (B2C) A2    Run 3
    Edit field 3 (B2C) A2    Run 3
    Edit field 4 (B2C) A2    Run 3
    # Edit field 5    Run 3 comment
    Click button Confirm edit field
    Click button Approve edit field


