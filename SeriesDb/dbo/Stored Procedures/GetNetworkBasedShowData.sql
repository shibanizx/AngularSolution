
CREATE PROCEDURE [dbo].[GetNetworkBasedShowData]  
AS  
BEGIN   
	SELECT s.ShowId AS ShowId,
		s.ShowName AS ShowName,
		p.Id AS ProductionHouseId,  
		p.Name AS ProductionHouse,  
		p.ColorCode AS ProductionHouseColorCode,
		s.Genre,
		s.TotalEpisodes
	FROM ProductionHouse p 
		JOIN Show s ON s.ProductionHouseId = p.Id
END

