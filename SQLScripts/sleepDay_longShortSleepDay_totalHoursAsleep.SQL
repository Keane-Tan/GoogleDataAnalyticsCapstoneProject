SELECT
  Id,
  COUNT(Id) AS numberOfSleepDaysRecorded,
  -- < 5 hours of sleep is considered short sleep
  ROUND(SUM(
    CASE
      WHEN TotalMinutesAsleep < 300 THEN 1
      ELSE 0
      END
  )*100/COUNT(Id),1) AS percentageOfShortSleepDays,
  -- > 9 hours of sleep is considered long sleep
  ROUND(SUM(
    CASE
      WHEN TotalMinutesAsleep > 540 THEN 1
      ELSE 0
      END
  )*100/COUNT(Id),1) AS percentageOfLongSleepDays,
  ROUND(MAX(TotalMinutesAsleep)/60,2) AS maxTotalHoursAsleep,
  ROUND(MIN(TotalMinutesAsleep)/60,2) AS minTotalHoursAsleep,
  ROUND(AVG(TotalMinutesAsleep)/60,2) AS avgTotalHoursAsleep,
FROM
  `capstone-fitness.fitabaseData.sleepDay`
GROUP BY
  Id
ORDER BY
  numberOfSleepDaysRecorded

/*
Out of the 33 participants, 24 of them recorded their sleep activity.
However, 9 of them did not record their sleep activity for more than 15 days.
*/