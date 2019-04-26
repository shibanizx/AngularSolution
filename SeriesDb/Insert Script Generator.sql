
SELECT 'IF NOT EXISTS(SELECT [Id] FROM [dbo].[ProductionHouse] WHERE [Name]=''' + Name + ''')' + CHAR(10) + 'BEGIN' + CHAR(10) + 'INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES(N''' + LOWER(CONVERT(NVARCHAR(38), Id)) + ''', N''' + Name + ''', N''' + ColorCode + ''')' + CHAR(10) + 'END' + CHAR(10) + 'GO' FROM ProductionHouse 

SELECT 'IF NOT EXISTS(SELECT [Id] FROM [dbo].[OnlineChannel] WHERE [Name]=''' + Name + ''')' + CHAR(10) + 'BEGIN' + CHAR(10) + 'INSERT [dbo].[OnlineChannel] ([Id], [Name]) VALUES(N''' + LOWER(CONVERT(NVARCHAR(38), Id)) + ''', N''' + Name + ''')' + CHAR(10) + 'END' + CHAR(10) + 'GO' FROM OnlineChannel 

SELECT 'IF NOT EXISTS(SELECT [Id] FROM [dbo].[Ratings] WHERE [Value]=''' + Value + ''')' + CHAR(10) + 'BEGIN' + CHAR(10) + 'INSERT [dbo].[Ratings] ([Id], [Value], [ColorCode]) VALUES(' + LOWER(CONVERT(NVARCHAR(38), Id)) + ', N''' + Value + ''', N''' + ColorCode + ''')' + CHAR(10) + 'END' + CHAR(10) + 'GO' FROM Ratings 

SELECT 'IF NOT EXISTS(SELECT [Id] FROM [dbo].[WatchStatus] WHERE [Status]=''' + Status + ''')' + CHAR(10) + 'BEGIN' + CHAR(10) + 'INSERT [dbo].[WatchStatus] ([Id], [Status], [ColorCode]) VALUES(' + LOWER(CONVERT(NVARCHAR(38), Id)) + ', N''' + Status + ''', N''' + ColorCode + ''')' + CHAR(10) + 'END' + CHAR(10) + 'GO' FROM WatchStatus

SELECT 'IF NOT EXISTS(SELECT [Id] FROM [dbo].[AudioLanguage] WHERE [Language]=''' + Language + ''')' + CHAR(10) + 'BEGIN' + CHAR(10) + 'INSERT [dbo].[AudioLanguage] ([Id], [Language]) VALUES(N''' + LOWER(CONVERT(NVARCHAR(38), Id)) + ''', N''' + Language + ''')' + CHAR(10) + 'END' + CHAR(10) + 'GO' FROM AudioLanguage

 SELECT 'IF NOT EXISTS(SELECT [Id] FROM [dbo].[Genre] WHERE [Name]=''' + Name + ''')' + CHAR(10) + 'BEGIN' + CHAR(10) + 'INSERT [dbo].[Genre] ([Id], [Name]) VALUES(' + LOWER(CONVERT(NVARCHAR(38), Id)) + ', N''' + Name + ''')' + CHAR(10) + 'END' + CHAR(10) + 'GO' FROM Genre
