*** Settings ***
Library          SeleniumLibrary
Library          DebugLibrary
Resource         ../keywords/common_art.robot
Resource         ../keywords/Edit_field_A1.robot
Resource         ../keywords/Edit_field_A2(B2C).robot
Resource         ../keywords/Edit_field_A3(B2C).robot
#Suite Setup      Login dohome and click web art(Edit Mass) A2
Test Teardown    Refresh page


*** Test Cases ***
TC001 : Edit field name A1
    [Setup]    Login dohome and click web art(Edit Mass) A2
    Search by article                           10337742
    Check value article                         10337742
    Click check box all article
    Click button edit field    
    No. 1 Edit field name (A1) :                กรรมสิทธิ์ของตัวโชว์
    No. 2 Edit field name (A1) :                กลุ่มจัดซื้อต่างประเทศ
    No. 3 Edit field name (A1) :                สถานะสินค้า Active / Inactive (Item Status)
    No. 4 Edit field name (A1) :                สินค้าที่ต้องระบุ batch (Batch management)
    No. 5 Edit field name (A1) :                กลุ่มสินค้า Core หลัก /เสริม (Product Role)
    # Click button Confirm edit field
    # Click button Approve edit field


TC002 : Edit field name A1
    [Setup]    Login dohome and click web art(Edit Mass) A2
    Search by article                           10337742
    Check value article                         10337742
    Click check box all article
    Click button edit field    
    No. 1 Edit field name (A1) :                การจัดกลุ่มสินค้า (Item indicator)
    No. 2 Edit field name (A1) :                กลุ่มย่อยของ Product Role
    No. 3 Edit field name (A1) :                Product trends
    No. 4 Edit field name (A1) :                กลุ่มจัดซื้อในประเทศ (Purch. Group)
    No. 5 Edit field name (A1) :                พนักงาน Shipping
    # Click button Confirm edit field
    # Click button Approve edit field


TC003 : Edit field name A1
    [Setup]    Login dohome and click web art(Edit Mass) A2
    Search by article                           10337742
    Check value article                         10337742
    Click check box all article
    Click button edit field    
    No. 1 Edit field name (A1) :                สถานะซื้อสินค้า (Status purchase)
    No. 2 Edit field name (A1) :                สถานะขายสินค้า (Status Sale)
    No. 3 Edit field name (A1) :                Pต้องมี Stock ตัวโชว์
    No. 4 Edit field name (A1) :                หมายเหตุการเลิกขายสินค้า (Sub indicator)
    # Click button Confirm edit field
    # Click button Approve edit field

