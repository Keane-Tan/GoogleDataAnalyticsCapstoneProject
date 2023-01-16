SELECT
  Id,
  COUNT(activityDate) as numberOfDays,
  MIN(numberOfHours) as minNumberOfHours,
  ROUND(AVG(numberOfHours),1) as avgNumberOfHours
FROM
  (SELECT  
    Id,
    DATE(ActivityHour) as activityDate,
    COUNT(Time(ActivityHour)) as numberOfHours,
  FROM 
    `capstone-fitness.fitabaseData.hourlyCalories`
  GROUP BY
    Id, activityDate
  ORDER BY
    Id)
GROUP BY
  Id

/*
Participants have no problem recording the hourly calories information, and almost all 33 participants did it for more than 25 days straight. 
*/