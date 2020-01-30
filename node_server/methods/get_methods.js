const pool = require('../connection');

module.exports.readEvents = async function (){
    try{
        const results = await pool.query('SELECT * FROM EVENT');
        return results.rows;
    }
    catch(e){
        return [];
    }
}

