SELECT DISTINCT S1.sname, COUNT(*)
    FROM (SELECT P.pname, AVG(C.cost) as average from parts P, catalog C, suppliers S
            WHERE P.pid=C.pid AND S.sid=C.sid 
            GROUP BY P.pname) AS Temp, suppliers S1, catalog C1, parts P1
    WHERE Temp.average > C1.cost AND Temp.pname=P1.pname
        and P1.pid=C1.pid AND S1.sid=C1.sid 
    GROUP BY S1.sname
    ORDER BY S1.sname;
    