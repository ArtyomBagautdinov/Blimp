CREATE TABLE EventHobby(
	tableLinkId SERIAL PRIMARY KEY,
	hobbyId INTEGER REFERENCES Hobby (hobbyId) NOT NULL,
	eventId INTEGER REFERENCES Event (eventId) NOT NULL
);