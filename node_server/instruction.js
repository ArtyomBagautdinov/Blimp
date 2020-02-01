module.exports.instruction = 
`****************************************************************
Доступные GET запросы:\n
/events - получить список всех событий \n
/events/id - получить событие с конкретным id \n
/blimpers - получить список всех пользователей \n
/blimpers/id - получить пользователя с конкретным id \n 
/hobbies получить список всевозможных увлечений в базе данных \n
/blimperHobbies&blimperId=:id - получить список увлечений пользователя с конкретным id \n
/eventHobbies&eventId=:id получить список тем которым посвящено событие с конкретным id \n
*********************************************************************************************
Доступные POST запросы: \n
---------------------------------------------------
/addEvent - добавить событие  \n 
Пример тела запроса : 
{
      "eventTitle": "Консервативная анимэ вечеринка",
      "eventDescription":"Сходка любителей анимэ",
      "eventOpenPrivacy": true,
      "eventCityId": 1,
      "eventAdress": "ул. Пролетарская, 98, Калининград, Калининградская обл., 236029",
      "eventPlaceName": "Огонёк",
      "eventMaxParticipants": 20,
      "eventBegin": "2020-04-28 18:00:00",
      "eventEnd": "2020-04-28 20:00:00",
      "isActive": false,
      "isFinished": false,
      "eventAvatar": "https://sun9-59.userapi.com/c841223/v841223573/324ec/rRjzSf5EGxA.jpg",
      "eventLongitude": "54.7209343",
      "eventLatitude": "20.5060752"
}
---------------------------------------- \n
/addBlimper - добавить пользователя
Пример тела запроса:
{
      "blimperUserName":"AwesomeNickname",
      "blimperEmail":"leninol@gmail.com",
      "blimperPassword":"10203",
      "blimperFirstName":"Henesi",
      "blimperLastname":"Jackson",
      "blimperAboutme":"Human, student, operator",
      "blimperBirthday":"2000-02-20",
      "blimperAvatar":"https://sun9-44.userapi.com/c846524/v846524313/167845/UqKSUGWIE5Q.jpg",
      "blimperRegistrationDate":"2020-03-01"
  
} \n
------------------------------------------------
/addHobbie - добавить хобби в базу данных
{
    "hobbieName" : "Игра на гитаре"
}
-----------------------------------------------------\n 
`