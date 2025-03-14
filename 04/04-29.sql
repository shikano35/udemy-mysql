SELECT DATABASE();

use my_db;

SHOW TABLES;

DESCRIBE people;

ALTER TABLE people ADD  age INT AFTER name;

INSERT people VALUES(1,"John",18,"2001-01-01");
INSERT people VALUES(2,"Alice",15,"2003-01-01");
INSERT people VALUES(3,"Paul",19,"2000-01-01");
INSERT people VALUES(4,"Chris",17,"2001-01-01");
INSERT people VALUES(5,"Vette",20,"2001-01-01");
INSERT people VALUES(6,"Tsuyoshi",21,"2001-01-01");

SELECT * FROM people;

# 年齢の昇順
SELECT * FROM people ORDER BY age;

# 年齢の降順
SELECT * FROM people ORDER BY age DESC;

# 名前で並び替え
SELECT * FROM people ORDER By name DESC;

# 2つのカラム昇順
SELECT * FROM people ORDER BY birth_day, name;

# 2つのカラム降順
SELECT * FROM people ORDER BY birth_day, name DESC;

SELECT * FROM people ORDER BY birth_day DESC, name;

SELECT * FROM people ORDER BY birth_day DESC, name DESC;

# ASCでも昇順になる
SELECT * FROM people ORDER BY birth_day DESC, name DESC, age ASC;

# ASC : 昇順
# DESC : 降順

# DISNTICT（被っているものを省略）
SELECT DISTINCT birth_day FROM people ORDER BY birth_day;

# 両方とも同じだと省略する
SELECT DISTINCT name, birth_day FROM people;

# LIMITは最初の~行だけ表示
SELECT * FROM people LIMIT 4;

# 3行飛ばして2行表示
SELECT * FROM people LIMIT 3, 2;

# 2行飛ばし4行表示
SELECT * FROM people LIMIT 4 OFFSET 2;