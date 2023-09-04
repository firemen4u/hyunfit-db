import os
from os.path import join

# 쿼리 실행 순서 startup -> tables -> pk -> fk

cwd = os.path.dirname(os.path.abspath(__file__))

table_script_path = join(cwd, "scripts/tables")
pk_script_path = join(cwd, "scripts/pk") 
fk_script_path = join(cwd, "scripts/fk") 

# sql 리스트에 startup 쿼리 추가
sql_files = [join(cwd, "scripts/startup.sql")]

# sql 리스트에 table 쿼리 추가
sql_files.extend(
    join(table_script_path, filename)
    for filename in os.listdir(table_script_path)
)
# sql 리스트에 pk 쿼리 추가
sql_files.extend(
    join(pk_script_path, filename)
    for filename in os.listdir(pk_script_path)
)
# sql 리스트에 fk 쿼리 추가
sql_files.extend(
    join(fk_script_path, filename)
    for filename in os.listdir(fk_script_path)
)

# Sql 리스트에 insert문 추가
sql_files.append(join(cwd, "scripts/generate-obj.sql"))


output_file = "output.sql"

# 출력 파일을 초기화합니다.
with open(output_file, "w", encoding="utf8") as f:
    pass

# SQL 파일들을 순서대로 읽어서 출력 파일에 추가합니다.
for sql_file in sql_files:
    with open(sql_file, "r", encoding="utf8") as f:
        sql_content = f.read()

    with open(output_file, "a", encoding="utf8") as f:
        f.write(sql_content + "\n\n")

print("SQL 파일들이 성공적으로 합쳐졌습니다.")