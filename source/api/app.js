const express = require('express')
const app = express()
const bodyParser = require('body-parser')

app.get('/', (req, res) => {
    res.send('Welcome to Student link!')
})

app.get('/getClasses', (req, res) => {
    res.json({'classes': ['CS 634', 'CS 632', 'CS 782']})
})

app.post('/login', bodyParser.json(), (req, res) => {
    res.json(req.body)
})


app.listen(3000, () => console.log('Example app listening on port 3000!'))