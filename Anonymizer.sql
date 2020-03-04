
	-- ANONYMIZE EMPLOYEE RECORDS

	DECLARE @cons NVARCHAR(100) SET @cons = 'bcdfghjklmnpqrstvwxyz'
	DECLARE @vow NVARCHAR(100) SET @vow = 'aeiouäöüaeiouaeiou'
	DECLARE @cons1 NVARCHAR(100) SET @cons1 = 'bcdfghjklmnpqrstvw'
	DECLARE @vow1 NVARCHAR(100) SET @vow1 = 'aeiou'

	UPDATE	dbo.PersonTable
	SET		LastName = ' Zy' 
				+ substring(@cons, (ABS(CHECKSUM(NewId())) % len(@cons))+1, 1)
				+ substring(@vow, (ABS(CHECKSUM(NewId())) % len(@vow))+1, 1)
				+ substring(@cons, (ABS(CHECKSUM(NewId())) % len(@cons))+1, 1)
				+ substring(@cons, (ABS(CHECKSUM(NewId())) % len(@cons))+1, 1)
				+ substring(@vow, (ABS(CHECKSUM(NewId())) % len(@vow))+1, 1)
				+ substring(@cons, (ABS(CHECKSUM(NewId())) % len(@cons))+1, 1),
			FirstName = 'Zy'
				+ substring(@cons1, (ABS(CHECKSUM(NewId())) % len(@cons1))+1, 1)
				+ substring(@vow1, (ABS(CHECKSUM(NewId())) % len(@vow1))+1, 1)
				+ substring(@cons1, (ABS(CHECKSUM(NewId())) % len(@cons1))+1, 1),
	WHERE   [AnonymizeCondition] = 1
