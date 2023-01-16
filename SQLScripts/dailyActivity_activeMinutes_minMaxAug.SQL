SELECT  
  Id,
  COUNT(ActivityDate) as numberOfDays,
  MIN(VeryActiveMinutes) as minVeryActiveMinutes,
  MAX(VeryActiveMinutes) as maxVeryActiveMinutes,
  AVG(VeryActiveMinutes) as avgVeryActiveMinutes,
  MIN(FairlyActiveMinutes) as minFairlyActiveMinutes,
  MAX(FairlyActiveMinutes) as maxFairlyActiveMinutes,
  AVG(FairlyActiveMinutes) as avgFairlyActiveMinutes,
  MIN(LightlyActiveMinutes) as minLightlyActiveMinutes,
  MAX(LightlyActiveMinutes) as maxLightlyActiveMinutes,
  AVG(LightlyActiveMinutes) as avgLightlyActiveMinutes,
  ROUND(MIN(SedentaryMinutes/60),1) as minSedentaryHours,
  ROUND(MAX(SedentaryMinutes/60),1) as maxSedentaryHours,
  ROUND(AVG(SedentaryMinutes/60),1) as avgSedentaryHours,
FROM 
  `capstone-fitness.fitabaseData.dailyActivity`
GROUP BY
  Id
ORDER BY
  Id