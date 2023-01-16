SELECT  
  Id,
  COUNT(ActivityDate) as numberOfDays,
  MIN(VeryActiveDistance) as minVeryActiveDistance,
  MAX(VeryActiveDistance) as maxVeryActiveDistance,
  AVG(VeryActiveDistance) as avgVeryActiveDistance,
  MIN(ModeratelyActiveDistance) as minModeratelyActiveDistance,
  MAX(ModeratelyActiveDistance) as maxModeratelyActiveDistance,
  AVG(ModeratelyActiveDistance) as avgModeratelyActiveDistance,
  MIN(LightActiveDistance) as minLightActiveDistance,
  MAX(LightActiveDistance) as maxLightActiveDistance,
  AVG(LightActiveDistance) as avgLightActiveDistance,
  MIN(SedentaryActiveDistance) as minSedentaryActiveDistance,
  MAX(SedentaryActiveDistance) as maxSedentaryActiveDistance,
  AVG(SedentaryActiveDistance) as avgSedentaryActiveDistance,
FROM 
  `capstone-fitness.fitabaseData.dailyActivity`
GROUP BY
  Id
ORDER BY
  Id