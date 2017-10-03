select distinct sname from suppliers S, parts P, catalog C 
where P.color='Red' and C.cost<100 and C.pid=P.pid and C.sid=S.sid
order by sname;