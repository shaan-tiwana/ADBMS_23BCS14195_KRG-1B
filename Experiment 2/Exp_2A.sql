--MADE BY GURSHAAN SINGH
CREATE TABLE employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    ManagerID INT
);

INSERT INTO employee (EmpID, EmpName, Department, ManagerID) VALUES
(101, 'Tim Cook', 'Engineering', NULL),
(102, 'Bob Johnson', 'Engineering', 101),
(103, 'Charlie Brown', 'HR', 101),
(104, 'Gurshaan S.', 'Engineering', 102),
(105, 'Eve Davis', 'HR', 103),
(106, 'Sundar Pichai', 'Sales', 105),
(107, 'Grace Green', 'Sales', 106);

SELECT
    E1.EmpName AS [EMPLOYEE NAME],
    E1.Department AS [EMP_DEPARTMENT],
    E2.EmpName AS [MANAGER NAME],
    E2.Department AS [MANAGER_DEPARTMENT]
FROM
    employee AS E1
LEFT OUTER JOIN
    employee AS E2 ON E1.ManagerID = E2.EmpID;
--MADE BY GURSHAAN SINGH
