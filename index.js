const express = require('express')
const app = express()


app.get('/' , (req , res) =>{
    res.send('Hello World!')
})

app.listen(2525 , ()=>console.log('Example app listening on port 2525!') )