SELECT  
  Id,
  COUNT(ActivityDate) as numberOfDays,
FROM 
  `capstone-fitness.fitabaseData.dailyActivity`
WHERE 
  TotalSteps = 0
GROUP BY
  Id
ORDER BY
  Id

/*
It is hard to believe that 15 of the participants have 0 minimum steps. It seems impossible to go about one's day without taking a single step. This must be a mistake on the device.
*/