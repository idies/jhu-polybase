
if exists (select 1 from information_schema.tables 
where table_schema='mangaauxdb' and table_name='cube_header')
begin drop external table mangaauxdb.[cube_header] end

GO

CREATE EXTERNAL TABLE mangaauxdb.[cube_header] (
   [pk] INTEGER NOT NULL -- integer
,  [header] NVARCHAR(MAX) NULL -- json
,  [cube_pk] INTEGER NULL -- integer
)
with (location='manga.mangaauxdb.[cube_header]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangaauxdb' and table_name='maskbit_labels')
begin drop external table mangaauxdb.[maskbit_labels] end

GO

CREATE EXTERNAL TABLE mangaauxdb.[maskbit_labels] (
   [pk] INTEGER NOT NULL -- integer
,  [maskbit] INTEGER NULL -- integer
,  [labels] NVARCHAR(MAX) NULL -- json
,  [flag] NVARCHAR(MAX) NULL -- text
)
with (location='manga.mangaauxdb.[maskbit_labels]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='test_rssfiber')
begin drop external table mangadatadb.[test_rssfiber] end

GO

CREATE EXTERNAL TABLE mangadatadb.[test_rssfiber] (
   [pk] INTEGER NOT NULL -- integer
,  [flux] NVARCHAR(MAX) NULL -- json
,  [cube_pk] INTEGER NULL -- integer
)
with (location='manga.mangadatadb.[test_rssfiber]',data_source=pg64)

GO

