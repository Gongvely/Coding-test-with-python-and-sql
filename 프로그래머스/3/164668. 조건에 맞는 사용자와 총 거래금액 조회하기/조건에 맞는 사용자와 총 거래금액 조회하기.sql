-- 코드를 입력하세요
SELECT B.WRITER_ID USER_ID, U.NICKNAME NICKNAME, SUM(B.PRICE) TOTAL_SALES
FROM USED_GOODS_BOARD B
INNER JOIN USED_GOODS_USER U
ON B.WRITER_ID = U.USER_ID
WHERE B.STATUS = 'DONE'
GROUP BY B.WRITER_ID
HAVING SUM(B.PRICE) >= 700000
ORDER BY SUM(B.PRICE) 