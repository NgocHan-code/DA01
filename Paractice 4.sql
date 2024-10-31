EX 1
SELECT (SELECT COUNT(*) from viewership WHERE device_type = 'laptop') as laptop_views, (SELECT COUNT(*) from viewership WHERE device_type in ('tablet','phone')) as mobile_views
FROM viewership
LIMIT 1;
EX 2
SELECT 
    x, 
    y, 
    z, 
    CASE 
        WHEN x + y > z AND x + z > y AND y + z > x THEN 'Yes' 
        ELSE 'No' 
    END AS triangle
FROM Triangle;
EX 3
SELECT
  ROUND(100.0 * 
    SUM(CASE WHEN call_category IS NULL OR call_category = 'n/a'
      THEN 1
      ELSE 0
      END)
    /COUNT(*), 1) AS uncategorised_call_pct
FROM callers
EX 4
SELECT name
FROM Customer
WHERE id NOT IN (SELECT referee_id FROM Customer WHERE referee_id = 2);
EX 5
SELECT 
    CASE 
        WHEN pclass = 1 THEN 'first_class'
        WHEN pclass = 2 THEN 'second_class'
        WHEN pclass = 3 THEN 'third_class'
    END AS class,
    SUM(survived) AS survivors,
    COUNT(*) - SUM(survived) AS non_survivors
FROM 
    passengers
GROUP BY 
    pclass
