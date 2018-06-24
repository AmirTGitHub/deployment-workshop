const express = require('express')
const app = express()


app.get('/' , (req , res) =>{
    res.send('Hello World from amir macbook')
})

app.get('/:name' , (req , res) =>{
    var name = req.params.name
    res.send(`Hello World from ${name}  macbook`)
})
app.listen(2525 , ()=>console.log('Example app listening on port 2525!') )