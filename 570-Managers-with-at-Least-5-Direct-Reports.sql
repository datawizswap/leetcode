SELECT name
FROM Employee 
WHERE id IN (
    SELECT managerId
    FROM Employee 
    GROUP BY managerId
    HAVING COUNT(*) >=5 
    );
