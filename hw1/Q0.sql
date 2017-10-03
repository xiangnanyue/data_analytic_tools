/opt/pgsql/bin/psql postgres −−port=1999

create table suppliers (
    sid int,
    sname varchar(30),
    address varchar(40),
    primary key(sid)
);

create table parts (
    pid int,
    pname varchar(120),
    color varchar(40),
    primary key(pid)
);

create table catalog (
    sid int,
    pid int,
    cost real,
    primary key (sid, pid),
    foreign key (sid) references suppliers (sid)
        on delete set default on update cascade,
    foreign key (pid) references parts (pid)
        on delete set default on update cascade
);

\cd /home/sbdb2017s12/hw1/hw1_dataset
\copy suppliers From suppliers.txt with delimiter as ','
\copy parts From parts.txt with delimiter as ','
\copy catalog From catalog.txt with delimiter as ','

select * from parts;




