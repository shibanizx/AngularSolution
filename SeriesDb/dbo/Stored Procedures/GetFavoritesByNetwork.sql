
CREATE PROCEDURE [dbo].[GetFavoritesByNetwork]  
AS  
BEGIN     
	SELECT p.Name AS ProductionHouse,
		p.ColorCode AS ColorCode,
		COUNT(s.ShowId) AS FavoriteCount
	FROM Show s   
		JOIN ProductionHouse p ON s.ProductionHouseId = p.Id
	WHERE s.Favorite = 1
	GROUP BY p.Name, p.ColorCode
END
