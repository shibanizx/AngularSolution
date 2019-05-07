
CREATE PROCEDURE [dbo].[GetStatusCount]  
AS  
BEGIN  
   
 SELECT w.Status AS WatchStatus,
	COUNT(s.ShowId) AS ShowCount,
	w.ColorCode AS ColorCode
	FROM WatchStatus w 
		JOIN Show s ON s.StatusId = w.Id
	WHERE Status<>'To Watch'
	GROUP BY w.Status, w.ColorCode
	ORDER BY Status
END

