import csv

def read_csv(file_path):
    data = []
    with open(file_path, mode='r', encoding='utf-8') as file:
        reader = csv.DictReader(file)
        for row in reader:
            # ลบ `${}` ออกจากคีย์ในแต่ละแถว
            row = {key.strip('${}'): value for key, value in row.items()}
            data.append(row)
    return data
