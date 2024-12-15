*** Settings ***
Library          SeleniumLibrary
Library          DebugLibrary
Resource         ../keywords/common_art.robot
Resource         ../keywords/Menu_editmass_B2C_field.robot
Resource         ../keywords/Menu_editmass_default_field.robot
Suite Setup      Login dohome and click web art(Edit Mass) A3
Test Teardown    Refresh page


*** Test Cases ***
Article Edit mass round 1
    Process CSV Rows    ${CSV_PATH_B2C(A3)}
    Search by article    10337747
    Click check box all article
    Click button edit field    
    Edit field 1 (B2C) A3     Run 1
    Edit field 2 (B2C) A3     Run 1
    # Edit field 3 (B2C) A2     Run 1
    # Edit field 4 (B2C) A2     Run 1
    # Edit field 5 (B2C) A2     Run 1
    Click button Confirm edit field
    Click button Approve edit field

