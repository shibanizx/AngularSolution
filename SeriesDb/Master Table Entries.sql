INSERT [dbo].[AudioLanguage] ([Id], [Language]) VALUES (N'bb89f317-d6f0-4207-b434-24f37cdc6d38', N'English')
GO
INSERT [dbo].[AudioLanguage] ([Id], [Language]) VALUES (N'e98ad40d-e49d-468a-8c89-2802a0e5e204', N'Korean')
GO
INSERT [dbo].[AudioLanguage] ([Id], [Language]) VALUES (N'84ebc93e-645f-4375-abc1-2c3afc53ff58', N'Japanese')
GO
INSERT [dbo].[AudioLanguage] ([Id], [Language]) VALUES (N'a7ae6946-a8d6-4e88-8531-4d9e0386d8d6', N'German')
GO
INSERT [dbo].[AudioLanguage] ([Id], [Language]) VALUES (N'f9c95be6-9028-40b5-bab4-95b8398be8c9', N'Hindi')
GO
INSERT [dbo].[AudioLanguage] ([Id], [Language]) VALUES (N'8b0e4399-94e9-42ba-92ef-9a73bc49a0d6', N'Spanish')
GO
INSERT [dbo].[AudioLanguage] ([Id], [Language]) VALUES (N'b842ca46-bc57-4681-8373-da9f2881ffe9', N'Turkish')
GO
SET IDENTITY_INSERT [dbo].[Genre] ON 

GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (1, N'Animation')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (2, N'Drama')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (3, N'Action')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (4, N'Adventure')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (5, N'Courtroom Drama')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (6, N'Detective Fiction')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (7, N'Docudrama')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (8, N'Fantasy')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (9, N'Historical Period Drama')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (10, N'Horror')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (11, N'Legal Drama')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (12, N'Medical Drama')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (13, N'Police Procedural')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (14, N'Political Drama')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (15, N'Science Fiction')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (16, N'Teen Drama')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (17, N'Thriller')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (18, N'Dramedy')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (19, N'Satire')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (20, N'Romance')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (21, N'Sit-Com')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (22, N'Stand-up Comedy')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (23, N'Talk Show')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (24, N'Anthology')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (25, N'Children')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (26, N'Miniseries')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (27, N'Serial')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (28, N'Crime Thriller')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (29, N'Mystery')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (30, N'Neo-noir')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (31, N'Cyberpunk')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (32, N'Superhero')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (33, N'Musical')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (34, N'Comedy')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (35, N'Animated Series')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (36, N'Mockumentary')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (37, N'Soap Opera')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (38, N'True Crime')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (39, N'Dark Comedy')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (40, N'Supernatural')
GO
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (41, N'Family Drama')
GO
SET IDENTITY_INSERT [dbo].[Genre] OFF
GO
INSERT [dbo].[OnlineChannel] ([Id], [Name]) VALUES (N'2ffdc4d5-01d6-43e4-98df-0c2922620e6c', N'HBO')
GO
INSERT [dbo].[OnlineChannel] ([Id], [Name]) VALUES (N'cf3e2499-3998-4dac-8904-4e4cef3bc4c1', N'Hotstar')
GO
INSERT [dbo].[OnlineChannel] ([Id], [Name]) VALUES (N'4d47310a-0a05-4aab-a45b-aaa951ad33f0', N'Youtube')
GO
INSERT [dbo].[OnlineChannel] ([Id], [Name]) VALUES (N'94c89696-ce6d-43f4-9dde-b57fa45b597c', N'Hulu')
GO
INSERT [dbo].[OnlineChannel] ([Id], [Name]) VALUES (N'52c1b02f-a8a2-45df-b4ef-c764473fceb2', N'Netflix')
GO
INSERT [dbo].[OnlineChannel] ([Id], [Name]) VALUES (N'a27b7db2-fb00-42b7-a2c8-e3ba7aed3a10', N'None')
GO
INSERT [dbo].[OnlineChannel] ([Id], [Name]) VALUES (N'd026be34-d6da-4a22-a94e-ee2fc0c0a104', N'Amazon Prime Video')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'6f43232c-a328-4cc5-8404-02e6868b7568', N'Vimeo', N'#1A69CD')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'6b0f93b4-9c26-43e6-8606-16f55d3b390a', N'AMC', N'#FB0102')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'fec216fa-80c4-4ea1-b707-1eb8539d5205', N'Discovery Channel', N'#1BAED9')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'5634a3ee-0b67-4eef-846f-1ee444668635', N'MBC', N'#464646')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'6993ba88-3d6b-4c0b-980f-247c210b3369', N'E!', N'#EB2D2F')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'fe9387b7-2f07-4260-8341-2816dbd57a05', N'NBC', N'#8111F1')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'b9e7d2bc-f716-4990-8c07-3b47dfc1b2bb', N'Starz', N'#F29B21')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'886bcb99-dfc5-4fe9-b841-3e427f9ec82e', N'Drama Fever', N'#FD3B5D')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'898d846c-623b-4764-98ad-3f8ddc2920a3', N'Sky Arts', N'#843A3D')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'e868ccd2-cfac-4818-a15b-4845d019d883', N'Channel 4', N'#192D48')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'c2a7a58a-e522-4cdf-beb4-4bae9d7f2776', N'CW', N'#00A936')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'7b9b2ab1-464b-4dd2-b701-5f538694507a', N'CBS', N'#DD8D4B')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'33d33cb8-0f51-4e30-9af2-659702b546ac', N'AXN', N'#ED1B2D')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'43ef2ea6-ee1f-4b29-bed5-665c6c8940ca', N'SBS', N'#3D75FF')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'a5d01bf9-6dfe-4f1a-9342-69d1de89acb2', N'BBC One', N'#000000')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'13738a9e-337d-4734-971c-6a8ace8b9d35', N'TVN', N'#BC0D14')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'8c21bc51-393b-44fd-98f0-7621940b3d13', N'Syndicated', N'#A492CE')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'00e0de9b-eb7f-4cef-85c4-76c6578829e9', N'Netflix', N'#E20912')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'f8276a27-76fe-4097-9fd8-8b7f2460826c', N'FX', N'#F7921C')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'ac34dfd3-950d-4b9a-8611-8f30eb2fcd53', N'TV Tokyo', N'#303670')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'a40b2933-f5b1-4464-90c6-9d127772c7df', N'Fuji TV', N'#EB2D2F')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'7d381744-9834-4337-92a3-9ece6586e339', N'KBS', N'#2449A4')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'312e06ae-a09e-4429-8667-a2a133566628', N'Cartoon Network', N'#C9BF4E')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'e36292f8-742b-4503-b482-a4193360c145', N'Fox', N'#000000')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'59406211-418f-4cbe-bcc3-abfddeda0902', N'HBO', N'#0179C5')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'a0e53dce-13cd-43aa-9dd3-b0782673e251', N'Showtime', N'#E20912')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'ffd9d95e-7228-4e69-8bdd-b14c92c092a0', N'YouTube', N'#E20912')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'439fa17e-2c36-4ee2-839f-b1b657b5652e', N'Sky1', N'#2F71C6')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'7e90eb51-c40d-4e05-85c5-b60b3c1ba544', N'ABC', N'#FFD700')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'b3bea6c5-46c8-4ae0-bf78-b649ca3fd948', N'MTV', N'#F21296')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'db1b2909-2b45-4be0-9fdd-b86221cd4023', N'NTV', N'#000000')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'e853f5de-9db1-42fc-957c-bb9630dc24bb', N'USA Network', N'#D91E25')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'4a239a02-45ca-42c5-a255-c27de22eb338', N'TNT', N'#607022')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'61378810-71c5-4907-b72c-c42233349d05', N'SVT1', N'#5220C9')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'bffba240-ac7d-47e3-847b-c6cf27ada44e', N'Freeform', N'#00AB8E')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'6bd6bcff-3452-435a-bac2-c84a45b33cad', N'Amazon', N'#00A8E1')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'e7b6a90c-839d-4b88-b892-daa159f67208', N'History', N'#D37B22')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'595c06d6-9171-4f1e-b468-ddae84f67d49', N'Hallmark Channel', N'#5A2F9A')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'2bba0029-7663-42cb-bf41-e2ee1b3a8495', N'ITV', N'#193284')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'10293999-b734-4cf6-b4ec-e44d81599215', N'JNN', N'#009944')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'98a2c754-3718-47cf-bcf4-ecbca16caaa8', N'Hulu', N'#1CE783')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'87a476b4-16d6-4268-862e-ef5244d3881c', N'Dice Media', N'#FF6589')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'8c15691c-54db-4ab7-88ac-f2554ee91d77', N'Disney Channel', N'#1A69CD')
GO
INSERT [dbo].[ProductionHouse] ([Id], [Name], [ColorCode]) VALUES (N'5c2b22a9-2403-4e30-97fb-fa223e97d479', N'Show TV', N'#8111F1')
GO
SET IDENTITY_INSERT [dbo].[WatchStatus] ON 

GO
INSERT [dbo].[WatchStatus] ([Id], [Status], [ColorCode]) VALUES (1, N'On Going', N'#4FD800')
GO
INSERT [dbo].[WatchStatus] ([Id], [Status], [ColorCode]) VALUES (2, N'Up-To-Date', N'#00B6FF')
GO
INSERT [dbo].[WatchStatus] ([Id], [Status], [ColorCode]) VALUES (3, N'Completed', N'#D80000')
GO
INSERT [dbo].[WatchStatus] ([Id], [Status], [ColorCode]) VALUES (4, N'To Watch', N'#ADAF00')
GO
SET IDENTITY_INSERT [dbo].[WatchStatus] OFF
GO
