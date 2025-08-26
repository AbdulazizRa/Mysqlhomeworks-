1.ITH OrderedPairs AS (SELECT 
CASE WHEN col1 < col2 THEN col1 ELSE col2 END AS col1,
CASE WHEN col1 < col2 THEN col2 ELSE col1 END AS col2
 FROM InputTbl)
SELECT DISTINCT col1, col2
FROM OrderedPairs;
2.SELECT *
FROM TestMultipleZero
WHERE A <> 0 OR B <> 0 OR C <> 0 OR D <> 0;
3.SELECT *
FROM section1
WHERE id % 2 = 1;
4.SELECT *
FROM section1
ORDER BY id ASC
LIMIT 1;
5.SELECT *
FROM section1
ORDER BY id DESC
LIMIT 1;
6.SELECT *
FROM section1
WHERE name LIKE 'B%';
7.SELECT *
FROM ProductCodes
WHERE Code LIKE '%\_%' ESCAPE '\';
