const express = require('express');
const path = require('path');
const { flowersData, bouquetsData } = require('./data.js');

const app = express();
const port = process.env.PORT || 3000;

app.use(express.static('public'));

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

app.get('/flowers', (req, res) => {
    res.json(flowersData);
});

app.get('/bouquets', (req, res) => {
    res.json(bouquetsData);
});

app.listen(port, () => {
    console.log(`Сервер запущен на порту ${port}`);
});