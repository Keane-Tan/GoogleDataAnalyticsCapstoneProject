SELECT  
  Id,
  DATE(Time) as date,
  COUNT(TIME(Time)) as numberOfRecordsPerDay,
FROM 
  `capstone-fitness.fitabaseData.heartrate_seconds`
GROUP BY
  Id,
  date