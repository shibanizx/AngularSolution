CREATE TABLE [dbo].[Show](
	[ShowId] [uniqueidentifier] NOT NULL,
	[ShowName] [nvarchar](max) NOT NULL,
	[ProductionHouseId] [uniqueidentifier] NULL,
	[StatusId] [int] NOT NULL,
	[OnlineChannelId] [uniqueidentifier] NULL,
	[LanguageId] [uniqueidentifier] NULL,
	[Ended] [bit] NOT NULL,
	[NumberOfSeasons] [int] NULL,
	[Genre] [nvarchar](50) NULL,
	[TotalEpisodes] [int] NULL,
	[Remarks] [nvarchar](700) NULL,
	[EpisodeLength] [int] NULL,
	[AddedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[Rating] [int] NOT NULL,
	[Favorite] [bit] NOT NULL,
 CONSTRAINT [PK_Show] PRIMARY KEY CLUSTERED 
(
	[ShowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


GO
ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_Show_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[WatchStatus] ([Id])
GO

ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_Show_Ratings] FOREIGN KEY([Rating])
REFERENCES [dbo].[Ratings] ([Id])
GO

ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [FK_Show_Status]
GO
ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_Show_ProductionHouse] FOREIGN KEY([ProductionHouseId])
REFERENCES [dbo].[ProductionHouse] ([Id])
GO

ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [FK_Show_ProductionHouse]
GO
ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_Show_OnlineChannel] FOREIGN KEY([OnlineChannelId])
REFERENCES [dbo].[OnlineChannel] ([Id])
GO

ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [FK_Show_OnlineChannel]
GO
ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_Show_Language] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[AudioLanguage] ([Id])
GO

ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [FK_Show_Language]
GO
ALTER TABLE [dbo].[Show] ADD  DEFAULT (newid()) FOR [ShowId]
GO
ALTER TABLE [dbo].[Show] ADD  DEFAULT ((0)) FOR [Ended]
GO
ALTER TABLE [dbo].[Show] ADD  DEFAULT ((0)) FOR [Favorite]