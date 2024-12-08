
SELECT
    n.ename,
    n.deptno,
    a.dept_sal,
    n.sal
FROM
         zad2_pracownicy n
    INNER JOIN (
        SELECT
            AVG(sal) AS dept_sal,
            deptno
        FROM
            zad2_pracownicy
        GROUP BY
            deptno
    ) a ON ( n.deptno = a.deptno )
WHERE
    a.dept_sal < n.sal;
    