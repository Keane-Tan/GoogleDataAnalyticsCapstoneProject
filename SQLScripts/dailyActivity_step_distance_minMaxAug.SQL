SELECT  
  Id,
  COUNT(ActivityDate) as numberOfDays,
  MIN(TotalSteps) as minTotalSteps,
  MAX(TotalSteps) as maxTotalSteps,
  AVG(TotalSteps) as avgTotalSteps,
  MIN(TotalDistance) as minTotalDistance,
  MAX(TotalDistance) as maxTotalDistance,
  AVG(TotalDistance) as avgTotalDistance,
FROM 
  `capstone-fitness.fitabaseData.dailyActivity`
GROUP BY
  Id
ORDER BY
  Id

/*
It is hard to believe that 15 of the participants have 0 minimum steps. It seems impossible to go about one's day without taking a single step. 
*/