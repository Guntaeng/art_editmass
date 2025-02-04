*** Settings ***
Library    Collections
Library    OperatingSystem
Library    String

*** Variables ***
${CSV_INPUT}    /Users/guntz/Desktop/art_editmass/resources/sd_csv.csv
${CSV_OUTPUT}   /Users/guntz/Desktop/art_editmass/resources/sd_csv_2.csv

*** Test Cases ***
Group Data By Cat And Save New CSV
    ${data}=    Get File    ${CSV_INPUT}
    ${lines}=    Split To Lines    ${data}

    # อ่าน Header
    ${header}=    Get From List    ${lines}    0
    ${header}=    Split String    ${header}    ,

    # ค้นหาตำแหน่งคอลัมน์
    ${cat_index}=    Evaluate    ${header}.index('Cat.')
    ${article_index}=    Evaluate    ${header}.index('Article')

    # จัดกลุ่มข้อมูล
    ${grouped}=    Create Dictionary

    FOR    ${line}    IN    @{lines[1:]}
        ${cols}=    Split String    ${line}    ,
        ${cat}=    Get From List    ${cols}    ${cat_index}
        ${article}=    Get From List    ${cols}    ${article_index}

        ${existing}=    Get From Dictionary    ${grouped}    ${cat}    default=${EMPTY}
        ${new_value}=    Set Variable If    '${existing}' == '${EMPTY}'    ${article}    ${existing},${article}

        Set To Dictionary    ${grouped}    ${cat}    ${new_value}
    END

    # เขียน CSV
    Create File    ${CSV_OUTPUT}
    Append To File    ${CSV_OUTPUT}    "Cat.,Article\n"

    FOR    ${key}    IN    @{grouped.keys()}
        ${article_list}=    Get From Dictionary    ${grouped}    ${key}    default=${EMPTY}
        ${line}=    Catenate    SEPARATOR=,    ${key}    ${article_list}
        Append To File    ${CSV_OUTPUT}    ${line}\n
    END