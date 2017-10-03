select t.sname from 
(select distinct sname, address from suppliers S, catalog C 
where S.sid=C.sid ) t 
order by sname, address;