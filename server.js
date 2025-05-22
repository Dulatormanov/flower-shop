const express = require('express');
const path = require('path');
const { flowersData, bouquetsData } = require('./data.js');

const app = express();
const port = process.env.PORT || 3000;

// Add debug logging for all requests
app.use((req, res, next) => {
  console.log(`${req.method} request to ${req.path}`);
  next();
});

app.use(express.static('public'));

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

app.get('/flowers', (req, res) => {
    console.log('Flowers endpoint called');
    res.json(flowersData);
});

app.get('/bouquets', (req, res) => {
    console.log('Bouquets endpoint called');
    res.json(bouquetsData);
});

// Add catalog route
app.get('/catalog.html', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'catalog.html'));
});

// Catch-all route for any unmatched routes
app.use((req, res) => {
    console.log(`404 on ${req.path}`);
    res.status(404).sendFile(path.join(__dirname, 'public', 'index.html'));
});

app.listen(port, () => {
    console.log(`Сервер запущен на порту ${port}`);
});