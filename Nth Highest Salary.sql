--https://leetcode.com/problems/nth-highest-salary/description/

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  SET N=N-1;  #this we have to wriet
  RETURN (
    SELECT IFNULL(
      (
        SELECT DISTINCT salary 
        FROM employee 
        ORDER BY salary DESC 
        LIMIT 1 OFFSET N
      ),
      NULL
    )
  );
END
