SELECT DISTINCT sname FROM suppliers S
    WHERE NOT EXISTS (
        (SELECT P.pid FROM parts P, catalog C
            WHERE P.pid=C.pid and S.sid=C.sid 
        )
        EXCEPT
        (SELECT P1.pid FROM parts P1, catalog C1
            WHERE P1.pid=C1.pid and S.sid=C1.sid and C1.cost<100
        )
    )
    order by sname;