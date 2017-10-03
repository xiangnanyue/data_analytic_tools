select pname, color from parts P, catalog C, suppliers S 
where P.pid=C.pid and C.sid=S.sid and S.sname='Perfunctory Parts'
order by pname, color;