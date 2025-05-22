const express = require('express');
const { Pool } = require('pg');
const path = require('path'); // Добавь эту строку

const app = express();
const port = 3000;

// Настройки подключения к базе данных
const pool = new Pool({
    connectionString: process.env.DATABASE_URL || 'postgresql://postgres.inqxwptbhulianfgvpmo:dulatormanov2OO4@aws-0-eu-north-1.pooler.supabase.com:6543/postgres'
});

app.use(express.static('public'));

// Обработчик для корневого пути ('/')
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

// Маршрут для получения данных о цветах
app.get('/flowers', async (req, res) => {
    try {
        const client = await pool.connect();
        const result = await client.query('SELECT id, name, color, price, image_url FROM flowers');
        const flowers = result.rows;
        client.release();
        res.json(flowers);
    } catch (err) {
        console.error(err);
        res.status(500).json({ error: 'Ошибка при получении данных о цветах' });
    }
});

// Маршрут для получения данных о букетах
app.get('/bouquets', async (req, res) => {
    try {
        const client = await pool.connect();
        const result = await client.query('SELECT id, name, description, image_url, price FROM bouquets');
        const bouquets = result.rows;
        client.release();
        res.json(bouquets);
    } catch (err) {
        console.error(err);
        res.status(500).json({ error: 'Ошибка при получении данных о букетах' });
    }
});

app.listen(process.env.PORT || 3000, () => {
    console.log(`Server running on port ${process.env.PORT || 3000}`);
  });