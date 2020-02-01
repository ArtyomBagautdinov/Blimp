CREATE TABLE Blimper(
	blimperId SERIAL PRIMARY KEY,
	blimperUserName VARCHAR(40),
	blimperEmail VARCHAR(50),
	blimperPassword VARCHAR(50),
	blimperFirstName VARCHAR(50),
	blimperLastName VARCHAR(50),
	blimperAboutMe text,
	blimperRate real,
	blimperBirthday date,
	blimperAvatar VARCHAR(100) DEFAULT 'https://sun9-71.userapi.com/c855416/v855416895/da7bc/aB245eOrBdk.jpg' NOT NULL,
	blimperRegistrationDate timestamp
);

ALTER TABLE Blimper
ADD CONSTRAINT blimperRate CHECK(blimperRate>0 and blimperRate<=10.0);

ALTER TABLE Blimper
ALTER COLUMN blimperRate SET DEFAULT 10.0;










