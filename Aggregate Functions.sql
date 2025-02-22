CREATE TABLE fake_apps (
    id INTEGER PRIMARY KEY,
    name TEXT,
    category TEXT,
    downloads INTEGER,
    price REAL
);

INSERT INTO fake_apps (id, name, category, downloads, price) VALUES
(1, 'Appify', 'Productivity', 15000, 0.0),
(2, 'Techtastic', 'Education', 8000, 1.99),
(3, 'Healthify', 'Health & Fitness', 12000, 14.99),
(4, 'GameOn', 'Games', 25000, 0.0),
(5, 'Foodie', 'Food & Drink', 18000, 0.99),
(6, 'BookWorm', 'Books', 9000, 2.99),
(7, 'Sportify', 'Sports', 22000, 3.99),
(8, 'MediCare', 'Medical', 17000, 14.99),
(9, 'TravelMate', 'Travel', 14000, 0.99),
(10, 'FinTrack', 'Finance', 13000, 1.99),
(11, 'Weatherly', 'Weather', 11000, 0.0),
(12, 'PhotoPro', 'Photo & Video', 16000, 0.99),
(13, 'Socialize', 'Social Networking', 19000, 3.99),
(14, 'Newsify', 'News', 7000, 0.99),
(15, 'MusicBox', 'Music', 10000, 0.0),
(16, 'ShopEasy', 'Shopping', 20000, 0.99),
(17, 'FitTrack', 'Health & Fitness', 21000, 1.99),
(18, 'EduMate', 'Education', 8500, 0.0),
(19, 'BizTool', 'Business', 23000, 2.99),
(20, 'EntertainMe', 'Entertainment', 24000, 0.99);

SELECT * FROM fake_apps;

SELECT COUNT(*) 
FROM fake_apps;

SELECT COUNT(*) 
FROM fake_apps
WHERE price = 0;

SELECT SUM(downloads)
FROM fake_apps;

SELECT MIN(downloads)
FROM fake_apps;

SELECT AVG(price)
FROM fake_apps;

SELECT ROUND(AVG(price), 2)
FROM fake_apps;

SELECT price, COUNT(*) 
FROM fake_apps
GROUP BY price;

SELECT price, COUNT(*) 
FROM fake_apps
WHERE downloads > 20000
GROUP BY price;

SELECT category, SUM(downloads)
FROM fake_apps
GROUP BY category;



