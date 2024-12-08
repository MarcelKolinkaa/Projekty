begin
execute immediate'
drop table zad2_pracownicy
';

execute immediate'
CREATE TABLE zad2_pracownicy (
    empno     NUMBER PRIMARY KEY,
    ename     VARCHAR2(200char),
    job       VARCHAR2(200char),
    mgr       NUMBER,
    hiredate  DATE,
    sal       NUMBER,
    comm      NUMBER,
    deptno    NUMBER
)';



insert into zad2_pracownicy  (empno,Ename,job,mgr,hiredate,sal,comm,deptno) values  (7698,'blake','manager',7839,to_date('01.05.1981','dd-mm-rrrr'),2859,null,30);
insert into zad2_pracownicy  (empno,Ename,job,mgr,hiredate,sal,comm,deptno) values  (7782,'clark','manager',7839,to_date('09.06.1981','dd-mm-rrrr'),2550,null,10);
insert into zad2_pracownicy  (empno,Ename,job,mgr,hiredate,sal,comm,deptno) values  (7566,'jones','manager',7839,to_date('02.04.1981','dd-mm-rrrr'),2975,null,20);
insert into zad2_pracownicy  (empno,Ename,job,mgr,hiredate,sal,comm,deptno) values  (7788,'scott','analyst',7566,to_date('19.04.1987','dd-mm-rrrr'),3000,null,20);
insert into zad2_pracownicy  (empno,Ename,job,mgr,hiredate,sal,comm,deptno) values  (7902,'ford','anaylst',7566,to_date('03.12.1981','dd-mm-rrrr'),3000,null,20);
insert into zad2_pracownicy  (empno,Ename,job,mgr,hiredate,sal,comm,deptno) values  (7369,'smith','clerk',7902,to_date('17.12.1980','dd-mm-rrrr'),800,null,20);
insert into zad2_pracownicy  (empno,Ename,job,mgr,hiredate,sal,comm,deptno) values  (7499,'allen','salesman',7698,to_date('20.02.1981','dd-mm-rrrr'),300,300,30);
insert into zad2_pracownicy  (empno,Ename,job,mgr,hiredate,sal,comm,deptno) values  (7521,'ward','salesman',7698,to_date('22.02.1981','dd-mm-rrrr'),1250,500,30);
insert into zad2_pracownicy  (empno,Ename,job,mgr,hiredate,sal,comm,deptno) values  (7654,'martin','salesman',7698,to_date('28.09.1981','dd-mm-rrrr'),1250,1400,30);
insert into zad2_pracownicy  (empno,Ename,job,mgr,hiredate,sal,comm,deptno) values  (7844,'turner','salesman',7698,to_date('08.09.1981','dd-mm-rrrr'),1500,0,30);
insert into zad2_pracownicy  (empno,Ename,job,mgr,hiredate,sal,comm,deptno) values  (7876,'adams','clerk',7788,to_date('23.05.1987','dd-mm-rrrr'),1100,null,20);
insert into zad2_pracownicy  (empno,Ename,job,mgr,hiredate,sal,comm,deptno) values  (7900,'james','clerk',77698,to_date('23.05.1981','dd-mm-rrrr'),950,null,30);
insert into zad2_pracownicy  (empno,Ename,job,mgr,hiredate,sal,comm,deptno) values  (7934,'miller','clerk',7782,to_date('23.01.1982','dd-mm-rrrr'),1400,null,10);
commit;
end;
