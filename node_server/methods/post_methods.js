const pool = require('../connection');


module.exports.addEvent = async function (reqBody){
    console.log()
    var sqlQuerry =`INSERT INTO Event(eventName,
                                      eventAdress,
                                      eventAdminId,
                                      longitude,
                                      latitude,
                                      eventDateBegining,
                                      eventDateEnding,
                                      isActive,
                                      isFinished)
                    VALUES('${reqBody.eventName}',
                           '${reqBody.eventAdress}',
                            ${reqBody.adminId},
                            ${reqBody.longitude},
                            ${reqBody.latitude},
                            '${reqBody.beginTime}',
                            '${reqBody.endTime}',
                             ${reqBody.isActive},
                             ${reqBody.isFinished})
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
