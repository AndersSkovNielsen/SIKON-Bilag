CREATE TABLE [dbo].[User] (
    [UserId]        INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]     NVARCHAR (MAX) NOT NULL,
    [LastName]      NVARCHAR (MAX) NOT NULL,
    [Email]         NVARCHAR (MAX) NOT NULL,
    [Address]       NVARCHAR (MAX) NULL,
    [Telephone]     NVARCHAR (MAX) NULL,
    [Zipcode]       NVARCHAR (MAX) NULL,
    [AddAutismInfo] BIT            NOT NULL,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([UserId] ASC)
);

