const express = require('express');
const app = express();
const bodyParser = require('body-parser')
const mysql = require("mysql")
/////////////////////////////////////////////////////
app.use(function(req, res, next){
	global.connection = mysql.createConnection({
		host     : 'localhost',
		user     : 'root',
		password : 'Les_capitan99'
    }); 
	connection.connect();
	next();
});

app.use(bodyParser.json())

app.use('/help', express.static('public'));

///////////////////////GET//////////////////////////////

app.get('/', (req, res) => {
    res.setHeader("content-type", "application/json");
    res.send("Перейдите в localhost:3000/help для прочтения руководства");

});

app.get('/events', async (req, res) => {
    connection.query('SELECT * FROM BlimpDB.Event;', function(err, rows) {
        if (err) throw err;
        res.setHeader("content-type", "application/json")
        res.send(JSON.stringify({"data":rows}));
        
    });
});

/*
app.get('/events', async (req, res) => {
    const rows = await getMethod.readEvents();
    const tmpString = JSON.stringify(rows);

    res.setHeader("content-type", "application/json")
    res.send(`{ "data": [ ` + JSON.stringify(rows).substring(1,tmpString.length-1)+ `] }`);
});


app.get('/events/:id', async (req, res) => {
    const rows = await getMethod.readEvent(req.params.id);
    const tmpString = JSON.stringify(rows);
    res.setHeader("content-type", "application/json")
    res.send(`{ "data": [ ` + JSON.stringify(rows).substring(1,tmpString.length-1)+ `] }`);
});

app.get('/blimpers', async (req, res) => {
    const rows = await getMethod.readBlimpers();
    const tmpString = JSON.stringify(rows);
    res.setHeader("content-type", "application/json")
    res.send(`{ "data": [ ` + JSON.stringify(rows).substring(1,tmpString.length-1)+ `] }`);
});

app.get('/blimpers/:id', async (req, res) => {
    const rows = await getMethod.readBlimper(req.params.id);
    const tmpString = JSON.stringify(rows);
    res.setHeader("content-type", "application/json")
    res.send(`{ "data": [ ` + JSON.stringify(rows).substring(1,tmpString.length-1)+ `] }`);
});

app.get('/hobbies', async (req, res) => {
    const rows = await getMethod.readHobbies();
    const tmpString = JSON.stringify(rows);
    res.setHeader("content-type", "application/json")
    res.send(`{ "data": [ ` + JSON.stringify(rows).substring(1,tmpString.length-1)+ `] }`);
});

app.get(`/blimperHobbies&blimperId=:id`, async (req, res) => {
    const rows = await getMethod.readBlimperHobbies(req.params.id);
    const tmpString = JSON.stringify(rows);
    res.setHeader("content-type", "application/json")
    res.send(`{ "data": [ ` + JSON.stringify(rows).substring(1,tmpString.length-1)+ `] }`);
});

app.get(`/eventHobbies&eventId=:id`, async (req, res) => {
    const rows = await getMethod.readEventHobbies(req.params.id);
    const tmpString = JSON.stringify(rows);
    res.setHeader("content-type", "application/json")
    res.send(`{ "data": [ ` + JSON.stringify(rows).substring(1,tmpString.length-1)+ `] }`);
});
*/
//////////////////////////POST////////////////////////////
/*

app.post("/addEvent", async (req, res) => {
    let result = {}
    try {
        await postMethod.addEvent(req.body);
        result.success = true;
    }
    catch (e) {
        result.success = false;
    }
    finally {
        res.setHeader("content-type", "application/json")
        res.send(JSON.stringify(result))
    }

});

app.post("/addBlimper", async (req, res) => {
    let result = {}
    try {
        await postMethod.addBlimper(req.body);
        result.success = true;
    }
    catch (e) {
        result.success = false;
    }
    finally {
        res.setHeader("content-type", "application/json")
        res.send(JSON.stringify(result))
    }

});

app.post("/addHobbie", async (req, res) => {
    let result = {}
    try {
        await postMethod.addHobby(req.body);
        result.success = true;
    }
    catch (e) {
        result.success = false;
    }
    finally {
        res.setHeader("content-type", "application/json")
        res.send(JSON.stringify(result))
    }

});

app.post("/blimperHobbyLink", async (req, res) => {
    let result = {}
    try {
        await postMethod.addBlimperHobbyLink(req.body);
        result.success = true;
    }
    catch (e) {
        result.success = false;
    }
    finally {
        res.setHeader("content-type", "application/json")
        res.send(JSON.stringify(result))
    }

});

app.post("/eventHobbyLink", async (req, res) => {
    let result = {}
    try {
        await postMethod.addEventHobbyLink(req.body);
        result.success = true;
    }
    catch (e) {
        result.success = false;
    }
    finally {
        res.setHeader("content-type", "application/json")
        res.send(JSON.stringify(result))
    }

});

///////////////////////////DELETE//////////////////////////////

app.delete("/deleteEvent", async (req, res) => {
    let result = {}
    try {
        await deleteMethod.deleteEvent(req.body);
        result.success = true;
    }
    catch (e) {
        result.success = false;
    }
    finally {
        res.setHeader("content-type", "application/json")
        res.send(JSON.stringify(result))
    }
});

app.delete("/deleteBlimper", async (req, res) => {
    let result = {}
    try {
        await deleteMethod.deleteEvent(req.body);
        result.success = true;
    }
    catch (e) {
        result.success = false;
    }
    finally {
        res.setHeader("content-type", "application/json")
        res.send(JSON.stringify(result))
    }
});

///////////////////////////////////////////
*/
app.listen(3000, () => {
    console.log('Example app listening on port 3000!');
});

/////////////////////////////////////////

