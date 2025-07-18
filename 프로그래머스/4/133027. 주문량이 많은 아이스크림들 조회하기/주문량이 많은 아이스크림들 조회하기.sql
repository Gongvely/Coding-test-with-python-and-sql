-- 코드를 입력하세요
SELECT M.FLAVOR
FROM
(SELECT SHIPMENT_ID, FLAVOR, SUM(TOTAL_ORDER) TOTAL_ORDER
FROM JULY
GROUP BY FLAVOR) M
JOIN FIRST_HALF F
ON M.FLAVOR = F.FLAVOR
ORDER BY M.TOTAL_ORDER+F.TOTAL_ORDER DESC
LIMIT 3