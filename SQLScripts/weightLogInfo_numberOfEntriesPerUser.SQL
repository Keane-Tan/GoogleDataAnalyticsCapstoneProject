SELECT  
  Id,
  COUNT(Date) as numberOfEntries
FROM 
  `capstone-fitness.fitabaseData.weightLogInfo`
GROUP BY
  Id

/*
Among the 8 participants who actually record their weights, 6 of them do not even record their weights for more than 5 days for the duration of the data collection period.
*/