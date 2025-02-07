const helmet = require('helmet');
const express = require('express');
const pug = require('pug');

const app = express();
app.use(helmet());
app.set('view engine', 'pug');
app.set('views', './views');

app.get('/', (req, res) => {
    res.render('<h1>this is the index</h1>');
    });

app.listen(3000, () => {
    console.log('Server is running on http://localhost:3000');
    });
