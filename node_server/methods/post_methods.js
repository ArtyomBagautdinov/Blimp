const pool = require('../connection');


module.exports.addEvent = async function (reqBody){
    var sqlQuerry =`INSERT INTO Event(eventTitle,
                                      eventDescription,
                                      eventOpenPrivacy,
                                      eventCityId,
                                      eventAdress,
                                      eventPlaceName,
                                      eventMaxParticipants,
                                      eventBegin,
                                      eventEnd,
                                      isActive,
                                      isFinished,
                                      eventAvatar,
                                      eventLongitude,
                                      eventLatitude )
                    VALUES('${reqBody.eventTitle}',
                           '${reqBody.eventDescription}',
                            ${reqBody.eventOpenPrivacy},
                            ${reqBody.eventCityId},
                           '${reqBody.eventAdress}',
                           '${reqBody.eventPlaceName}',
                            ${reqBody.eventMaxParticipants},
                           '${reqBody.eventBegin}',
                           '${reqBody.eventEnd}',
                            ${reqBody.isActive},
                            ${reqBody.isFinished},
                           '${reqBody.eventAvatar}',
                           '${reqBody.eventLongitude}',
                           '${reqBody.eventLatitude}');
                    `
    console.log(sqlQuerry);
    try {
        await pool.query(sqlQuerry);
        return true
    }
    catch(e){
        return false;
    }
}


module.exports.addBlimper = async function (reqBody){
    console.log(reqBody);
    var sqlQuerry = 
    `INSERT INTO 
     Blimper(blimperUserName,
             blimperEmail,
             blimperPassword,
             blimperFirstName,
             blimperLastName,
             blimperAboutMe,
             blimperBirthday,
             blimperAvatar,
             blimperRegistrationDate)
             VALUES('${reqBody.blimperUserName}',
                    '${reqBody.blimperEmail}',
                    '${reqBody.blimperPassword}',
                    '${reqBody.blimperFirstName}',
                    '${reqBody.blimperLastName}',
                    '${reqBody.blimperAboutMe}',
                    '${reqBody.blimperBirthday}',
                    '${reqBody.blimperAvatar}',
                    '${reqBody.blimperRegistrationDate}');
        `
        console.log(sqlQuerry);
        try {
            await pool.query(sqlQuerry);
            return true
        }
        catch(e){
            return false;
        }
}

module.exports.addHobby = async function (reqBody){
    console.log(reqBody);
    var sqlQuerry = 
    `INSERT INTO Hobby(hobbyName) VALUES('${reqBody.hobbyName}');`
        console.log(sqlQuerry);
        try {
            await pool.query(sqlQuerry);
            return true
        }
        catch(e){
            return false;
        }
}


module.exports.addBlimperHobbyLink = async function(reqBody){
    console.log(reqBody);
    var sqlQuerry = 
    `INSERT INTO BlimperHobby(hobbyId,blimperId) VALUES(${reqBody.hobbyId},${reqBody.blimperId});`
        console.log(sqlQuerry);
        try {
            await pool.query(sqlQuerry);
            return true
        }
        catch(e){
            return false;
        }
}


