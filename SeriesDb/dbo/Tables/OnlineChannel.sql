CREATE TABLE [dbo].[OnlineChannel] (
    [Id]   UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [Name] NVARCHAR (500)   NOT NULL,
    CONSTRAINT [PK_OnlineChannel] PRIMARY KEY CLUSTERED ([Id] ASC)
);

