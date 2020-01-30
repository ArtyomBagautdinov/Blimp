const pool = require('../connection');

module.exports.deleteEvent = async function(body){
    var sqlQuerry = `DELETE FROM Event WHERE eventId = ${body.eventId}`;
    console.log(sqlQuerry);
    try {
        await pool.query(sqlQuerry);
        return true
    }
    catch(e){
        console.log("Не вышло удалить");
        return false;
    }
}