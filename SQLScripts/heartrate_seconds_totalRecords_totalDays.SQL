SELECT 
  Id,
  COUNT(Id) as totalNumberOfRecords,
  COUNT(DISTINCT DATE(Time)) as totalNumberOfDays,
  MIN(Value) as minHeartRate,
  MAX(Value) as maxHeartRate,
  ROUND(AVG(Value),1) as avgHeartRate
FROM 
  `capstone-fitness.fitabaseData.heartrate_seconds`
GROUP BY
  Id
ORDER BY
  Id

/*
Only 14 out of 33 participants submitted their heartrate data. This could be because the data were less accessible, less easy to record, or less useful.
According to Mayo Clinic, normal resting heart rate is between 60 and 100 beats per minute, lower heart rates would imply better cardiovascular health.
Interestingly, most participants minimum heart rate is lower than 60. 
Based on the weightLogInfo dateset, participants 8877689391, 4558609924, 4319703577, 5577150313 are considered overweight. It would be hard to believe that they all have better than normal cardiovascular health.
Since resting heartrate is a useful indicator of health, perhaps improving the heart rate technology can help consumers.
*/