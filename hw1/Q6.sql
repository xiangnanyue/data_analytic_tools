SELECT DISTINCT P1.pname FROM parts P1, suppliers S1, catalog C1
    WHERE P1.pid=C1.pid and S1.sid=C1.sid 
        and EXISTS (
        SELECT DISTINCT P.pname from parts P, suppliers S, catalog C 
            WHERE S.sname<>S1.sname and P.pname=P1.pname 
                    and P.pid=C.pid and S.sid=C.sid 
        )
    order by P1.pname;