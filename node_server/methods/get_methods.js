const pool = require('../connection');

module.exports.readEvents = async function (){
    try{
        const results = await pool.query('SELECT * FROM Event');
        return results.rows;
    }
    catch(e){
        return [];
    }
}

module.exports.readBlimpers = async function (){
    try{
        const results = await pool.query('SELECT * FROM Blimper');
        return results.rows;
    }
    catch(e){
        return [];
    }
}

module.exports.readHobbies = async function (){
    try{
        const results = await pool.query('SELECT * FROM Hobby');
        return results.rows;
    }
    catch(e){
        return [];
    }
}

module.exports.readBlimperHobbies = async function (blimperId){
    var sqlQuerry = `SELECT hobbyName FROM Hobby
                     JOIN BlimperHobby ON BlimperHobby.hobbyId = Hobby.hobbyId
                     JOIN Blimper ON Blimper.blimperId = BlimperHobby.blimperId
                     WHERE Blimper.blimperId = ${blimperId};
                    `
    try{
        const results = await pool.query(sqlQuerry);
        return results.rows;
    }
    catch(e){
        return [];
    }
}

module.exports.readEventHobbies = async function (eventId){
    var sqlQuerry = `SELECT hobbyName FROM Hobby
                     JOIN EventHobby ON EventHobby.hobbyId = Hobby.hobbyId
                     JOIN Event ON Event.eventId = EventHobbyHobby.eventId
                     WHERE Event.eventId = ${eventId};
                    `
    try{
        const results = await pool.query(sqlQuerry);
        return results.rows;
    }
    catch(e){
        return [];
    }
}



