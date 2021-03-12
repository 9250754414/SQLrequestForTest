
DECLARE @Colors TABLE(Name nvarchar(20))
INSERT INTO @Colors
VALUES ('green'),
('black'),
('yellow'),
('blue'),
('white'),
('red'),
('brown');

SELECT  t1.Name Name1, 
        t2.Name Name2, 
        t3.Name Name3,
		t4.Name Name4
FROM @Colors t1

JOIN @Colors t2 ON t2.Name NOT IN (t1.Name) and t1.Name>t2.Name
JOIN @Colors t3 ON t3.Name NOT IN (t1.Name, t2.Name) and t3.Name>t2.Name and t3.Name>t1.Name
JOIN @Colors t4 ON t4.Name NOT IN (t1.Name,t2.Name,t3.Name) and t4.Name>t1.Name and t4.Name>t2.Name and t4.Name>t3.Name
