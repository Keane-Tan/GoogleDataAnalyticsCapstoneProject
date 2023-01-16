-- We want to see what information about the participants that we can learn.
SELECT
  Id,
  ROUND(MIN(BMI),2) AS minBMI,
  ROUND(MAX(BMI),2) AS maxBMI,
  ROUND(AVG(BMI),2) AS avgBMI,
  ROUND(AVG(SQRT(WeightKg/BMI)),2) AS heightMeter,
-- The classification below is based on Wikipedia
CASE
  WHEN AVG(BMI) < 18.5 THEN "underweight"
  WHEN AVG(BMI) >= 18.5 AND AVG(BMI) < 24.9 THEN "normal"
  WHEN AVG(BMI) >= 24.9 AND AVG(BMI) < 29.9 THEN "overweight"
  WHEN AVG(BMI) >= 29.9 THEN "obese"
END AS BMIClass
FROM
  `capstone-fitness.fitabaseData.weightLogInfo`
GROUP BY
  Id
ORDER BY
  avgBMI

/*
Even though there were supposedly 33 participants in this study, only 8 reported their weights and BMIs.
Unfortunately this is the only document that shows some information about our participants.
However, it might still be useful for understanding some of the numbers we see in other documents such as the calories burned each day, since people in different weight class tend to have different metabolism.
*/