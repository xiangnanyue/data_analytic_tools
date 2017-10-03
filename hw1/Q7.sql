SELECT sname from suppliers S
WHERE NOT EXISTS (
    (SELECT P1.pid from parts P1
        WHERE P1.color='Red' )
    EXCEPT
    (SELECT P.pid from parts P, catalog C
        WHERE P.pid=C.pid and C.sid=S.sid and P.color='Red' )
) 
order by sname;
    
