CREATE TABLE [dbo].[ProductionHouse] (
    [Id]        UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [Name]      NVARCHAR (500)   NOT NULL,
    [ColorCode] NVARCHAR (8)     NULL,
    CONSTRAINT [PK_ProductionHouse] PRIMARY KEY CLUSTERED ([Id] ASC)
);

