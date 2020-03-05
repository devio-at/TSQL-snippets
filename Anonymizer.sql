
	-- ANONYMIZE EMPLOYEE RECORDS

	DECLARE @cons NVARCHAR(100) SET @cons = 'bcdfghjklmnpqrstvwxyz'
	DECLARE @vow NVARCHAR(100) SET @vow = 'aeiouäöüaeiouaeiou'
	DECLARE @cons1 NVARCHAR(100) SET @cons1 = 'bcdfghjklmnpqrstvw'
	DECLARE @vow1 NVARCHAR(100) SET @vow1 = 'aeiou'

	UPDATE	dbo.PersonTable
	SET		LastName = ' Zy' 
				+ SUBSTRING(@cons, (ABS(CHECKSUM(NewId())) % LEN(@cons))+1, 1)
				+ SUBSTRING(@vow, (ABS(CHECKSUM(NewId())) % LEN(@vow))+1, 1)
				+ SUBSTRING(@cons, (ABS(CHECKSUM(NewId())) % LEN(@cons))+1, 1)
				+ SUBSTRING(@cons, (ABS(CHECKSUM(NewId())) % LEN(@cons))+1, 1)
				+ SUBSTRING(@vow, (ABS(CHECKSUM(NewId())) % LEN(@vow))+1, 1)
				+ SUBSTRING(@cons, (ABS(CHECKSUM(NewId())) % LEN(@cons))+1, 1),
			FirstName = 'Zy'
				+ SUBSTRING(@cons1, (ABS(CHECKSUM(NewId())) % LEN(@cons1))+1, 1)
				+ SUBSTRING(@vow1, (ABS(CHECKSUM(NewId())) % LEN(@vow1))+1, 1)
				+ SUBSTRING(@cons1, (ABS(CHECKSUM(NewId())) % LEN(@cons1))+1, 1),
	WHERE   [AnonymizeCondition] = 1
