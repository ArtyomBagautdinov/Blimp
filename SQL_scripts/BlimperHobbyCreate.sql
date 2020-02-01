CREATE TABLE BlimperHobby(
	tableLinkId SERIAL PRIMARY KEY,
	hobbyId INTEGER REFERENCES Hobby (hobbyId) NOT NULL,
	blimperId INTEGER REFERENCES Blimper (blimperId) NOT NULL
);