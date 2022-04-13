USE giteprussas;
-- DELETE FROM teste;

SELECT * FROM teste;
SELECT chave FROM teste;
SELECT valor FROM teste;
SELECT chave, valor FROM teste;

SELECT chave, valor FROM teste WHERE chave < 3;
SELECT chave, valor FROM teste WHERE chave BETWEEN 4 AND 7;
SELECT chave, valor FROM teste WHERE valor LIKE '%h%';

SELECT * FROM teste ORDER BY chave DESC;
SELECT * FROM teste ORDER BY valor ASC;

SELECT * FROM teste ORDER BY chave DESC LIMIT 5;
