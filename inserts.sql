INSERT INTO project.user (name, lastname, ID, phoneNumber, city, address) VALUES ('mohamad', 'eslami', 1023009233, '09122002112', 'Terhan', '4614 Valiasr St.');
INSERT INTO project.user (name, lastname, ID, phoneNumber, city, address) VALUES ('saghar', 'jamali', 1122334455, '09182934953', 'Isfahan', '103 Shirin St.');
INSERT INTO project.user (name, lastname, ID, phoneNumber, city, address) VALUES ('kian', 'karimi', 1220939310, '09162938299', 'Arak', '1037 Hashemi  Road');
INSERT INTO project.user (name, lastname, ID, phoneNumber, city, address) VALUES ('maryam', 'jomezade', 1234567890, '09120029321', 'Tehran', '989 Shahid haghani Road');
INSERT INTO project.user (name, lastname, ID, phoneNumber, city, address) VALUES ('ramtin', 'aghaei', 1272030230, '09145234232', 'Mashhad', '3592 Bahar St.');
INSERT INTO project.user (name, lastname, ID, phoneNumber, city, address) VALUES ('ahmad', 'haghani', 1273257502, '09123993223', 'Tehran', '3001 Kazemi Road');
INSERT INTO project.user (name, lastname, ID, phoneNumber, city, address) VALUES ('mahnaz', 'asadi', 1276309340, '09131115367', 'Isfahan', '4282 Southern St.');
INSERT INTO project.user (name, lastname, ID, phoneNumber, city, address) VALUES ('parisa', 'shayan', 1283459023, '09503435678', 'Ghazvin', '216 Southern St.');

INSERT INTO project.producer (name, lastname, ID, phoneNumber) VALUES ('romina', 'farhadi', 1234567890, '09123898234');
INSERT INTO project.producer (name, lastname, ID, phoneNumber) VALUES ('farhad', 'zamani', 1271002121, '09133693727');
INSERT INTO project.producer (name, lastname, ID, phoneNumber) VALUES ('asghar', 'mohamadi', 1273920340, '09131115367');
INSERT INTO project.producer (name, lastname, ID, phoneNumber) VALUES ('parham', 'asgari', 1284938423, '09128345679');


INSERT INTO project.product (code, name, purchasePrice, salePrice, balance, producer) VALUES (10010001, 'brown rice 5 kg', 56, 123.2, 100, 1234567890);
INSERT INTO project.product (code, name, purchasePrice, salePrice, balance, producer) VALUES (10010002, 'earl grey tea', 22, 58.19, 200, 1234567890);
INSERT INTO project.product (code, name, purchasePrice, salePrice, balance, producer) VALUES (10010010, 'Galaxy Watch Active2', 3500, 5386.7, 10, 1273920340);
INSERT INTO project.product (code, name, purchasePrice, salePrice, balance, producer) VALUES (10010011, 'Galaxy A51 SM-A515F/DSN', 5000, 5905.9, 5, 1273920340);
INSERT INTO project.product (code, name, purchasePrice, salePrice, balance, producer) VALUES (10010020, 'women''s Tshirt', 100, 181.5, 12, 1284938423);
INSERT INTO project.product (code, name, purchasePrice, salePrice, balance, producer) VALUES (10010021, 'Gabor Shoes For Men', 1500, 2090, 2, 1284938423);
INSERT INTO project.product (code, name, purchasePrice, salePrice, balance, producer) VALUES (10010030, 'Halloween Shot Eau De Toilette For Women ', 212, 317.9, 80, 1271002121);
INSERT INTO project.product (code, name, purchasePrice, salePrice, balance, producer) VALUES (10010031, 'Fabregas Argan Daily Hair Shampo', 20, 51.48, 56, 1271002121);
INSERT INTO project.product (code, name, purchasePrice, salePrice, balance, producer) VALUES (10010032, 'Fabregas Aloevera Daily Hair Shampoo', 20, 30.8, 120, 1271002121);


INSERT INTO project.factor (code, buyer, purchaseDate) VALUES (30030001, 1023009233, '2018-04-06');
INSERT INTO project.factor (code, buyer, purchaseDate) VALUES (30030002, 1220939310, '2019-07-19');
INSERT INTO project.factor (code, buyer, purchaseDate) VALUES (30030003, 1234567890, '2019-09-30');
INSERT INTO project.factor (code, buyer, purchaseDate) VALUES (30030004, 1272030230, '2018-01-01');
INSERT INTO project.factor (code, buyer, purchaseDate) VALUES (30030005, 1273257502, '2020-07-28');
INSERT INTO project.factor (code, buyer, purchaseDate) VALUES (30030006, 1276309340, '2020-03-18');
INSERT INTO project.factor (code, buyer, purchaseDate) VALUES (30030007, 1283459023, '2017-04-24');
INSERT INTO project.factor (code, buyer, purchaseDate) VALUES (30030008, 1122334455, '2019-02-13');
INSERT INTO project.factor (code, buyer, purchaseDate) VALUES (30030009, 1122334455, '2020-04-15');
INSERT INTO project.factor (code, buyer, purchaseDate) VALUES (30030010, 1234567890, '2019-10-24');
INSERT INTO project.factor (code, buyer, purchaseDate) VALUES (30030011, 1023009233, '2020-01-02');
INSERT INTO project.factor (code, buyer, purchaseDate) VALUES (30030012, 1023009233, '2020-04-02');


INSERT INTO project.list (factor, product, count, `rank`) VALUES (30030001, 10010002, 2, 2);
INSERT INTO project.list (factor, product, count, `rank`) VALUES (30030001, 10010021, 1, 2.5);
INSERT INTO project.list (factor, product, count, `rank`) VALUES (30030002, 10010010, 1, 4.5);
INSERT INTO project.list (factor, product, count, `rank`) VALUES (30030003, 10010020, 3, 3.2);
INSERT INTO project.list (factor, product, count, `rank`) VALUES (30030004, 10010001, 1, 3.8);
INSERT INTO project.list (factor, product, count, `rank`) VALUES (30030005, 10010011, 1, 4.6);
INSERT INTO project.list (factor, product, count, `rank`) VALUES (30030006, 10010031, 3, 2.8);
INSERT INTO project.list (factor, product, count, `rank`) VALUES (30030006, 10010032, 4, 4.5);
INSERT INTO project.list (factor, product, count, `rank`) VALUES (30030007, 10010020, 2, 3.8);
INSERT INTO project.list (factor, product, count, `rank`) VALUES (30030007, 10010030, 1, 4.6);
INSERT INTO project.list (factor, product, count, `rank`) VALUES (30030008, 10010030, 1, 3.5);
INSERT INTO project.list (factor, product, count, `rank`) VALUES (30030009, 10010002, 1, 2);
INSERT INTO project.list (factor, product, count, `rank`) VALUES (30030011, 10010002, 3, 2);
INSERT INTO project.list (factor, product, count, `rank`) VALUES (30030012, 10010002, 2, 2);