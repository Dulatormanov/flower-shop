CREATE TABLE flowers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    color VARCHAR(50),
    price INTEGER NOT NULL,
    image_url VARCHAR(255)
);

 DELETE FROM flowers;
INSERT INTO flowers (name, color, price, image_url) VALUES
('Роза красная', 'красный', 1300, 'https://images.pexels.com/photos/5713720/pexels-photo-5713720.jpeg?auto=compress&cs=tinysrgb&w=800'),
('Тюльпан желтый', 'желтый', 435, 'https://images.pexels.com/photos/19416495/pexels-photo-19416495.jpeg?auto=compress&cs=tinysrgb&w=800'),
('Лилия', 'розовый', 1150, 'https://images.pexels.com/photos/7663981/pexels-photo-7663981.jpeg?auto=compress&cs=tinysrgb&w=800'),
('Пиона', 'розовый', 5000, 'https://images.pexels.com/photos/32040341/pexels-photo-32040341.jpeg?auto=compress&cs=tinysrgb&w=800'),
('Калла', 'белый', 2500, 'https://images.pexels.com/photos/7662959/pexels-photo-7662959.jpeg?auto=compress&cs=tinysrgb&w=800'),
('Альстромерия', 'желтый', 1150, 'https://images.pexels.com/photos/7214591/pexels-photo-7214591.jpeg?auto=compress&cs=tinysrgb&w=800');
-- Добавь больше цветов

SELECT*FROM flowers;


CREATE TABLE bouquets (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    image_url VARCHAR(255),
    price INTEGER NOT NULL
);


DELETE FROM bouquets;
INSERT INTO bouquets (name, description, image_url, price) VALUES
('Букет "Аромат любви"', 'Красные розы', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.5Hx1iO7LqxCgrZmPtgp_6QHaHa%26pid%3DApi&f=1&ipt=f61676a349b0a72f9b766b5771a4de4ec9167b76a3b24a4e5936a6f7e739aa85&ipo=images', 7500),
('Букет "Весеннее настроение"', 'Тюльпаны разных цветов', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.N_1DvUGSREaawvv3Ba0DvAHaJQ%26cb%3Diwp2%26pid%3DApi&f=1&ipt=fe515a1af5d4a26f9ec7bcdf736511a8f52cf0bb54602c90a7d776884c5741f0&ipo=images', 6000),
('Букет "Нежность"', 'Розовые гвоздики', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.M4aThjVtVzQD3Swd3gG8bQHaHa%26cb%3Diwc2%26pid%3DApi&f=1&ipt=02b9ea01f0974e436bfa5455d4e2235ad02909b7a52f3d09a5b800f7173d0e8a&ipo=images', 8000),
('Тюльпан', 'Фиолетовый','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fflores-shop.com.ua%2Fwp-content%2Fuploads%2F2019%2F01%2Fzimnij-buket-tylpanov.png&f=1&nofb=1&ipt=592251d91ecb5d63707740505a8014b8d2d5ae7109f77ff67c3f59e80182aea7',7200),
('Гипсофила', 'Разноцветный','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fstatic.tildacdn.com%2Ftild3637-6661-4363-b739-353734616533%2F1.jpg&f=1&nofb=1&ipt=c13b13d83d6e1a50ddf840b5a9a60a82feaadcbaba01fd47a4fed39524176e9d',9500),
('Диантус', 'Разноцветный','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.rosesmarket.ru%2Fupload%2Fiblock%2F4e7%2Fx6az8ajixla455ud7wj36jgj96xcpdrj.jpg&f=1&nofb=1&ipt=bbb1531079cd4f262a8039cc2723b3e4fe87345d856b6f9749663562e2e8a1de',12000);


-- Добавь больше букетов

INSERT INTO bouquets (name, description, image_url, price) VALUES
('Весеннее настроение', 'Нежный букет из гиацинтов.', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.q4QMuxzfBeq5Xtvm8Dyf1gHaHa%26cb%3Diwp2%26pid%3DApi&f=1&ipt=03f89b631fea217bb3356a0691e0ec722286d420d4e686a67991e10b269e3a86&ipo=images', 5500),
('Алая страсть', 'Роскошный букет из 25 красных роз.', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.0RcJeGvWJH7m0rVtbhy7PgHaHa%26pid%3DApi&f=1&ipt=2bba05d0b1d51bfa645ac5ba340059b0f43f2798ca3dac8778c988db144ea46a&ipo=images', 12000),
('Белая элегия', 'Изысканный букет из белых лилий.', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.3rqY9E_JmzfgLHAVItOVYAHaJ3%26cb%3Diwc2%26pid%3DApi&f=1&ipt=ba43eca27a8f9190f1e0cdc50add9c0961eca33f9a45782412b31966cd832d9b&ipo=images', 8000),
('Солнечный микс', 'Яркий букет из гербер', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.TmToL1NuNsHpCL3mkss5eAHaHa%26cb%3Diwc2%26pid%3DApi&f=1&ipt=125f7d6f38537f4673410f19e6b1b45dfaa5e2c3c36980f51da557f483d36b25&ipo=images', 6800),
('Осеннее очарование', 'Теплый букет в осенних тонах с подсолнухами', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.tmmrpSBmkFbQ_0gJOh-hKgHaHa%26cb%3Diwc2%26pid%3DApi&f=1&ipt=c701a54a325465eeff13498ffdfdf1ad420fe5015f09cc27b6920de90f216fbe&ipo=images', 7200),
('Романтический вечер', 'Букет из белых хризантем.', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.ug588yOkZJ8337zjxGvO9QHaHa%26cb%3Diwp2%26pid%3DApi&f=1&ipt=37e51a5d7d659fdc8ab68212eb12ac609a1ddf9bbb4880ea98b203a0c6389938&ipo=images', 9500),
('Полевые цветы', 'Простой и милый букет из васильков.', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.qaqJPVdy8g1B5b9TBx1j0QHaHa%26cb%3Diwc2%26pid%3DApi&f=1&ipt=4e8f4f3e4652e5492ec02dda4e57d5e7b006e217853c561e616e164018fb04f4&ipo=images', 8700),
('Корзина с цветами', 'Большая корзина с разнообразными свежими цветами.', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.7A7KT3wS3OTfznS8mBEMngHaGF%26cb%3Diwc2%26pid%3DApi&f=1&ipt=accd22d4aaff5577276633192523fe17d4f730e1497a9cf68bd0d68c44cc50af&ipo=images', 15000),
('Кустовые хриозентема', 'Розовый','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.jojf1Z3QYCAkHbZNs139FAHaHa%26pid%3DApi&f=1&ipt=25ec27014259a9bf1d7c9ba229da97823f3929548f416247cbe593a9b8a55670',12000),
('Ирис', 'Разноцветный','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fklike.net%2Fuploads%2Fposts%2F2019-12%2F1575709035_24.jpg&f=1&nofb=1&ipt=f1bb5123f335f1b302167ae83aebe38fe12f33f30bb0ee3bdd2e8eeaf7912df8',13500),
('Калла', 'Белый','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.LGHtYQTTRPUOKx3MzZVPPwHaHa%26pid%3DApi&f=1&ipt=c5d670f39ce49dba9519268e438997258b21aec1925c45eeb39f22e44909f9b8&ipo=images',14500),
('Пиона', 'Розовый','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.p99ok7X5a8DrhozUUdjOGgAAAA%26cb%3Diwp2%26pid%3DApi&f=1&ipt=ac6fd5155194d4dd383a019ae4a809654f3da25d7a6b6f438dc9815f43e719b5&ipo=images',27000),
('Гортензия', 'Разноцветный','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.HaBzB86jzzpkA1Z5wTSycgAAAA%26pid%3DApi&f=1&ipt=7b2dc904dfca0aee810211befa4fb02d5f7f160039322a9e6bebc0bb5a6160f0&ipo=images',23000);

SELECT*FROM bouquets;


INSERT INTO bouquets (name, description, image_url, price) VALUES
('Гербера розовая', 'Розовый', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.FSoQnFnfvAFU1H8QdkEvFQHaHa%26pid%3DApi&f=1&ipt=afb2d02f49c849fc4889f04bb266108ac701d30ace10d1731839cff5f61c9360&ipo=images',7800),
('Хризантема белая', 'Белый', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.explicit.bing.net%2Fth%3Fid%3DOIP.ngMywKxafUnEX1nTZ--3cQHaHa%26cb%3Diwp2%26pid%3DApi&f=1&ipt=b3fc8237f34464cc129aa14562691ef03338ab1d9205cbab04af1986eaa1769b&ipo=images',8300),
('Роза кустовая', 'Микс','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.LoDdqfaI6Uyq8qLgSoQW4gHaHa%26pid%3DApi&f=1&ipt=065140fd056cf6f0b6ac79b21556219d13773502f1bf10fd08674b51e03bc959&ipo=images', 12000),
('Ирис синий', 'Синий', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.9jPHMjMNV785l0GLJz502wHaHa%26pid%3DApi&f=1&ipt=bfad34fc7fb8a46b416fd251b537ec5bf239f9f3173797de54c3c09f1cea5284&ipo=images', 9500),
('Пиона', 'Розовый','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.7L1epVlvEK8NEnb4W7AyvQHaHa%26cb%3Diwc2%26pid%3DApi&f=1&ipt=d6818d1e2b5a6b83556a5642621e03299613ffe63f678d00b445e60dd7ec9f32&ipo=images', 17500),
('Кустовая роза', 'Розовый','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.G7HjbCGx32Pih8u8sIIRIgHaHO%26cb%3Diwc2%26pid%3DApi&f=1&ipt=e24080339b49b575c0d7e198c62f1e3ff4743e9fe58ad7682d6c5dca1303ac59&ipo=images', 12000),
('Тюльпан', 'Розовый', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.7YU2r3PCXz9whpVMlTGVMwHaJB%26pid%3DApi&f=1&ipt=57dbcb179bc162ff08d9a2926dd512766f9003ebf16d18c893d6994588fcbba2&ipo=images', 11000),
('Лованда', 'Синий', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.XERNapdpLFzA8BwZHjZO7AHaHa%26cb%3Diwp2%26pid%3DApi&f=1&ipt=f330932f7f446e66dddcbd275f640b49f1e6f89b8314fe69ed49da738699f332&ipo=images', 8500),
('Сирень', 'Фиолетовый', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.ZAeRugK-HQxuUq2TPVa1JAHaHa%26pid%3DApi&f=1&ipt=28deca611fc527483d0646c243507c7691fc82fcd7046ac9d489f1e4ae6a3409&ipo=images', 8900),
('Эустома', 'Розовый', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.8XTc4z7WKQqVJmAP_VDO8AHaHa%26cb%3Diwc2%26pid%3DApi&f=1&ipt=58140be7c557b97c3ff1b85432d1cdf0352d6c8194f8b322d32967a8b1961114&ipo=images', 12000),
('Ранункулюс', 'Розовый', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.uQD104iG-R2t972oqK0nOgHaHa%26pid%3DApi&f=1&ipt=5b9ea2b211d5372ac15c38f6d9b4582e66dc2980ff6abfae1eeeec22e59c6752&ipo=images', 14000),
('Калла', 'Белый','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.1JW3EhrorSlVsG-eJtEjyAHaHa%26cb%3Diwp2%26pid%3DApi&f=1&ipt=fce24894e496e5e34b277b410eecede4297dc4e0a2132f4202908fb180feefbc&ipo=images', 16000),
('Анемона', 'Белый', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.fpqeE3uJcqzNLL338wC91gHaHa%26cb%3Diwp2%26pid%3DApi&f=1&ipt=b7b90474f09a44bb6fb5123c3e10ff7d244a369baff5d77d99b72369fc5e22a4&ipo=images', 25000),
('Маттиола', 'Розовый', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.4iJNbP1LppRFLe_DwPBo2wHaHa%26cb%3Diwp2%26pid%3DApi&f=1&ipt=7223ef018c88ad99455af2b64f7f58801eeb4e7afaf5b0c36f59b2ef5107301c&ipo=images', 14500),
('Камалия', 'Розовый','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.dq8dF1bfTW1U25_LGEZHaQHaH8%26cb%3Diwp2%26pid%3DApi&f=1&ipt=2b459837a1f63109eb9e4f0aa6258a1babfc5c52e3ec237c3a337110f63a8e49&ipo=images',12000),
('Беллые розы', 'Белый','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.P7HyP-Wql_KixUAXE2NOwAHaHa%26pid%3DApi&f=1&ipt=2496feb2f69708b343d311acfb515202f81b3a44459d211b59cdbbbad94bae28&ipo=images',12000),
('Хризонтема', 'Розовый','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.s7nk1NN8E02hhZhP7RQGHAHaHa%26pid%3DApi&f=1&ipt=6c25ffeab4957a515e4d2ac4b83c51ecec7f16aaf5c5032ae7a412e68a441534&ipo=images', 8700),
('Ромашка', 'Белый','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fgorod-buketov.ru%2Fwp-content%2Fuploads%2F2017%2F04%2Fimg_2680.jpeg&f=1&nofb=1&ipt=004644bea695ea43bc945d560d227f0f4bdb033fd2bfdaf62782ce9d279b6e37',16000),
('Букет цветов с пионами', 'Розовый','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.dq8dF1bfTW1U25_LGEZHaQHaH8%26cb%3Diwp2%26pid%3DApi&f=1&ipt=2b459837a1f63109eb9e4f0aa6258a1babfc5c52e3ec237c3a337110f63a8e49&ipo=images',12000),
('Анемона', 'Белый','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.fpqeE3uJcqzNLL338wC91gHaHa%26cb%3Diwp2%26pid%3DApi&f=1&ipt=b7b90474f09a44bb6fb5123c3e10ff7d244a369baff5d77d99b72369fc5e22a4&ipo=images',13500);


