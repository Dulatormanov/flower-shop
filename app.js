const express = require('express');
const { Pool } = require('pg');
const path = require('path'); // Подключаем модуль path

const app = express();
const port = 3000;

// Замените на свои параметры подключения к базе данных
const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'flower_shop1',
    password: 'madina07',
    port: 5432,
});

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views')); // Явно указываем путь к views

app.use(express.static(path.join(__dirname, 'public'))); // Передаем 'public'

app.get('/', async (req, res) => {
    try {
        const client = await pool.connect();
        const result = await client.query('SELECT * FROM products');
        const products = result.rows;
        client.release();

        res.render('index', { products: products });
    } catch (err) {
        console.error('Ошибка при запросе к базе данных:', err);
        res.status(500).send('Ошибка сервера: ' + err.message); // Добавлено сообщение об ошибке
    }
});

app.listen(port, () => {
    console.log(`Сервер запущен на порту ${port}`);});