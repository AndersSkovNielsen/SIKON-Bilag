CREATE TABLE [dbo].[Room] (
    [RoomId]   INT            IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (MAX) NOT NULL,
    [Capacity] INT            NOT NULL,
    CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED ([RoomId] ASC)
);

