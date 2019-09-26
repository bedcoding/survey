# 쿼리문에서 직접 백분율 구해서 출력하는 상황인데 너무 지저분해서 결국 이 쿼리 안 쓰고 jsp에서 직접 계산해서 처리해주기로 했다

SELECT answer, round((total/t2.cnt)*100) AS 퍼센트
FROM (
        SELECT answer, COUNT(*) AS total
        FROM surveyresult
        GROUP BY answer
) AS t1, (SELECT count(*)AS cnt
FROM surveyresult) AS  t2
GROUP BY answer
ORDER BY answer ASC