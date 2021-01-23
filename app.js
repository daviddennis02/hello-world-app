//Require module
const express = require('express');

// Express Initialize
const app = express();
const port = 8000;


// create API
app.get('/hello_world', (req,res)=>{
res.status(200).send('Hello World');
})


app.listen(port, (e) => {
    if (e) {
        throw new Error('Internal Server Error')
    }
console.log(`App is running on http://localhost:${port}`);
})

