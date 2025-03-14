# CREATE DATABASE day4_9_db;

SHOW DATABASES;

USE day_4_9_db;

SHOW TABLES;

DESCRIBE users;

SELECT * FROM users LIMIT 10;

# 「=」で絞り込む
SELECT * FROM users WHERE name = "奥村 成美";

SELECT * FROM users WHERE birth_place="日本";

-- FROM -> WHERE -> ORDER BY -> LIMIT
SELECT * FROM users WHERE birth_place<>"日本" ORDER BY age;

SELECT * FROM users WHERE birth_place<>"日本" ORDER BY age LIMIT 10;

# 年齢が50際の人を取り出す
SELECT * FROM users WHERE age=50 LIMIT 10;

# <, >, <=, >=, <>
SELECT * FROM users WHERE age<=50 LIMIT 10;

DESCRIBE users;

# 日付の取り出し
SELECT * FROM users WHERE birth_day < "2011-04-03";

SELECT * FROM users WHERE is_admin=0;

# UPDATE(id=1の人の名前を奥山 成美さんに変更)
UPDATE users SET name="奥山 成美" WHERE id=1;

#DELETE
SELECT * FROM users ORDER BY id DESC LIMIT 1;

DELETE FROM users WHERE id>190;