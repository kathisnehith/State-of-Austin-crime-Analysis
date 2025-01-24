SELECT TOP (1000) *
FROM [crime_data_austin].[dbo].[austin_crime_data]



-- checking the Unique values for Indexing and PK assign

Select Count([Incident Number]) As c_no
From austin_crime_data
Group by [Incident Number]
having Count([Incident Number]) >1;

CREATE UNIQUE INDEX idx_incidentnumber
ON austin_crime_data ([Incident Number]);

-- had to drop index because of Incidentnumber col is dependent of index
Drop Index idx_incidentnumber on austin_crime_data;
ALTER TABLE austin_crime_data
ALTER COLUMN [Incident Number] VARCHAR(50) NOT NULL;

-- Create Primary Key (PK)
ALTER TABLE austin_crime_data
ADD PRIMARY KEY ([Incident Number]);
-- checked with table design for PK assigning



Select count(Distinct [Highest Offense Description]) as Count_offense, count(Distinct [Location Type]) as count_locations
From austin_crime_data;

Select [Clearance Status]
From austin_crime_data;
Having [Clearance Status]  = 9


SELECT 
    [Location Type],
    SUM(CASE WHEN [Location Type] IS NULL THEN 1 ELSE 0 END) AS null_count,
    SUM(CASE WHEN [Location Type] = '' THEN 1 ELSE 0 END) AS empty_count
FROM 
    austin_crime_data;


DECLARE @column_name NVARCHAR(128) = 'Location Type';

DECLARE @sql NVARCHAR(MAX) = '
SELECT 
    ''' + @column_name + ''' AS column_name,
    SUM(CASE WHEN [' + @column_name + '] IS NULL THEN 1 ELSE 0 END) AS null_count,
    SUM(CASE WHEN [' + @column_name + '] = '''' THEN 1 ELSE 0 END) AS empty_count
FROM 
    austin_crime_data';

EXEC sp_executesql @sql;


-- parameter declartion of the column_name to update the Empty cell to NULL 

	DECLARE @column_name NVARCHAR(128) = 'APD Sector';

	--updating the table columns of empty cells to NULL
	DECLARE @update_sql NVARCHAR(MAX) = '
	UPDATE austin_crime_data
	SET [' + @column_name + '] = NULL
	WHERE [' + @column_name + '] = ''''';

	EXEC sp_executesql @update_sql;

	--counting the NULL values of the column
	DECLARE @count_sql NVARCHAR(MAX) = '
	SELECT ''' + @column_name + ''' AS column_name,
		SUM(CASE WHEN [' + @column_name + '] IS NULL THEN 1 ELSE 0 END) AS null_count
	FROM austin_crime_data';

	EXEC sp_executesql @count_sql;

-- checked the Occurred Date Time, Ocuured data, Time , Reported Date, time

SELECT COUNT(*)
FROM austin_crime_data
WHERE [Highest Offense Code] = '' OR [Highest Offense Code] IS NULL;


Select Top 100 *
From austin_crime_data;