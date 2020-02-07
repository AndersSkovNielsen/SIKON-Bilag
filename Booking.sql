CREATE TABLE [dbo].[Booking] (
    [BookingId] INT IDENTITY (1, 1) NOT NULL,
    [UserId]    INT NOT NULL,
    [LectureId] INT NOT NULL,
    [WaitList]  INT DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED ([BookingId] ASC),
    CONSTRAINT [FK_Booking_Lecture_LectureId] FOREIGN KEY ([LectureId]) REFERENCES [dbo].[Lecture] ([LectureId]) ON DELETE CASCADE,
    CONSTRAINT [FK_Booking_User_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([UserId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Booking_LectureId]
    ON [dbo].[Booking]([LectureId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Booking_UserId]
    ON [dbo].[Booking]([UserId] ASC);

