CREATE TABLE `BlimpDB`.`Event` (
  `eventId` bigint AUTO_INCREMENT,
  `eventTitle` varchar(200) NOT NULL,
  `eventDesctiption` text,
  `eventIsOpen` boolean DEFAULT TRUE,
  `eventCityId` integer NOT NULL,
  `eventAdress` varchar(400) NOT NULL,
  `eventPlaceName` varchar(100) NOT NULL,
  `eventAvatar` varchar(400) NOT NULL,
  `eventMaxParticipants` integer,
  `eventBegin` timestamp NOT NULL,
  `eventEnd` timestamp NOT NULL,
  `isActive` boolean NOT NULL,
  `isFinished` boolean NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  PRIMARY KEY (eventId)
);

ALTER TABLE `BlimpDB`.`Event`
ADD FOREIGN KEY (eventCityId) REFERENCES `BlimpDB`.`City`(cityId); 


CREATE TABLE `BlimpDB`.`City` (
  `cityId` int AUTO_INCREMENT,
  `cityName` varchar(200) NOT NULL,
  `countryId` int NOT NULL,
  PRIMARY KEY (cityId)
);

ALTER TABLE `BlimpDB`.`City`
ADD FOREIGN KEY (countryId) REFERENCES `BlimpDB`.`Country`(countryId); 

CREATE TABLE `BlimpDB`.`Country` (
  `countryId` int AUTO_INCREMENT,
  `countryName` varchar(200) NOT NULL,
  PRIMARY KEY (countryId)
);

CREATE TABLE `BlimpDB`.`City` (
  `cityId` int AUTO_INCREMENT,
  `cityName` varchar(200) NOT NULL,
  `countryId` int NOT NULL,
  PRIMARY KEY (cityId)
);

INSERT INTO  `BlimpDB`.`City`(cityName,countryId)
VALUES ('Saint-Petersburg',
		 1);

CREATE TABLE `BlimpDB`.`EventHobby` (
  `eventId` int,
  `hobbyId` int
);

ALTER TABLE `BlimpDB`.`EventHobby`
ADD FOREIGN KEY (eventId) REFERENCES `BlimpDB`.`Event`(eventId),
ADD FOREIGN KEY (hobbyId) REFERENCES `BlimpDB`.`Hobby`(hobbyId); 

ALTER TABLE `BlimpDB`.`EventHobby`
ADD `eventId` bigint;

INSERT INTO  `BlimpDB`.`Country`(countryName)
VALUES ('Russia');


INSERT INTO `BlimpDB`.`Event` (eventTitle, 
							   eventDesctiption,
                               eventIsOpen,
                               eventCityId,
                               eventAdress,
                               eventPlaceName,
                               eventAvatar,
                               eventMaxParticipants,
                               eventBegin,
                               eventEnd,
                               isActive,
                               isFinished,
                               longitude,
                               latitude)
VALUES (
		'ДФМ', 
		'Главное событие года на физмате', 
		TRUE,
        1,
        'ул. Александра Невского, 14, Калининград, Калининградская обл., 236041',
        'БФУ им. И.Канта - главный корпус',
        'https://sun9-7.userapi.com/c855128/v855128327/1d669a/oYJlTI5lqfw.jpg',
		10000,
        '2020-04-25 9:00:00',
        '2020-04-26 19:00:00',
        FALSE,
        FALSE,
        54.7242934,
        20.5274806
		);
        
