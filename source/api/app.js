const express = require('express')
const app = express()
const bodyParser = require('body-parser')


app.set('views', __dirname + "/../views")
app.use('/',express.static(__dirname + '/../public'));
app.use('/',express.static(__dirname + '/node_modules/bootstrap/dist'));
app.use('/',express.static(__dirname + '/node_modules/jquery/dist'));


app.set('view engine', 'ejs')

app.get('/', (req, res) => {
    res.render('login')
})

app.get('/getClasses', (req, res) => {
    res.json({'classes': ['CS 634', 'CS 632', 'CS 782']})
})

app.post('/login', bodyParser.json(), (req, res) => {
    res.json(req.body)
})


app.listen(3000, () => console.log('Example app listening on port 3000!'))