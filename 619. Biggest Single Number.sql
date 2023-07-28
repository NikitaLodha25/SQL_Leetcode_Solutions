SELECT MAX(num) AS num
FROM (
    SELECT num, COUNT(*) AS count_num
    FROM MyNumbers
    GROUP BY num
) AS temp
WHERE count_num = 1;
