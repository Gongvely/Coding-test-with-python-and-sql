-- 코드를 입력하세요
SELECT B.CATEGORY, SUM(BS.SALES) TOTAL_SALES
FROM BOOK_SALES BS
INNER JOIN BOOK B
ON B.BOOK_ID = BS.BOOK_ID
WHERE BS.SALES_DATE <= '2022-01-31'
GROUP BY B.CATEGORY
ORDER BY B.CATEGORY 
