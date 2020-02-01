CREATE TABLE Event(
	eventId SERIAL PRIMARY KEY,
	eventTitle VARCHAR(20) NOT NULL,
	eventDescription text NULL,
	eventOpenPrivacy bool NOT NULL,
	eventCityId INTEGER REFERENCES City (cityId) NOT NULL,
	eventAdress VARCHAR(60) NOT NULL,
	eventPlaceName VARCHAR(30) NULL,
	eventMaxParticipants INTEGER DEFAULT 10000 CHECK(eventMaxParticipants >0 AND eventMaxParticipants < 10001) NOT NULL,
	eventBegin timestamp NOT NULL,
	eventEnd timestamp NOT NULL,
	isActive bool NOT NULL,
	isFinished bool NOT NULL,
	eventAvatar VARCHAR(100) DEFAULT 'https://sun9-71.userapi.com/c855416/v855416895/da7bc/aB245eOrBdk.jpg' NOT NULL,
	eventLongitude VARCHAR(12) NOT NULL,
	eventLatitude VARCHAR(12) NOT NULL
);




