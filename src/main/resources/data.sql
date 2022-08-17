--table role
insert into role (ID, NAME_ROLE, DESCRIPTION)
VALUES (1, 'admin', 'Администратор'),
       (2, 'user', 'Пользователь');

--table client
insert into client (ID, name_client, surname, login, password, mobile_number, email, birthday, fk_role_id)
values (1, 'Пётр', 'Пуговкин', 'Pugovkin', 'Pugovkin', '+375-29-511-11-11', 'Pugovkin@mail.ru',
        PARSEDATETIME('03.01.1990', 'dd.MM.yyyy'), 2),
       (2, 'Ирина', 'Барсук', 'Barsuk', 'Barsuk', '+375-29-899-51-07', 'Irunabarsuk@gmail.com',
        PARSEDATETIME('24.06.1986', 'dd.MM.yyyy'), 1);

--table manufacturer
insert into manufacturer (id, name_manufacturer, country, city, address, phone_number, email)
values (1, 'ЧУП "Рога и копыта"', 'РФ', 'Москва','пр.Ленина, д.1','+7945645665', 'roga&kopita@mail.ru'),
       (2, 'ОАО "Самозванцы"', 'РФ', 'Санкт-Петербург', 'ул.Набережная, д.8А','+79852456', 'samozvanci@mail.ru');

--table category
insert into category (id, name_category)
values (1, 'Кольца'),
       (2, 'Серьги'),
       (3, 'Браслеты'),
       (4, 'Подвески и колье');

-- --table type_metal
insert into type_metal (id, type_metal)
values (1, 'silver'),
       (2, 'white gold'),
       (3, 'pink gold');

-- --table goods
insert into goods (id, fk_category_id, fk_manufacturer_id, vendor_code, name_goods, fk_type_metal_id, price, description, image)
values (1, 1, 1, '145007', 'Кольцо обручальное из розового золота', 3, 820.00, 'Кольцо обручальное из розового золота', FILE_READ('classpath:static/images/1.jpg')),
(2, 1, 1,  '105008', 'Кольцо обручальное из розового золота', 3, 572.00, 'Кольцо обручальное из розового золота', FILE_READ('classpath:static/images/1.jpg')),
(3, 1, 2, '0210489-CD', 'Кольцо из серебра с фианитом', 1, 57.00, 'Кольцо из серебра с фианитом', FILE_READ('classpath:static/images/1.jpg')),
(4, 1, 1,'384-к-р', 'Кольцо из комбинированного серебра', 1, 73.00, 'Кольцо из комбинированного серебра', FILE_READ('classpath:static/images/1.jpg')),
(5, 1, 2, '0210042', 'Кольцо из серебра с фианитом', 1, 77.00, 'Кольцо из серебра с фианитом', FILE_READ('classpath:static/images/1.jpg')),
(6, 1, 1,'148007/W', 'Кольцо обручальное из белого золота', 2, 1302.00, 'Кольцо обручальное из белого золота', FILE_READ('classpath:static/images/1.jpg')),
(7, 1, 2, '210539-9K', 'Кольцо из розового золота с фианитом', 3, 477.00, 'Кольцо из розового золота с фианитом', FILE_READ('classpath:static/images/1.jpg')),
(8, 1, 1,'2D00104.14K.R', 'Кольцо помолвочное из розового золота с бриллиантом', 3, 624.00, 'Кольцо помолвочное из розового золота с бриллиантом', FILE_READ('classpath:static/images/1.jpg')),

(9, 2, 1,'2524843/9-7-7,5', 'Серьги из серебра с жемчугом', 3, 66.00, 'Серьги из серебра с жемчугом', FILE_READ('classpath:static/images/1.jpg')),
(10, 2, 2, '310456-9K', 'Серьги из розового золота с фианитами', 3, 241.00, 'Серьги из розового золота с фианитами', FILE_READ('classpath:static/images/1.jpg')),
(11, 2, 1,'310484.9K.R', 'Серьги из розового золота с фианитами', 1, 334.00, 'Серьги из розового золота с фианитами', FILE_READ('classpath:static/images/1.jpg')),
(12, 2, 2, '021571/1', 'Серьги из серебра', 1, 65.00, 'Серьги из серебра', FILE_READ('classpath:static/images/1.jpg')),
(13, 2, 1,'0300077', 'Серьги из серебра', 1, 104.00, 'Серьги из серебра', FILE_READ('classpath:static/images/1.jpg')),
(14, 2, 2, '0320005', 'Серьги из серебра', 2, 64.00, 'Серьги из серебра', FILE_READ('classpath:static/images/1.jpg')),
(15, 2, 1,'300078/а', 'Серьги из розового золота', 3, 310.00, 'Серьги из розового золота', FILE_READ('classpath:static/images/1.jpg')),
(16, 2, 2, '300216.9K.R', 'Серьги из розового золота', 3, 467.00, 'Серьги из розового золота', FILE_READ('classpath:static/images/1.jpg')),

(17, 3, 1,'6D0074.9K.R.02', 'Браслет из розового золота', 3, 187.00, 'Браслет из розового золота', FILE_READ('classpath:static/images/1.jpg')),
(18, 3, 2, '0640003-F', 'Браслет из серебра', 3, 74.00, 'Браслет из серебра', FILE_READ('classpath:static/images/1.jpg')),
(19, 3, 1,'05-1493/00КЦ-00', 'Браслет из серебра', 1, 115.00, 'Браслет из серебра', FILE_READ('classpath:static/images/1.jpg')),
(20, 3, 2, '640057.9K.R', 'Браслет из розового золота', 1, 496.00, 'Браслет из розового золота', FILE_READ('classpath:static/images/1.jpg')),
(21, 3, 1,'0670010', 'Браслет из серебра', 1, 93.00, 'Браслет из серебра', FILE_READ('classpath:static/images/1.jpg')),
(22, 3, 2, '640035.9K.R', 'Браслет из розового золота', 2, 383.00, 'Браслет из розового золота', FILE_READ('classpath:static/images/1.jpg')),
(23, 3, 1,'670634.9K.R.01', 'Браслет из розового золота', 3, 196.00, 'Браслет из розового золота', FILE_READ('classpath:static/images/1.jpg')),
(24, 3, 2, '0640298.1', 'Браслет жесткий из серебра', 3, 238.00, 'Браслет жесткий из серебра', FILE_READ('classpath:static/images/1.jpg')),

(25, 4, 2, '2149511/9', 'Колье из серебра с фианитами', 3, 41.00, 'Колье из серебра с фианитами', FILE_READ('classpath:static/images/1.jpg')),
(26, 4, 1,'0440077', 'Подвеска-шарм из серебра с фианитами', 3, 58.00, 'Подвеска-шарм из серебра с фианитами', FILE_READ('classpath:static/images/1.jpg')),
(27, 4, 1,'410008В', 'Подвеска-крест из розового золота', 1, 172.00, 'Подвеска-крест из розового золота', FILE_READ('classpath:static/images/1.jpg')),
(28, 4, 2, '40260/А-9K', 'Подвеска из розового золота с фианитами', 1, 152.00, 'Подвеска из розового золота с фианитами', FILE_READ('classpath:static/images/1.jpg')),
(29, 4, 1,'0440056/К', 'Подвеска-шарм из серебра с фианитами', 1, 58.00, 'Подвеска-шарм из серебра с фианитами', FILE_READ('classpath:static/images/1.jpg')),
(30, 4, 1,'550036.9K.R', 'Колье из розового золота с фианитами', 2, 708.00, 'Колье из розового золота с фианитами', FILE_READ('classpath:static/images/1.jpg')),
(31, 4, 2, '4D0058-9K', 'Подвеска из розового золота с бриллиантом', 3, 287.00, 'Подвеска из розового золота с бриллиантом', FILE_READ('classpath:static/images/1.jpg')),
(32, 4, 2, '0430236', 'Подвеска из серебра', 3, 42.00, 'Подвеска из серебра', FILE_READ('classpath:static/images/1.jpg'));

--
--table review
insert into review (id,fk_client_id, date_review, review)
values  (1, 1, PARSEDATETIME('01.08.2022', 'dd.MM.yyyy'), 'Принят');
