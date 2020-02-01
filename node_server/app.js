const express = require('express');
const app = express();
const bodyParser = require('body-parser')
const postMethod = require('./methods/post_methods')
const getMethod = require('./methods/get_methods')
const deleteMethod = require('./methods/delete_methods')

//////////////////////////

app.use(bodyParser.json())

///////////////////////////////////

app.get('/', (req,res)=>{
    res.setHeader("content-type", "application/json")
    res.send('Hellow World!');
});

app.get('/events', async (req, res)=> {
    const rows = await getMethod.readEvents();
    res.setHeader("content-type", "application/json")
    res.send(JSON.stringify(rows));
  });

  app.get('/blimpers', async (req, res)=> {
    const rows = await getMethod.readBlimpers();
    res.setHeader("content-type", "application/json")
    res.send(JSON.stringify(rows));
  });

  app.get('/hobbies', async (req, res)=> {
    const rows = await getMethod.readHobbies();
    res.setHeader("content-type", "application/json")
    res.send(JSON.stringify(rows));
  });

  app.get(`/blimperHobbies&blimperId=:id`, async (req, res)=> {
    const rows = await getMethod.readBlimperHobbies(req.params.id);
    res.setHeader("content-type", "application/json")
    res.send(JSON.stringify(rows));
  });

  app.get(`/eventHobbies&eventId=:id`, async (req, res)=> {
    const rows = await getMethod.readEventHobbies(req.params.id);
    res.setHeader("content-type", "application/json")
    res.send(JSON.stringify(rows));
  });
//////////////////////////////

app.post("/events", async (req, res) => {
    let result = {}
    try{
        //console.log(req.body);
        await postMethod.addEvent(req.body);
        result.success= true;
    }
    catch(e){
        result.success=false;
    }
    finally{
        res.setHeader("content-type", "application/json")
        res.send(JSON.stringify(result))
    }
   
});

app.post("/blimpers", async (req, res) => {
    let result = {}
    try{
        await postMethod.addBlimper(req.body);
        result.success= true;
    }
    catch(e){
        result.success=false;
    }
    finally{
        res.setHeader("content-type", "application/json")
        res.send(JSON.stringify(result))
    }
   
});

app.post("/hobbies", async (req, res) => {
    let result = {}
    try{
        await postMethod.addHobby(req.body);
        result.success= true;
    }
    catch(e){
        result.success=false;
    }
    finally{
        res.setHeader("content-type", "application/json")
        res.send(JSON.stringify(result))
    }
   
});

app.post("/blimperHobbyLink", async (req, res) => {
    let result = {}
    try{
        await postMethod.addBlimperHobbyLink(req.body);
        result.success= true;
    }
    catch(e){
        result.success=false;
    }
    finally{
        res.setHeader("content-type", "application/json")
        res.send(JSON.stringify(result))
    }
   
});


///////////////////////////////////////////////

app.delete("/event", async (req,res)=>{
    let result = {}
    try{
        await deleteMethod.deleteEvent(req.body);
        result.success= true;
    }
    catch(e){
        result.success=false;
    }
    finally{
        res.setHeader("content-type", "application/json")
        res.send(JSON.stringify(result))
    }
});
///////////////////////////////////////////
app.listen(3000, ()=>{
    console.log('Example app listening on port 3000!');
});

/////////////////////////////////////////

