CREATE TABLE EventParticipant(
	tableLinkId SERIAL PRIMARY KEY,
	blimperId INTEGER REFERENCES Blimper (blimperId) NOT NULL,
	eventId INTEGER REFERENCES Event (eventId) NOT NULL
);