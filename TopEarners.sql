SELECT CONCAT( mAX(SALARY * MONTHS), ' ', count(*))
FROM EMPLOYEE
where  (SALARY * MONTHS) = (SELECT MAX(SALARY * MONTHS) FROM EMPLOYEE);