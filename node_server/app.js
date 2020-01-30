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

//////////////////////////////

app.post("/event", async (req, res) => {
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
   
})

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
app.listen(4000, ()=>{
    console.log('Example app listening on port 4000!');
});

/////////////////////////////////////////

