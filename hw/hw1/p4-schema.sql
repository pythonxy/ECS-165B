	CREATE TABLE Parent (
			NameA varchar(40) not null,
			NameB varchar(40) not null
		);
	
	CREATE VIEW Ancestor AS (
		WITH RECURSIVE Ancestor AS (
			( SELECT NameA, NameB
			  FROM Parent )
			UNION
			( SELECT P.NameA, A.NameB
			  FROM Parent P, Ancestor A
			  WHERE P.NameB = A.NameA ))
		SELECT *
		FROM Ancestor
	);
