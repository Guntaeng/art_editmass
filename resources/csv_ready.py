import csv

def count_x_in_column_and_get_rows(file_path):
    x_count = 0
    x_rows = []  # ใช้เก็บแถวที่มี 'X' ในคอลัมน์ที่สอง
    
    with open(file_path, mode='r', encoding='utf-8') as file:
        reader = csv.reader(file)
        
        for row in reader:
            # ตรวจสอบว่ามีคอลัมน์ที่ 2 (index 1) และค่าในคอลัมน์นั้นคือ 'X'
            if len(row) > 1 and row[0] == 'A2':
                x_count += 1
                x_rows.append(row)  # เพิ่มแถวที่มี 'X' ลงใน x_rows
    
    # ส่งค่ากลับเป็น dictionary ที่มี x_count และ x_rows
    return {"x_count": x_count, "x_rows": x_rows}
