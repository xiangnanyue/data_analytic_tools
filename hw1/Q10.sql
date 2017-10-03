SELECT P.pname, MAX(C.cost), AVG(C.cost) from parts P, catalog C, Suppliers S
    WHERE P.pid=C.pid AND S.sid=C.sid 
    GROUP BY P.pname
    ORDER BY P.pname;