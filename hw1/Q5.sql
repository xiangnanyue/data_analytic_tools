select distinct sname from suppliers S, parts P, catalog C 
where P.color='Red' and C.cost<100 and C.pid=P.pid and C.sid=S.sid
INTERSECT (
select distinct sname from suppliers S1, parts P1, catalog C1 
where P1.color='Green' and C1.cost<100 and C1.pid=P1.pid and C1.sid=S1.sid)
order by sname;