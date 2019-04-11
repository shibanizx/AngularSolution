CREATE TABLE [dbo].[WatchStatus] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [Status]    NVARCHAR (500) NOT NULL,
    [ColorCode] NVARCHAR (8)   NULL,
    CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED ([Id] ASC)
);

