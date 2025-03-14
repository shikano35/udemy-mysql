SELECT DATABASE();

use my_db;

SHOW TABLES;

#全レコード、全カラム
SELECT * FROM people;

# カラム一部（カンマで区切ることで複数取得可能）
SELECT name,id,birth_day,name FROM people;

# 名前変更
SELECT id AS "番号",name AS "名前" FROM people;

# WHERE句（5未満を取得)
SELECT * FROM people WHERE id<5;

# Jiroのみ取得
SELECT * FROM people WHERE name="Jiro";

# UPDATE文
UPDATE people SET birth_day="1900-01-01",name="";

SELECT * FROM people;

# UPDATE where (idが3のところを更新)
UPDATE people SET name="Taro",birth_day="2000-01-01" WHERE id=3;

# UPDATE where (idが4より大きいところを更新)
UPDATE people SET name="Jiro",birth_day="2000-01-01" WHERE id>4;

# DELETE : レコード削除(idが2のところを削除)
DELETE FROM people WHERE id=2;

# idが4より大きいところを削除
DELETE FROM people WHERE id>4;

# 全て削除
DELETE FROM people;
