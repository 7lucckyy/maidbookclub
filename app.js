require('dotenv').config();
const express = require('express')
const app = express();
const mysql = require('mysql')
const bodyParser = require('body-parser');
const exhpbs = require('express-handlebars');
const Connection = require('mysql/lib/Connection');

const DB_PASS = '';

const routes = require('./server/routes/users');
const { route } = require('express/lib/router');
const router = require('./server/routes/users');

const port = process.env.port || 3000

app.use(bodyParser.urlencoded({ extended: true }))

app.use(bodyParser.json())
app.engine('hbs', exhpbs.engine(({ extname: ".hbs" })))
app.set('view engine', 'hbs')
app.use(express.static('./public'))

app.use('/', router)

const pool = mysql.createPool(
    {
        database: 'ums',
        password: '',
        user: 'root',
        host: 'localhost'
    }
)

pool.getConnection((err, connection) => {
    if (err)
        throw err
    console.log(`connected as ${connection.threadId}`);
})


app.listen(port, () => console.log(`listening on ${port}...`))