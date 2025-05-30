select NAME,cnt_name "COUNT"
FROM
(
SELECT NAME, COUNT(*) cnt_name
FROM ANIMAL_INS
WHERE NAME is not null
GROUP BY NAME
) a
WHERE cnt_name >= 2
ORDER BY NAME
