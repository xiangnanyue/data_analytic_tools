
SELECT DISTINCT P1.pname, C1.cost, S1.sname
    FROM (SELECT P.pname, MIN(C.cost) as miniprice from parts P, catalog C, suppliers S
            WHERE P.pid=C.pid AND S.sid=C.sid 
            GROUP BY P.pname) as Temp, suppliers S1, parts P1, catalog C1
    WHERE Temp.miniprice=C1.cost and S1.sid=C1.sid and P1.pid=C1.pid
    ORDER BY P1.pname;