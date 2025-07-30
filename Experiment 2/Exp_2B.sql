--MADE BY GURSHAAN SINGH
CREATE TABLE Year_tbl (
    ID INT,
    YEAR INT,
    NPV INT
);

CREATE TABLE Queries (
    ID INT,
    YEAR INT
);

INSERT INTO Year_tbl (ID, YEAR, NPV)
VALUES
(1, 2018, 100),
(7, 2020, 30),
(13, 2019, 40),
(1, 2019, 113),
(2, 2008, 121),
(3, 2009, 12),
(11, 2020, 99),
(7, 2019, 0);

INSERT INTO Queries (ID, YEAR)
VALUES
(1, 2019),
(2, 2008),
(3, 2009),
(7, 2018),
(7, 2019),
(7, 2020),
(13, 2019);

select * from Year_tbl
select * from Queries

SELECT q.ID, q.YEAR, y.NPV
FROM
    Queries AS q 
LEFT JOIN
    Year_tbl AS y ON q.ID = y.ID AND q.YEAR = y.YEAR 
ORDER BY
    q.ID ASC;
--MADE BY GURSHAAN SINGH
