
CREATE PROCEDURE [dbo].[GetNetworkBasedShowData]  
AS  
BEGIN   
	SELECT s.ShowId AS ShowId,
		p.Id AS ProductionHouseId,  
		p.Name AS ProductionHouse,  
		p.ColorCode AS ProductionHouseColorCode,
		s.Genre
	FROM Show s   
	  JOIN ProductionHouse p ON s.ProductionHouseId = p.Id
END

