USE [ShopixDB]
GO

-- 1. Departments (10)
INSERT INTO [dbo].[Departments] ([DepartmentName]) VALUES 
('Sales'), ('Marketing'), ('Customer Support'), ('Finance'), ('Operations'), 
('Logistics'), ('Electronics Division'), ('Apparel Division'), ('Home Goods Division'), ('IT Support');
GO

-- 2. Categories (40)
INSERT INTO [dbo].[Categories] ([CategoryName]) VALUES 
('Smartphones'), ('Laptops & Computers'), ('Tablets'), ('Monitors'), ('Computer Components'),
('Audio & Headphones'), ('Televisions'), ('Wearable Technology'), ('Cameras & Photography'), ('Video Games & Consoles'),
('Men''s Clothing'), ('Women''s Clothing'), ('Kids & Baby Clothing'), ('Men''s Shoes'), ('Women''s Shoes'),
('Sports & Fitness Clothing'), ('Bags & Backpacks'), ('Watches & Jewelry'), ('Sunglasses & Eyewear'), ('Outerwear & Coats'),
('Home Appliances'), ('Kitchen Electronics'), ('Furniture'), ('Bedding & Bath'), ('Home Decor'),
('Outdoor & Garden'), ('Tools & Home Improvement'), ('Lighting'), ('Fitness Equipment'), ('Camping & Hiking'),
('Books'), ('Toys, Kids & Baby'), ('Health & Personal Care'), ('Beauty & Grooming'), ('Automotive Parts'),
('Car Accessories'), ('Pet Supplies'), ('Office Supplies'), ('Musical Instruments'), ('Groceries & Gourmet Food');
GO

-- 3. Admins (5)
INSERT INTO [dbo].[Admins] ([Username], [Password], [Authority]) VALUES 
('josh_admin', 'Pass1234', 'A'), ('emily_mgr', 'Pass5678', 'B'), 
('david_support', 'Pass9012', 'C'), ('system_root', 'Admin@123', 'A'), 
('tech_lead_sarah', 'Lead!456', 'A');
GO

-- 4. Staffs (15 - Satıcı/Personel sayısını arttırmadık, makul tuttuk)
INSERT INTO [dbo].[Staffs] ([StaffFirstName], [StaffLastName], [StaffImage], [Department_DepartmentID]) VALUES 
('Liam', 'Smith', '/images/staff/dummy.jpg', 1), ('Olivia', 'Johnson', '/images/staff/dummy.jpg', 1),
('Noah', 'Williams', '/images/staff/dummy.jpg', 1), ('Emma', 'Brown', '/images/staff/dummy.jpg', 2),
('Oliver', 'Jones', '/images/staff/dummy.jpg', 2), ('Charlotte', 'Garcia', '/images/staff/dummy.jpg', 3),
('Elijah', 'Miller', '/images/staff/dummy.jpg', 3), ('Amelia', 'Davis', '/images/staff/dummy.jpg', 4),
('James', 'Rodriguez', '/images/staff/dummy.jpg', 5), ('Ava', 'Martinez', '/images/staff/dummy.jpg', 6),
('William', 'Hernandez', '/images/staff/dummy.jpg', 7), ('Sophia', 'Lopez', '/images/staff/dummy.jpg', 8),
('Benjamin', 'Gonzalez', '/images/staff/dummy.jpg', 9), ('Isabella', 'Wilson', '/images/staff/dummy.jpg', 10),
('Lucas', 'Anderson', '/images/staff/dummy.jpg', 1);
GO

-- 5. Products (100 - Markalı ve çok çeşitli)
INSERT INTO [dbo].[Products] ([ProductName], [Brand], [Stock], [BuyingPrice], [SellingPrice], [Status], [ProductImage], [Category_CategoryId]) VALUES 
('Galaxy S24 Ultra', 'Samsung', 150, 900.00, 1299.99, 1, '/images/products/dummy.jpg', 1),
('iPhone 15 Pro', 'Apple', 200, 850.00, 1099.00, 1, '/images/products/dummy.jpg', 1),
('Pixel 8', 'Google', 100, 500.00, 699.00, 1, '/images/products/dummy.jpg', 1),
('Xperia 1 V', 'Sony', 40, 850.00, 1199.99, 1, '/images/products/dummy.jpg', 1),
('MacBook Air M3', 'Apple', 100, 900.00, 1199.00, 1, '/images/products/dummy.jpg', 2),
('ThinkPad X1 Carbon Gen 11', 'Lenovo', 45, 1200.00, 1699.99, 1, '/images/products/dummy.jpg', 2),
('XPS 13 Laptop', 'Dell', 50, 1100.00, 1450.00, 1, '/images/products/dummy.jpg', 2),
('Surface Pro 9', 'Microsoft', 60, 900.00, 1299.99, 1, '/images/products/dummy.jpg', 2),
('iPad Pro 12.9"', 'Apple', 120, 800.00, 1099.00, 1, '/images/products/dummy.jpg', 3),
('Galaxy Tab S9+', 'Samsung', 80, 700.00, 999.00, 1, '/images/products/dummy.jpg', 3),
('Odyssey G9 OLED Monitor', 'Samsung', 30, 1200.00, 1799.00, 1, '/images/products/dummy.jpg', 4),
('UltraSharp 32 4K Monitor', 'Dell', 40, 600.00, 899.00, 1, '/images/products/dummy.jpg', 4),
('GeForce RTX 4090 GPU', 'NVIDIA', 15, 1200.00, 1699.00, 1, '/images/products/dummy.jpg', 5),
('Ryzen 9 7950X CPU', 'AMD', 30, 450.00, 699.00, 1, '/images/products/dummy.jpg', 5),
('QuietComfort Ultra', 'Bose', 200, 250.00, 429.00, 1, '/images/products/dummy.jpg', 6),
('AirPods Max', 'Apple', 120, 350.00, 549.00, 1, '/images/products/dummy.jpg', 6),
('WH-1000XM5 Wireless', 'Sony', 250, 220.00, 398.00, 1, '/images/products/dummy.jpg', 6),
('OLED C3 65" 4K Smart TV', 'LG', 30, 1200.00, 1799.00, 1, '/images/products/dummy.jpg', 7),
('Bravia XR A95L Series TV', 'Sony', 20, 2000.00, 2799.99, 1, '/images/products/dummy.jpg', 7),
('Apple Watch Ultra 2', 'Apple', 100, 600.00, 799.00, 1, '/images/products/dummy.jpg', 8),
('Galaxy Watch 6 Classic', 'Samsung', 150, 250.00, 349.99, 1, '/images/products/dummy.jpg', 8),
('Fenix 7X Sapphire Solar', 'Garmin', 40, 700.00, 999.99, 1, '/images/products/dummy.jpg', 8),
('Alpha a7 IV Mirrorless Camera', 'Sony', 25, 1800.00, 2498.00, 1, '/images/products/dummy.jpg', 9),
('EOS R6 Mark II Mirrorless', 'Canon', 30, 1700.00, 2499.00, 1, '/images/products/dummy.jpg', 9),
('Hero12 Black Action Camera', 'GoPro', 140, 250.00, 399.99, 1, '/images/products/dummy.jpg', 9),
('PlayStation 5 Console', 'Sony', 75, 400.00, 499.99, 1, '/images/products/dummy.jpg', 10),
('Xbox Series X', 'Microsoft', 80, 400.00, 499.99, 1, '/images/products/dummy.jpg', 10),
('Nintendo Switch OLED', 'Nintendo', 120, 250.00, 349.99, 1, '/images/products/dummy.jpg', 10),
('Spider-Man 2 (PS5)', 'Sony', 200, 40.00, 69.99, 1, '/images/products/dummy.jpg', 10),
('501 Original Fit Jeans', 'Levi''s', 300, 30.00, 79.50, 1, '/images/products/dummy.jpg', 11),
('Tech Fleece Joggers', 'Nike', 250, 50.00, 110.00, 1, '/images/products/dummy.jpg', 11),
('Polo Shirt Custom Fit', 'Ralph Lauren', 150, 40.00, 95.00, 1, '/images/products/dummy.jpg', 11),
('Women''s Align Pant II', 'Lululemon', 400, 40.00, 98.00, 1, '/images/products/dummy.jpg', 12),
('Women''s Floral Summer Dress', 'Zara', 300, 20.00, 59.90, 1, '/images/products/dummy.jpg', 12),
('Baby Onesies 5-Pack', 'Carter''s', 200, 10.00, 25.00, 1, '/images/products/dummy.jpg', 13),
('Air Force 1 ''07 Sneakers', 'Nike', 500, 60.00, 115.00, 1, '/images/products/dummy.jpg', 14),
('Classic Leather Sneakers', 'Reebok', 150, 40.00, 85.00, 1, '/images/products/dummy.jpg', 14),
('Moab 3 Hiking Boot', 'Merrell', 150, 60.00, 120.00, 1, '/images/products/dummy.jpg', 14),
('Chuck Taylor All Star', 'Converse', 300, 25.00, 60.00, 1, '/images/products/dummy.jpg', 14),
('Ghost 15 Running Shoes', 'Brooks', 180, 70.00, 140.00, 1, '/images/products/dummy.jpg', 15),
('Ultraboost 1.0 Running Shoes', 'Adidas', 200, 90.00, 190.00, 1, '/images/products/dummy.jpg', 15),
('Classic Clog', 'Crocs', 600, 20.00, 49.99, 1, '/images/products/dummy.jpg', 15),
('Pro Dri-FIT Compression Top', 'Nike', 200, 15.00, 35.00, 1, '/images/products/dummy.jpg', 16),
('Kanken Classic Backpack', 'Fjallraven', 300, 40.00, 89.99, 1, '/images/products/dummy.jpg', 17),
('Borealis Backpack', 'The North Face', 150, 50.00, 99.00, 1, '/images/products/dummy.jpg', 17),
('G-Shock Mudmaster Watch', 'Casio', 90, 150.00, 380.00, 1, '/images/products/dummy.jpg', 18),
('Oyster Perpetual Datejust', 'Rolex', 5, 6000.00, 9500.00, 1, '/images/products/dummy.jpg', 18),
('Classic Wayfarer Sunglasses', 'Ray-Ban', 250, 65.00, 163.00, 1, '/images/products/dummy.jpg', 19),
('Men''s Nano Puff Jacket', 'Patagonia', 150, 120.00, 239.00, 1, '/images/products/dummy.jpg', 20),
('Women''s Nuptse Short Jacket', 'The North Face', 120, 150.00, 280.00, 1, '/images/products/dummy.jpg', 20),
('V15 Detect Absolute Vacuum', 'Dyson', 60, 450.00, 749.99, 1, '/images/products/dummy.jpg', 21),
('Roomba j7+ Robot Vacuum', 'iRobot', 50, 400.00, 599.00, 1, '/images/products/dummy.jpg', 21),
('Artisan 5-Qt Stand Mixer', 'KitchenAid', 90, 250.00, 449.99, 1, '/images/products/dummy.jpg', 22),
('Barista Express Espresso Machine', 'Breville', 40, 500.00, 749.95, 1, '/images/products/dummy.jpg', 22),
('Ninja Air Fryer Max', 'Ninja', 100, 80.00, 159.99, 1, '/images/products/dummy.jpg', 22),
('Markus Office Chair', 'IKEA', 150, 120.00, 289.00, 1, '/images/products/dummy.jpg', 23),
('Kallax Shelf Unit', 'IKEA', 200, 40.00, 89.99, 1, '/images/products/dummy.jpg', 23),
('Zinus 12-Inch Memory Foam Mattress', 'Zinus', 60, 150.00, 399.00, 1, '/images/products/dummy.jpg', 24),
('Egyptian Cotton Towel Set', 'Utopia Towels', 300, 15.00, 39.99, 1, '/images/products/dummy.jpg', 24),
('Aromatherapy Diffuser', 'URPOWER', 200, 10.00, 24.99, 1, '/images/products/dummy.jpg', 25),
('YETI Tundra 45 Cooler', 'YETI', 80, 150.00, 325.00, 1, '/images/products/dummy.jpg', 26),
('Dewalt 20V Max Cordless Drill', 'Dewalt', 100, 80.00, 159.00, 1, '/images/products/dummy.jpg', 27),
('Philips Hue White & Color Ambiance Bulb', 'Philips', 300, 20.00, 49.99, 1, '/images/products/dummy.jpg', 28),
('Bowflex SelectTech 552 Dumbbells', 'Bowflex', 60, 250.00, 429.00, 1, '/images/products/dummy.jpg', 29),
('Peloton Bike+', 'Peloton', 25, 1500.00, 2495.00, 1, '/images/products/dummy.jpg', 29),
('The Reversible Mat 5mm', 'Lululemon', 120, 40.00, 88.00, 1, '/images/products/dummy.jpg', 29),
('Coleman Sundome 4-Person Tent', 'Coleman', 80, 40.00, 89.99, 1, '/images/products/dummy.jpg', 30),
('Hydro Flask Wide Mouth Bottle', 'Hydro Flask', 250, 20.00, 44.95, 1, '/images/products/dummy.jpg', 30),
('Atomic Habits (Hardcover)', 'Avery', 450, 10.00, 27.00, 1, '/images/products/dummy.jpg', 31),
('The Ride of a Lifetime', 'Random House', 200, 12.00, 28.00, 1, '/images/products/dummy.jpg', 31),
('LEGO Millennium Falcon', 'LEGO', 45, 90.00, 169.99, 1, '/images/products/dummy.jpg', 32),
('Hot Wheels 50-Car Pack', 'Mattel', 80, 25.00, 59.99, 1, '/images/products/dummy.jpg', 32),
('Catan Base Game', 'Catan Studio', 180, 25.00, 54.99, 1, '/images/products/dummy.jpg', 32),
('Theragun Pro Massage Gun', 'Therabody', 50, 300.00, 599.00, 1, '/images/products/dummy.jpg', 33),
('Advanced Night Repair Serum', 'Estee Lauder', 120, 60.00, 125.00, 1, '/images/products/dummy.jpg', 34),
('Dyson Airwrap Multi-Styler', 'Dyson', 40, 400.00, 599.99, 1, '/images/products/dummy.jpg', 34),
('ProGlide Men''s Razor', 'Gillette', 600, 5.00, 14.99, 1, '/images/products/dummy.jpg', 34),
('WeatherTech Cargo Liner', 'WeatherTech', 80, 60.00, 129.95, 1, '/images/products/dummy.jpg', 35),
('Mobil 1 Full Synthetic Motor Oil 5W-30', 'Mobil', 300, 15.00, 29.97, 1, '/images/products/dummy.jpg', 35),
('Armor All Car Wash 64oz', 'Armor All', 400, 4.00, 10.99, 1, '/images/products/dummy.jpg', 36),
('Taste of the Wild Dog Food', 'Taste of the Wild', 150, 25.00, 54.99, 1, '/images/products/dummy.jpg', 37),
('Tidy Cats Clumping Litter 35lb', 'Purina', 250, 10.00, 22.49, 1, '/images/products/dummy.jpg', 37),
('Pilot G2 Premium Gel Pens (12-Pack)', 'Pilot', 500, 6.00, 14.88, 1, '/images/products/dummy.jpg', 38),
('Post-it Notes 3x3 14-Pads', '3M', 400, 8.00, 18.30, 1, '/images/products/dummy.jpg', 38),
('American Professional II Stratocaster', 'Fender', 15, 800.00, 1699.99, 1, '/images/products/dummy.jpg', 39),
('Stage3 88-Key Portable Piano', 'Nord', 10, 2000.00, 3599.00, 1, '/images/products/dummy.jpg', 39),
('ATH-M50x Professional Studio Headphones', 'Audio-Technica', 120, 80.00, 169.00, 1, '/images/products/dummy.jpg', 39),
('Pike Place Roast Whole Bean Coffee 16oz', 'Starbucks', 250, 8.00, 14.99, 1, '/images/products/dummy.jpg', 40),
('Nutella Ferrero Hazelnut Spread', 'Ferrero', 300, 4.00, 8.49, 1, '/images/products/dummy.jpg', 40),
('Evian Spring Water 24-Pack', 'Evian', 180, 10.00, 21.49, 1, '/images/products/dummy.jpg', 40),
('Kindle Paperwhite', 'Amazon', 150, 80.00, 139.99, 1, '/images/products/dummy.jpg', 3),
('Kindle Oasis', 'Amazon', 80, 150.00, 249.99, 1, '/images/products/dummy.jpg', 3),
('Raspberry Pi 4 Model B', 'Raspberry Pi Foundation', 200, 35.00, 55.00, 1, '/images/products/dummy.jpg', 5),
('Samsung 990 PRO NVMe SSD 2TB', 'Samsung', 120, 100.00, 189.99, 1, '/images/products/dummy.jpg', 5),
('Corsair Vengeance DDR5 32GB RAM', 'Corsair', 150, 80.00, 140.00, 1, '/images/products/dummy.jpg', 5),
('LG C3 83-inch Class 4K Smart OLED TV', 'LG', 10, 2500.00, 4299.99, 1, '/images/products/dummy.jpg', 7),
('Sony 85-inch Class X90L LED TV', 'Sony', 15, 1800.00, 2999.00, 1, '/images/products/dummy.jpg', 7),
('Bose Smart Soundbar 900', 'Bose', 50, 500.00, 899.00, 1, '/images/products/dummy.jpg', 6),
('Sonos Arc Soundbar', 'Sonos', 60, 450.00, 899.00, 1, '/images/products/dummy.jpg', 6),
('Pro Controller for Switch', 'Nintendo', 100, 40.00, 69.99, 1, '/images/products/dummy.jpg', 10);
GO

-- 6. Accounts (50 Random Müşteriler)
INSERT INTO [dbo].[Accounts] ([AccountFirstName], [AccountLastName], [AccountCity], [AccountEmail]) VALUES 
('Aaron', 'Brooks', 'Austin', 'aaron.brooks@example.com'), ('Samantha', 'Clark', 'Denver', 'sam.clark@example.com'),
('Dylan', 'Wright', 'Seattle', 'dwright@example.com'), ('Chloe', 'Scott', 'Boston', 'chloe.s@example.com'),
('Caleb', 'Rivera', 'Miami', 'caleb.r@example.com'), ('Zoey', 'Long', 'Chicago', 'zoey.long@example.com'),
('Nathan', 'Hill', 'San Diego', 'nathill@example.com'), ('Lily', 'Perez', 'Dallas', 'lily.p@example.com'),
('Christian', 'Ward', 'Houston', 'cward12@example.com'), ('Mila', 'Foster', 'Phoenix', 'mila.foster@example.com'),
('Eli', 'Gonzales', 'San Antonio', 'eligonz@example.com'), ('Aubrey', 'Simmons', 'San Jose', 'asimmons@example.com'),
('Isaac', 'Perry', 'Detroit', 'iperry@example.com'), ('Brooklyn', 'Barnes', 'Jacksonville', 'bbarnes@example.com'),
('Connor', 'Henderson', 'Indianapolis', 'chenderson@example.com'), ('Savannah', 'Coleman', 'San Francisco', 'scoleman@example.com'),
('Julian', 'Patterson', 'Columbus', 'jpatterson@example.com'), ('Bella', 'Jenkins', 'Charlotte', 'bjenkins@example.com'),
('Jeremiah', 'Hughes', 'Fort Worth', 'jhughes@example.com'), ('Leah', 'Washington', 'Memphis', 'lwashington@example.com'),
('Brayden', 'Butler', 'Baltimore', 'bbutler@example.com'), ('Stella', 'Simmons', 'El Paso', 'ssimmons@example.com'),
('Jonathan', 'Foster', 'Milwaukee', 'jfoster@example.com'), ('Paisley', 'Gonzales', 'Boston', 'pgonzales@example.com'),
('Anthony', 'Bryant', 'Seattle', 'abryant@example.com'), ('Audrey', 'Alexander', 'Denver', 'aalexander@example.com'),
('Cameron', 'Russell', 'Washington', 'crussell@example.com'), ('Skylar', 'Griffin', 'Nashville', 'sgriffin@example.com'),
('Evan', 'Diaz', 'Austin', 'ediaz@example.com'), ('Lucy', 'Hayes', 'Dallas', 'lhayes@example.com'),
('Leo', 'Myers', 'Detroit', 'lmyers@example.com'), ('Anna', 'Ford', 'Houston', 'aford@example.com'),
('Ian', 'Hamilton', 'Chicago', 'ihamilton@example.com'), ('Aaliyah', 'Graham', 'Phoenix', 'agraham@example.com'),
('Charles', 'Sullivan', 'San Antonio', 'csullivan@example.com'), ('Allison', 'Wallace', 'San Diego', 'awallace@example.com'),
('Adam', 'Woods', 'San Jose', 'awoods@example.com'), ('Gabriella', 'Cole', 'Jacksonville', 'gcole@example.com'),
('Miles', 'West', 'Indianapolis', 'mwest@example.com'), ('Madelyn', 'Jordan', 'Columbus', 'mjordan@example.com'),
('Nolan', 'Owens', 'Charlotte', 'nowens@example.com'), ('Maya', 'Reynolds', 'Fort Worth', 'mreynolds@example.com'),
('Cole', 'Fisher', 'Memphis', 'cfisher@example.com'), ('Sadie', 'Ellis', 'Baltimore', 'sellis@example.com'),
('Micah', 'Harrison', 'El Paso', 'mharrison@example.com'), ('Ariana', 'Gibson', 'Milwaukee', 'agibson@example.com'),
('Josiah', 'Mcdonald', 'Boston', 'jmcdonald@example.com'), ('Kaylee', 'Cruz', 'Seattle', 'kcruz@example.com'),
('Jason', 'Marshall', 'Denver', 'jmarshall@example.com'), ('Ruby', 'Ortiz', 'Washington', 'rortiz@example.com');
GO

-- 7. Expenses (20 Random Expenses)
INSERT INTO [dbo].[Expenses] ([Description], [Date], [Amount]) VALUES 
('Headquarters Rent - Aug', '2023-08-01', 3500.00), ('Utility Bill - Aug', '2023-08-05', 410.50),
('Business Internet - Aug', '2023-08-05', 150.00), ('Software Subscriptions (AWS/Azure) - Aug', '2023-08-10', 1200.00),
('Payroll Processing Fee - Aug', '2023-08-15', 75.00), ('Team Building Event', '2023-08-20', 850.00),
('HQ Cleaning Services - Aug', '2023-08-28', 300.00), ('Security Services - Aug', '2023-08-30', 400.00),
('Headquarters Rent - Sep', '2023-09-01', 3500.00), ('Utility Bill - Sep', '2023-09-05', 390.25),
('Business Internet - Sep', '2023-09-05', 150.00), ('Software Subscriptions (AWS/Azure) - Sep', '2023-09-10', 1250.00),
('Advertising Campaign - Meta Ads', '2023-09-12', 2500.00), ('Employee Travel Expenses', '2023-09-18', 650.00),
('Office Stationery & Supplies', '2023-09-22', 210.00), ('Warehouse Maintenance', '2023-09-25', 800.00),
('HQ Cleaning Services - Sep', '2023-09-28', 300.00), ('Security Services - Sep', '2023-09-30', 400.00),
('Monthly Legal Review Consultation', '2023-10-15', 1100.00), ('Data Center Colocation', '2023-10-20', 750.00);
GO

-- 8. Invoices (20 Random Invoices)
INSERT INTO [dbo].[Invoices] ([SerialNumber], [SequenceNumber], [Date], [Time], [TaxOffice], [DeliveredBy], [ReceivedBy]) VALUES 
('A', '10001', '2023-10-01', '2023-10-01 09:15:00', 'Austin Tax Office', 'Liam Smith', 'Aaron Brooks'),
('A', '10002', '2023-10-03', '2023-10-03 11:30:00', 'Seattle Tax Dept', 'Olivia Johnson', 'Dylan Wright'),
('B', '20001', '2023-10-08', '2023-10-08 10:00:00', 'Chicago Revenue', 'Emma Brown', 'Zoey Long'),
('B', '20002', '2023-10-10', '2023-10-10 13:20:00', 'Houston Tax Branch', 'Oliver Jones', 'Christian Ward'),
('C', '30001', '2023-10-12', '2023-10-12 16:10:00', 'Phoenix Dept', 'Charlotte Garcia', 'Mila Foster'),
('C', '30002', '2023-10-14', '2023-10-14 09:40:00', 'San Antonio Tax', 'Elijah Miller', 'Eli Gonzales'),
('D', '40001', '2023-10-15', '2023-10-15 11:55:00', 'Detroit Central', 'Amelia Davis', 'Isaac Perry'),
('D', '40002', '2023-10-17', '2023-10-17 14:05:00', 'Columbus Tax Center', 'James Rodriguez', 'Julian Patterson'),
('E', '50001', '2023-10-19', '2023-10-19 10:25:00', 'Memphis Finance', 'Ava Martinez', 'Leah Washington'),
('E', '50002', '2023-10-21', '2023-10-21 15:30:00', 'Denver Records', 'William Hernandez', 'Audrey Alexander'),
('F', '60001', '2023-10-23', '2023-10-23 09:50:00', 'Boston Tax Dept', 'Sophia Lopez', 'Josiah Mcdonald'),
('F', '60002', '2023-10-25', '2023-10-25 12:15:00', 'Dallas Core Tax', 'Benjamin Gonzalez', 'Chase Freeman'),
('G', '70001', '2023-10-27', '2023-10-27 16:40:00', 'San Diego Office', 'Isabella Wilson', 'Gavin Hunter'),
('G', '70002', '2023-10-29', '2023-10-29 11:10:00', 'San Jose Admin', 'Lucas Anderson', 'Adam Woods'),
('H', '80001', '2023-11-01', '2023-11-01 09:30:00', 'Nashville Central', 'Mia Thomas', 'Skylar Griffin'),
('H', '80002', '2023-11-03', '2023-11-03 13:45:00', 'Charlotte Office', 'Henry Taylor', 'Nolan Owens'),
('I', '90001', '2023-11-05', '2023-11-05 15:20:00', 'Jacksonville Tax', 'Evelyn Moore', 'Brooklyn Barnes'),
('I', '90002', '2023-11-07', '2023-11-07 10:05:00', 'Milwaukee Finance', 'Alexander Jackson', 'Ariana Gibson'),
('J', '10001', '2023-11-09', '2023-11-09 14:35:00', 'Baltimore Desk', 'Harper Martin', 'Sadie Ellis'),
('J', '10002', '2023-11-12', '2023-11-12 09:20:00', 'Indianapolis Base', 'Mason Lee', 'Connor Henderson');
GO

-- 9. LineItems (40 Random Details mapping to Invoices)
INSERT INTO [dbo].[LineItems] ([Description], [Quantity], [UnitPrice], [Total], [Invoice_InvoiceId]) VALUES 
('Galaxy S24 Ultra', 1, 1299.99, 1299.99, 1), ('AirPods Max', 1, 549.00, 549.00, 1),
('MacBook Air M3', 1, 1199.00, 1199.00, 2), ('OLED C3 65" 4K Smart TV', 1, 1799.00, 1799.00, 2),
('Surface Pro 9', 1, 1299.99, 1299.99, 3), ('PlayStation 5 Console', 1, 499.99, 499.99, 3),
('QuietComfort Ultra', 1, 429.00, 429.00, 4), ('Apple Watch Ultra 2', 1, 799.00, 799.00, 4),
('V15 Detect Absolute Vacuum', 1, 749.99, 749.99, 5), ('Roomba j7+ Robot Vacuum', 1, 599.00, 599.00, 5),
('Tech Fleece Joggers', 2, 110.00, 220.00, 6), ('Air Force 1 ''07 Sneakers', 1, 115.00, 115.00, 6),
('Women''s Align Pant II', 2, 98.00, 196.00, 7), ('Ultraboost 1.0 Running Shoes', 1, 190.00, 190.00, 7),
('Fenix 7X Sapphire Solar', 1, 999.99, 999.99, 8), ('Moab 3 Hiking Boot', 1, 120.00, 120.00, 8),
('Hero12 Black Action Camera', 1, 399.99, 399.99, 9), ('Samsung 990 PRO NVMe SSD 2TB', 1, 189.99, 189.99, 9),
('Peloton Bike+', 1, 2495.00, 2495.00, 10), ('The Reversible Mat 5mm', 2, 88.00, 176.00, 10),
('Atomic Habits (Hardcover)', 5, 27.00, 135.00, 11), ('The Ride of a Lifetime', 3, 28.00, 84.00, 11),
('Catan Base Game', 1, 54.99, 54.99, 12), ('LEGO Millennium Falcon', 1, 169.99, 169.99, 12),
('Dyson Airwrap Multi-Styler', 1, 599.99, 599.99, 13), ('Advanced Night Repair Serum', 1, 125.00, 125.00, 13),
('Mobil 1 Motor Oil 5W-30', 4, 29.97, 119.88, 14), ('Armor All Car Wash 64oz', 2, 10.99, 21.98, 14),
('Markus Office Chair', 2, 289.00, 578.00, 15), ('Kallax Shelf Unit', 1, 89.99, 89.99, 15),
('Pike Place Roast Whole Bean Coffee', 4, 14.99, 59.96, 16), ('Evian Natural Spring Water 24-Pack', 2, 21.49, 42.98, 16),
('Taste of the Wild Dog Food', 2, 54.99, 109.98, 17), ('Tidy Cats Clumping Litter 35lb', 1, 22.49, 22.49, 17),
('Pilot G2 Premium Gel Pens', 5, 14.88, 74.40, 18), ('Oyster Perpetual Datejust', 1, 9500.00, 9500.00, 18),
('American Professional II Stratocaster', 1, 1699.99, 1699.99, 19), ('ATH-M50x Studio Headphones', 1, 169.00, 169.00, 19),
('The Legend of Zelda: Tears of the Kingdom', 1, 69.99, 69.99, 20), ('Super Smash Bros. Ultimate', 1, 59.99, 59.99, 20);
GO

-- 10. Activities (40 Realistic Sale Transations mapping Random Staff & Accounts to Products)
INSERT INTO [dbo].[Activities] ([Date], [Quantity], [UnitPrice], [Amount], [Account_AccountID], [Product_ProductId], [Staff_StaffId]) VALUES 
('2023-10-01', 1, 1299.99, 1299.99, 1, 1, 1), ('2023-10-01', 1, 549.00, 549.00, 1, 16, 1),
('2023-10-03', 1, 1199.00, 1199.00, 3, 5, 2), ('2023-10-03', 1, 1799.00, 1799.00, 3, 18, 2),
('2023-10-05', 1, 1299.99, 1299.99, 5, 8, 3), ('2023-10-05', 1, 499.99, 499.99, 5, 26, 3),
('2023-10-08', 1, 429.00, 429.00, 6, 15, 4), ('2023-10-08', 1, 799.00, 799.00, 6, 20, 4),
('2023-10-10', 1, 749.99, 749.99, 9, 51, 5), ('2023-10-10', 1, 599.00, 599.00, 9, 52, 5),
('2023-10-12', 2, 110.00, 220.00, 10, 31, 6), ('2023-10-12', 1, 115.00, 115.00, 10, 36, 6),
('2023-10-14', 2, 98.00, 196.00, 11, 33, 7), ('2023-10-14', 1, 190.00, 190.00, 11, 41, 7),
('2023-10-15', 1, 999.99, 999.99, 13, 22, 8), ('2023-10-15', 1, 120.00, 120.00, 13, 38, 8),
('2023-10-17', 1, 399.99, 399.99, 17, 25, 9), ('2023-10-17', 1, 189.99, 189.99, 17, 94, 9),
('2023-10-19', 1, 2495.00, 2495.00, 20, 65, 10), ('2023-10-19', 2, 88.00, 176.00, 20, 66, 10),
('2023-10-21', 5, 27.00, 135.00, 24, 69, 11), ('2023-10-21', 3, 28.00, 84.00, 24, 70, 11),
('2023-10-23', 1, 54.99, 54.99, 47, 73, 12), ('2023-10-23', 1, 169.99, 169.99, 47, 71, 12),
('2023-10-25', 1, 599.99, 599.99, 50, 76, 13), ('2023-10-25', 1, 125.00, 125.00, 50, 75, 13),
('2023-10-27', 4, 29.97, 119.88, 30, 79, 14), ('2023-10-27', 2, 10.99, 21.98, 30, 80, 14),
('2023-10-29', 2, 289.00, 578.00, 31, 56, 15), ('2023-10-29', 1, 89.99, 89.99, 31, 57, 15),
('2023-11-01', 4, 14.99, 59.96, 28, 87, 1), ('2023-11-01', 2, 21.49, 42.98, 28, 89, 1),
('2023-11-03', 2, 54.99, 109.98, 41, 81, 2), ('2023-11-03', 1, 22.49, 22.49, 41, 82, 2),
('2023-11-05', 5, 14.88, 74.40, 14, 83, 3), ('2023-11-05', 1, 9500.00, 9500.00, 14, 48, 3),
('2023-11-07', 1, 1699.99, 1699.99, 46, 85, 4), ('2023-11-07', 1, 169.00, 169.00, 46, 86, 4),
('2023-11-09', 1, 69.99, 69.99, 44, 100, 5), ('2023-11-09', 1, 59.99, 59.99, 44, 99, 5);
GO
