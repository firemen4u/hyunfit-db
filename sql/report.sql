-- 부위별 칼로리 소모량
SELECT ET.EXCTG_AREA,
       SUM(EXCH_TOTAL_CALORIES * ET.EXCTG_WEIGHT) as total_calories
FROM FIREMEN.EXERCISE_HISTORY EH
JOIN FIREMEN.EXERCISE_TARGET ET on EH.EXC_SEQ = ET.EXC_SEQ
WHERE EH.MBR_SEQ = 1 AND EXCH_START_TIME >= TIMESTAMP '2023-08-01 00:00:00' AND EXCH_START_TIME < TIMESTAMP '2023-09-01 00:00:00'
GROUP BY ET.EXCTG_AREA;


-- 한달간 전체 누적 통계
SELECT
    SUM(EXCH_TOTAL_CALORIES) as total_calories,
    SUM(ROUND((CAST(EXCH_END_TIME as DATE) - CAST(EXCH_START_TIME as DATE))*86400)) as total_exercise_time_seconds,
    SUM(EXCH_EXCELENT_CNT) as total_excellent_count,
    SUM(EXCH_GOOD_CNT) as total_good_count,
    SUM(EXCH_BAD_CNT) as total_bad_count
FROM EXERCISE_HISTORY EH
WHERE EH.MBR_SEQ = 1 AND EXCH_START_TIME >= TIMESTAMP '2023-08-01 00:00:00' AND EXCH_START_TIME < TIMESTAMP '2023-09-01 00:00:00';


-- 운동한 날짜 Select
SELECT TRUNC(EXCH_START_TIME) AS exercise_days
FROM EXERCISE_HISTORY EH
WHERE EH.MBR_SEQ = 1 AND EXCH_START_TIME >= TIMESTAMP '2023-08-01 00:00:00' AND EXCH_START_TIME < TIMESTAMP '2023-09-01 00:00:00'
GROUP BY TRUNC(EXCH_START_TIME)
ORDER BY exercise_days;

-- 월간 칼로리 소모량 + 경험치 히스토리 (주간별로 그룹)
WITH calories AS (
    SELECT TRUNC(EXCH_START_TIME, 'IW') AS stat_period,
           SUM(EXCH_TOTAL_CALORIES) AS total_calories
    FROM EXERCISE_HISTORY EH
    WHERE EH.MBR_SEQ = 1 AND EXCH_START_TIME >= TIMESTAMP '2023-08-01 00:00:00' AND EXCH_START_TIME < TIMESTAMP '2023-09-01 00:00:00'
    GROUP BY TRUNC(EXCH_START_TIME, 'IW')
), experiences AS (
    SELECT
        TRUNC(MEV_CREATION_DATE, 'IW') AS stat_period,
        SUM(MEV_AMOUNT) as exp_sum
    FROM MEMBER_EVENT
    WHERE MBR_SEQ = 1 AND MEV_CREATION_DATE >= TIMESTAMP '2023-08-01 00:00:00' AND MEV_CREATION_DATE < TIMESTAMP '2023-09-01 00:00:00' AND MEV_TYPE = 1
    GROUP BY TRUNC(MEV_CREATION_DATE, 'IW')
)
SELECT c.stat_period,
       c.total_calories,
       e.exp_sum,
       SUM(e.exp_sum) OVER (ORDER BY e.stat_period) AS cumulative_exp_sum
FROM calories c
JOIN experiences e ON c.stat_period = e.stat_period
ORDER BY e.stat_period;

-- -- 주간 칼로리 소모량
-- SELECT TRUNC(EXCH_START_TIME, 'IW') AS stat_period,
--        SUM(EXCH_TOTAL_CALORIES) AS total_calories
-- FROM EXERCISE_HISTORY EH
-- WHERE EH.MBR_SEQ = 1 AND EXCH_START_TIME >= TIMESTAMP '2023-08-01 00:00:00' AND EXCH_START_TIME < TIMESTAMP '2023-09-01 00:00:00'
-- GROUP BY TRUNC(EXCH_START_TIME, 'IW')
-- ORDER BY stat_period;

-- -- 주간 경험치 누적 히스토리
-- SELECT
--     stat_period,
--     SUM(amt) OVER (ORDER BY stat_period) AS cumulative_exp
-- FROM (
--     SELECT
--         TRUNC(MEV_CREATION_DATE, 'IW') AS stat_period,
--         SUM(MEV_AMOUNT) as amt
--     FROM MEMBER_EVENT
--     WHERE MBR_SEQ = 1 AND MEV_CREATION_DATE >= TIMESTAMP '2023-08-01 00:00:00' AND MEV_CREATION_DATE < TIMESTAMP '2023-09-01 00:00:00' AND MEV_TYPE = 1
--     GROUP BY TRUNC(MEV_CREATION_DATE, 'IW')
-- ) sum_by_week
-- ORDER BY stat_period;
