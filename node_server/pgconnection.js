const { Pool } = require('pg');
const pool = new Pool({
    host: '127.0.0.1',
    port: 5432,
    database: 'BlimpDB',
    user: 'postgres', //artyom
    password: 'les_capitan99'
});

module.exports = pool;

