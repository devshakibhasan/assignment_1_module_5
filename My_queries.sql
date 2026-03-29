
-- Question 1 Answer: 
SELECT * FROM employee 
WHERE salary = (
    SELECT DISTINCT salary 
    FROM employee 
    ORDER BY salary DESC 
    LIMIT 1 OFFSET 1
) 
LIMIT 3;

-- Question 2 Answer: 
SELECT MAX(salary) AS Second_Highest_Salary 
FROM employee 
WHERE salary < (SELECT MAX(salary) FROM employee);


-- Question 3 Answer: 
SELECT OPEN_BRANCH_ID, AVG(PENDING_BALANCE) AS Average_Pending_Balance
FROM account
WHERE STATUS = 'ACTIVE'
GROUP BY OPEN_BRANCH_ID
HAVING AVG(PENDING_BALANCE) < 4300;


-- Question D Answer: 

SELECT * FROM account 
ORDER BY ACCOUNT_ID ASC 
LIMIT 5 OFFSET 5;




-- Question E Answer: 

SELECT COUNT(BRANCH_ID) AS Total_Branches 
FROM branch;