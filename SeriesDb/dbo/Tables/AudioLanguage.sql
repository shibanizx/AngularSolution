CREATE TABLE [dbo].[AudioLanguage] (
    [Id]       UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [Language] NVARCHAR (500)   NOT NULL,
    CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED ([Id] ASC)
);

