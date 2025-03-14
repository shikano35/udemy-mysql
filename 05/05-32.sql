SELECT DATABASE();

DESCRIBE customers;

# NULLを取り出す(IS NULLでないと取り出せない)
SELECT * FROM customers WHERE name IS NULL;

SELECT NULL=NULL;

SELECT NULL IS NULL;

# NULL以外を取り出す
SELECT * FROM customers WHERE name IS NOT NULL;

SELECT * FROM prefectures;

# NULLを取り出す
SELECT * FROM prefectures WHERE name IS NULL;

# 空白を取り出す
SELECT * FROM prefectures WHERE name = "";
SELECT * FROM prefectures WHERE name = '';

# BETWEEN（5以上10以下）
SELECT * FROM users WHERE age BETWEEN 5 AND 10;

# 5以上10以下以外
SELECT * FROM users WHERE age NOT BETWEEN 5 AND 10;

# LIKE, NOT LIKE
SELECT * FROM users WHERE name LIKE "村%"; -- 前方一致

SELECT * FROM users WHERE name LIKE "%郎"; -- 後方一致

SELECT * FROM users WHERE name LIKE "%a%"; -- 中間一致

SELECT * FROM users WHERE name LIKE "%ed%"; -- 中間一致

SELECT * FROM prefectures WHERE name LIKE "福_県"; -- 任意の一文字

SELECT * FROM prefectures WHERE name LIKE "福_%" ORDER BY name;
