CREATE TABLE [item] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [title] nvarchar(255),
  [creation_date] datetime,
  [url] nvarchar(255),
  [description] nvarchar(255)
)
GO

CREATE TABLE [category] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [category_name] nvarchar(255)
)
GO

CREATE TABLE [item_category] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [id_item] int,
  [id_category] int
)
GO

ALTER TABLE [item_category] ADD FOREIGN KEY ([id_category]) REFERENCES [category] ([id])
GO

ALTER TABLE [item_category] ADD FOREIGN KEY ([id_item]) REFERENCES [item] ([id])
GO
