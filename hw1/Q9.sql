SELECT S1.sname, COUNT(*) FROM parts P1, suppliers S1, catalog C1
    WHERE P1.pid=C1.pid AND S1.sid=C1.sid 
    GROUP BY S1.sname
    HAVING COUNT(*) > 1
    ORDER BY S1.sname;