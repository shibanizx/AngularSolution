CREATE PROCEDURE [dbo].[GetAllShows]  
AS  
BEGIN  
   
 SELECT s.ShowId AS ShowId,  
  s.ShowName AS ShowName,  
  p.Id AS ProductionHouseId,  
  p.Name AS ProductionHouse,  
  p.ColorCode AS ProductionHouseColorCode,  
  c.Id AS OnlineChannelId,  
  c.Name AS OnlineChannel,  
  w.Id AS WatchStatusId,  
  w.Status AS WatchStatus,  
  w.ColorCode AS WatchStatusColorCode,  
  l.Id AS LanguageId,  
  l.Language AS Language, 
  r.Id AS RatingId,
  r.Value AS RatingText, 
  s.AddedOn,  
  s.Ended,  
  s.EpisodeLength,  
  s.Favorite,  
  s.Genre,  
  s.ModifiedOn,  
  s.NumberOfSeasons,  
  s.Rating,  
  s.Remarks,  
  s.TotalEpisodes  
  FROM Show s   
  JOIN ProductionHouse p ON s.ProductionHouseId = p.Id  
  JOIN OnlineChannel c ON s.OnlineChannelId = c.Id  
  JOIN WatchStatus w ON s.StatusId = w.Id  
  JOIN AudioLanguage l ON s.LanguageId = l.Id
  JOIN Ratings r ON s.Rating = r.Id
END
