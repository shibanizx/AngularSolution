CREATE TABLE [dbo].[Show] (
    [ShowId]            UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [ShowName]          NVARCHAR (MAX)   NOT NULL,
    [ProductionHouseId] UNIQUEIDENTIFIER NULL,
    [StatusId]          INT              NOT NULL,
    [OnlineChannelId]   UNIQUEIDENTIFIER NULL,
    [LanguageId]        UNIQUEIDENTIFIER NULL,
    [Ended]             BIT              DEFAULT ((0)) NOT NULL,
    [NumberOfSeasons]   INT              NULL,
    [Genre]             NVARCHAR (50)    NULL,
    [TotalEpisodes]     INT              NULL,
    [Remarks]           NVARCHAR (700)   NULL,
    [EpisodeLength]     INT              NULL,
    [AddedOn]           DATETIME         NOT NULL,
    [ModifiedOn]        DATETIME         NULL,
    [Rating]            INT              NULL,
    [Favorite]          BIT              DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Show] PRIMARY KEY CLUSTERED ([ShowId] ASC),
    CONSTRAINT [FK_Show_Language] FOREIGN KEY ([LanguageId]) REFERENCES [dbo].[AudioLanguage] ([Id]),
    CONSTRAINT [FK_Show_OnlineChannel] FOREIGN KEY ([OnlineChannelId]) REFERENCES [dbo].[OnlineChannel] ([Id]),
    CONSTRAINT [FK_Show_ProductionHouse] FOREIGN KEY ([ProductionHouseId]) REFERENCES [dbo].[ProductionHouse] ([Id]),
    CONSTRAINT [FK_Show_Status] FOREIGN KEY ([StatusId]) REFERENCES [dbo].[WatchStatus] ([Id])
);

