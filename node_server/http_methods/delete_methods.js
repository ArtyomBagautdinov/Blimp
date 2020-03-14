const pool = require('../pgconnection');

module.exports.deleteEvent = async function (body) {
    var sqlQuerry = `DELETE FROM Event WHERE eventId = ${body.eventId}`;
    console.log(sqlQuerry);
    try {
        await pool.query(sqlQuerry);
        return true
    }
    catch (e) {
        console.log("Не вышло удалить");
        return false;
    }
}

module.exports.deleteEvent = async function (body) {
    var sqlQuerry = `DELETE FROM Blimper WHERE blimperId = ${body.blimperId}`;
    console.log(sqlQuerry);
    try {
        await pool.query(sqlQuerry);
        return true
    }
    catch (e) {
        console.log("Не вышло удалить");
        return false;
    }
}

