INSERT INTO role(name) VALUES('ROLE_USER');
INSERT INTO role(name) VALUES('ROLE_ADMIN');
INSERT INTO role(name) VALUES('ROLE_GOLOVA');
INSERT INTO role(name) VALUES('ROLE_MANAGER');

INSERT INTO house(city, street, zip_code, description) VALUES('Lviv', 'Rjashivska 9', '79040', 'a nice house with a lot of parking spaces');
INSERT INTO apartment (number, square, house_id, owner_id) VALUES(1, 44, 1, 1);
INSERT INTO apartment (number, square, house_id, owner_id) VALUES(2, 67, 1, 2);
INSERT INTO apartment (number, square, house_id, owner_id) VALUES(3, 98, 1, 3);
INSERT INTO apartment (number, square, house_id, owner_id) VALUES(4, 67, 1, 4);
INSERT INTO apartment (number, square, house_id, owner_id) VALUES(5, 100, 1, 5);
INSERT INTO apartment (number, square, house_id, owner_id) VALUES(6, 87, 1, 6);
INSERT INTO apartment (number, square, house_id, owner_id) VALUES(7, 89, 1, 7);
INSERT INTO apartment (number, square, house_id, owner_id) VALUES(8, 66, 1, 8);
INSERT INTO apartment (number, square, house_id) VALUES(9,  55, 1);
INSERT INTO apartment (number, square, house_id) VALUES(10, 69, 1);
INSERT INTO apartment (number, square, house_id) VALUES(11, 99, 1);


INSERT INTO users(  birth_date,email, first_name, gender, last_name, password,phone_number,role,apartment_id,is_owner,activated) VALUES ('2016-06-13','admin@admin','Admin','admin','Adminius','$2a$06$IeFQ1f0OMzPvfrwMvUrvqO6ghg.Qayu57t6nRAhgY9Ic18muPHGAC','380000000','2',1,TRUE,TRUE);
INSERT INTO users(  birth_date,email, first_name, gender, last_name, password,phone_number,role,apartment_id,is_owner,activated) VALUES ('2016-06-13','manager@manager','Manager','manager','Manager','$2a$06$IeFQ1f0OMzPvfrwMvUrvqO6ghg.Qayu57t6nRAhgY9Ic18muPHGAC','390000000','4',1,TRUE,TRUE);
INSERT INTO users(  birth_date,email, first_name, gender, last_name, password,phone_number,role,apartment_id,is_owner,activated) VALUES ('1993-10-31','vilumkris@gmail.com','kris','female','vilum','$2a$06$IeFQ1f0OMzPvfrwMvUrvqO6ghg.Qayu57t6nRAhgY9Ic18muPHGAC','380931286864','1',2,TRUE,TRUE );
INSERT INTO users(  birth_date,email, first_name, gender, last_name, password,phone_number,role,apartment_id,is_owner) VALUES ('1990-11-28', 'n.svidersky@gmail.com','Nazar','male','Sviderskyi','$2a$06$fGiJsjD0U/ZoHbmjab2ytOoedYAB1zQ0XANiGUQXAwv9TcyxV.Qfe','0931544845','1',3,TRUE );
INSERT INTO users(  birth_date,email, first_name, gender, last_name, password,phone_number,role,apartment_id,is_owner) VALUES ('1996-02-21','KostetskyRoma@gmail.com','Roman','male','Kostetsky','$2a$06$R33Bzp5v3k5l5xs1n3dwQuQ/fM1DjCMldqthEXhvnI7Cu3gOQ4ms6','380687773508','1',4,TRUE );
INSERT INTO users(  birth_date,email, first_name, gender, last_name, password,phone_number,role,apartment_id,is_owner, activated) VALUES ('1992-12-30','butaroman@gmail.com','Roman','male','Buta','$2a$06$IeFQ1f0OMzPvfrwMvUrvqO6ghg.Qayu57t6nRAhgY9Ic18muPHGAC','0632571119','1',5,TRUE, TRUE );
INSERT INTO users(  birth_date,email, first_name, gender, last_name, password,phone_number,role,apartment_id,is_owner) VALUES ('1997-06-02','cavayman@gmail.com','Oleg','male','Kotsik','$2a$06$IeFQ1f0OMzPvfrwMvUrvqO6ghg.Qayu57t6nRAhgY9Ic18muPHGAC','0679167305','1',6,TRUE );
INSERT INTO users(  birth_date,email, first_name, gender, last_name, password,phone_number,role,apartment_id,is_owner) VALUES ('2916-04-14','nazardovhyi@gmail.com','Nazar','male','Dovhyi','$2a$06$FHyRBL.Yc54J8K1XoKPF9.wWzyThXZd/6kNBLY8BxyoaGUb.YtFjG','0973055976','1',7,TRUE );
INSERT INTO users(  birth_date,email, first_name, gender, last_name, password,phone_number,role,apartment_id,is_owner,activated) VALUES ('1994-12-16','oleg111koval@gmail.com','Oleg','male','Koval','$2a$06$QfIksIErYqbeoD3Pnxai7Ott22NGF8G38GsC/pQVpGG/rt55IYhUy','095729666','1',8,TRUE,TRUE);
INSERT INTO users(  birth_date,email, first_name, gender, last_name, password,phone_number,role,apartment_id,activated) VALUES ('1992-12-30','butaroman1@gmail.com','Roman1','male','Buta1','$2a$06$IeFQ1f0OMzPvfrwMvUrvqO6ghg.Qayu57t6nRAhgY9Ic18muPHGAC','0632571119','1',8,TRUE );
INSERT INTO users(  birth_date,email, first_name, gender, last_name, password,phone_number,role,apartment_id,activated) VALUES ('1992-12-30','butaroman2@gmail.com','Roman2','male','Buta2','$2a$06$IeFQ1f0OMzPvfrwMvUrvqO6ghg.Qayu57t6nRAhgY9Ic18muPHGAC','0632571119','1',8,TRUE );
INSERT INTO users(  birth_date,email, first_name, gender, last_name, password,phone_number,role,apartment_id,activated) VALUES ('1992-12-30','butaroman3@gmail.com','Roman3','male','Buta3','$2a$06$IeFQ1f0OMzPvfrwMvUrvqO6ghg.Qayu57t6nRAhgY9Ic18muPHGAC','0632571119','1',8,TRUE );
INSERT INTO users(  birth_date,email, first_name, gender, last_name, password,phone_number,role,apartment_id,activated) VALUES ('1994-08-18','nkharabaruk@gmail.com','Nataliia','female','Kharabaruk','$2a$06$IeFQ1f0OMzPvfrwMvUrvqO6ghg.Qayu57t6nRAhgY9Ic18muPHGAC','0638142706','1',4,TRUE );


INSERT INTO users(  birth_date,email, first_name, gender, last_name, password,phone_number,role,apartment_id,is_owner,activated) VALUES ('1994-12-16','svitlanaKoval@gmail.com','Svitlana','male','Koval','$2a$08$wIri8hT4wjBAM5Ssfz3N/ueLbSy80mO4hsVhTsdS67YR9wbjCBy2C','095729666','1',8,FALSE,TRUE );
INSERT INTO users(  birth_date,email, first_name, gender, last_name, password,phone_number,role,apartment_id,is_owner,activated) VALUES ('1994-12-16','oleg2koval@gmail.com','Ruslan','male','Koval','$2a$08$wIri8hT4wjBAM5Ssfz3N/ueLbSy80mO4hsVhTsdS67YR9wbjCBy2C','095729666','1',8,FALSE,TRUE );
INSERT INTO users(  birth_date,email, first_name, gender, last_name, password,phone_number,role,apartment_id,is_owner,activated) VALUES ('1994-12-16','oleg1koval@gmail.com','Sergiy','male','Koval','$2a$08$wIri8hT4wjBAM5Ssfz3N/ueLbSy80mO4hsVhTsdS67YR9wbjCBy2C','095729666','1',8,FALSE ,TRUE );
INSERT INTO users(  birth_date,email, first_name, gender, last_name, password,phone_number,role,apartment_id,is_owner,activated) VALUES ('1994-12-16','oleg11koval@gmail.com','Andriy','male','Koval','$2a$08$wIri8hT4wjBAM5Ssfz3N/ueLbSy80mO4hsVhTsdS67YR9wbjCBy2C','095729666','1',8,FALSE ,TRUE );


INSERT INTO provider_type ( type_name) VALUES ('Internet');
INSERT INTO provider_type ( type_name) VALUES ('Trash');
INSERT INTO provider_type ( type_name) VALUES ('Electricity');
INSERT INTO provider_type ( type_name) VALUES ('Water');
INSERT INTO provider_type ( type_name) VALUES ('House cleaning');
INSERT INTO provider_type ( type_name) VALUES ('Some other provider');


INSERT INTO provider (name, description, logo_url, periodicity, provider_type_id, email, phone, address, schedule, active)
VALUES ('Volya', 'Інтернет провайдер', 'https://lh3.googleusercontent.com/ChIb4t3-f90R0s4qu3BGuTh2-t0HoA7q6L6fTkRdfMrMKDj3rgYBR3SiNxcjr_o9FMU=w300', 'PERMANENT_MONTHLY', 1,
        'volya@gmail.com', '(093)226-86-34', 'м. Львів, вул. Золотогірська 5а', 'пн-пт 09.00-20.00', TRUE );
INSERT INTO provider (name, description, logo_url, periodicity, provider_type_id, email, phone, address, schedule, active)
VALUES ('Trash Provider', 'Служба виносу сміття', 'http://www.ci.stillwater.mn.us/vertical/Sites/%7B5BFEF821-C140-4887-AEB5-99440411EEFD%7D/uploads/%7B99CA72DD-0AF9-4598-BC43-EAA2BB6625B4%7D.GIF', 'PERMANENT_MONTHLY', 2,
        'trash@gmail.com', '(093)226-86-34', 'м. Львів, вул. Широка 25', 'пн-пт 09.00-20.00', TRUE );
INSERT INTO provider (name, description, logo_url, periodicity, provider_type_id, email, phone, address, schedule, active)
VALUES ('Electro com', 'Електрослужба', 'https://stocklogos-pd.s3.amazonaws.com/styles/logo-medium-alt/logos/image/f576842989a8d05aa71c0f79ad1c48ae.png?itok=IK4NARiQ', 'PERMANENT_MONTHLY', 3,
        'volya@gmail.com', '(093)226-86-34','м. Львів, вул. Личаківська 55',  'пн-пт 09.00-20.00', TRUE);
INSERT INTO provider (name, description, logo_url, periodicity, provider_type_id, email, phone, address, schedule, active)
VALUES ('True Water', 'Сервіс доставки води', 'http://edc1.securesites.net/~edc/drinkhydrasonic.com/images/logo/water-logo.png', 'PERMANENT_YEARLY', 4,
        'true.water@gmail.com', '(093)226-86-34', 'м. Львів, вул. Городоцька 217', 'пн-пт 09.00-20.00', TRUE);
INSERT INTO provider (name, description, logo_url, periodicity, provider_type_id, email, phone, address, schedule, active)
VALUES ('Awesome', 'Прибирання під''їзду', 'http://www.sketchappsources.com/resources/source-image/pacman.jpg', 'PERMANENT_MONTHLY', 5,
        'aws@gmail.com', '(093)226-86-34', 'м. Львів, вул. Пасічна 62б', 'пн-пт 09.00-20.00', TRUE );
INSERT INTO provider (name, description, logo_url, periodicity, provider_type_id, email, phone, address, schedule, active)
VALUES ('Google inc', 'Інформаційна компанія', 'https://pbs.twimg.com/profile_images/762369348300251136/5Obhonwa.jpg', 'ONE_TIME', 6,
        'google@gmail.com', '(093)226-86-34', 'м. Львів, вул. Бенцаля 3', 'пн-пт 09.00-20.00', TRUE);


INSERT INTO contract ( date_start, date_finish, price, price_currency, text, provider_id, active)
VALUES ('2016-08-03', '2018-09-05', 100, 'UAH',  'Опис контракту', 1, TRUE);
INSERT INTO contract (date_start, date_finish, price, price_currency, text, provider_id, active)
VALUES ('2002-08-03', '2019-05-07', 630,  'UAH', 'Опис контракту', 2, TRUE);
INSERT INTO contract (date_start, date_finish, price, price_currency, text, provider_id, active)
VALUES ('2007-08-03', '2018-09-05', 3200,  'UAH','Опис контракту', 3, TRUE);
INSERT INTO contract (date_start, date_finish, price, price_currency, text, provider_id, active)
VALUES ('2010-03-03', '2018-10-02', 100,  'UAH', 'Опис контракту', 5, TRUE);
INSERT INTO contract (date_start, date_finish, price, price_currency, text, provider_id, active)
VALUES ('2010-03-03', '2010-10-02', 150,  'UAH', 'Опис контракту', 6, TRUE);
INSERT INTO contract (date_start, date_finish, price, price_currency, text, provider_id, active)
VALUES ('2010-03-03', '2021-10-02', 100,  'UAH', 'Опис контракту', 5, TRUE);
INSERT INTO contract (date_start, date_finish, price, price_currency, text, provider_id, active)
VALUES ('2010-03-03', '2015-10-02', 98,  'UAH', 'Опис контракту', 4, TRUE);
INSERT INTO contract (date_start, date_finish, price, price_currency, text, provider_id, active)
VALUES ('2010-03-03', '2012-10-02', 100,  'UAH', 'Опис контракту', 3, TRUE);
INSERT INTO contract (date_start, date_finish, price, price_currency, text, provider_id, active)
VALUES ('2010-03-03', '2015-10-02', 98,  'UAH', 'Опис контракту', 2, TRUE);
INSERT INTO contract ( date_start, date_finish, price, price_currency, text, provider_id, active)
VALUES ('2016-08-03', '2018-09-05', 100, 'UAH',  'Опис контракту', 1, TRUE);


/*Nazar's test data*/

insert into bill(date, to_pay, paid, tariff, apartment_id, provider_id, status) VALUES('2016-05-28', 350.5,0, 4.5, 7, 1, 'NOT_PAID');
insert into bill(date, to_pay, paid, tariff, apartment_id, provider_id, status) VALUES('2016-05-28', 280.5,120, 4.5, 1, 1, 'NOT_PAID');
insert into bill(date, to_pay, paid, tariff, apartment_id, status, provider_id) VALUES('2016-05-28', 320,320, 4.5, 3,  'PAID', 1);
insert into bill(date, to_pay, paid, tariff, apartment_id, provider_id, status)VALUES('2016-06-28', 240.5,0, 2.5, 2, 1, 'NOT_PAID');
insert into bill(date, to_pay, paid, tariff, apartment_id, status, provider_id) VALUES('2016-06-28', 356,356, 4.5, 7, 'PAID', 1);
insert into bill(date, to_pay, paid, tariff, apartment_id, provider_id, status)VALUES('2016-06-28', 60,0, 2, 8, 5, 'NOT_PAID');
insert into bill(date, to_pay, paid, tariff, apartment_id, status, provider_id) VALUES('2016-06-28', 120,120, 0.5, 6, 'PAID', 1);
insert into bill(date, to_pay, paid, tariff, apartment_id, provider_id, status)VALUES('2016-06-28', 88,88, 1.5, 6, 6, 'PAID');
insert into bill(date, to_pay, paid, tariff, apartment_id, status, provider_id) VALUES('2016-06-28', 356,356, 4.5, 7, 'PAID', 1);
insert into bill(date, to_pay, paid, tariff, apartment_id, provider_id, status) VALUES('2016-07-28', 240.5,0, 2, 3, 2, 'NOT_PAID');
insert into bill(date, to_pay, paid, tariff, apartment_id, provider_id, status) VALUES('2016-07-28', 150, 0, 4.5, 7, 3, 'NOT_PAID');
insert into bill(date, to_pay, paid, tariff, apartment_id, provider_id, status) VALUES('2016-07-28', 188,50, 3, 5, 4, 'NOT_PAID');
insert into bill(date, to_pay, paid, tariff, apartment_id, provider_id, status) VALUES('2016-07-28', 120, 120, 4.5, 7, 4, 'PAID');
insert into bill(date, to_pay, paid, tariff, apartment_id, status, provider_id) VALUES('2016-07-28', 350.5,350.5, 4.5, 4, 'PAID', 1);
insert into bill(date, to_pay, paid, tariff, apartment_id, provider_id, status) VALUES('2016-08-28', 90,0, 1, 1, 4, 'NOT_PAID');
insert into bill(date, to_pay, paid, tariff, apartment_id, provider_id, status) VALUES('2016-08-28', 144.5, 144.5, 2, 2, 6, 'PAID');
insert into bill(date, to_pay, paid, tariff, apartment_id, provider_id, status) VALUES('2016-08-28', 199, 0, 2, 3, 3, 'NOT_PAID');
insert into bill(date, to_pay, paid, tariff, apartment_id, provider_id, status) VALUES('2016-08-28', 120, 120, 4.5, 6, 6, 'PAID');
insert into bill(date, to_pay, paid, tariff, apartment_id, status, provider_id) VALUES('2016-08-28', 150.5,150.5, 4, 7, 'PAID', 1);

INSERT INTO osbb(  name, description, address, district, creation_date, creator_id) VALUES ('Мій Дім','осбб для людей','м.Львів вул.Городоцька 147а','Залізничний','2016-09-01 10:46:43.221000',5);
INSERT INTO osbb(  name, description, address, district, creation_date, creator_id) VALUES ('Червона Калина','найкраще осбб','м.Львів вул.В.Великого 99','Франківський','2014-09-05 10:46:43.221220',10);
INSERT INTO osbb(  name, description, address, district, creation_date) VALUES ('Двір','рівні права','м.Львів вул.Б.Хмельницького 77','Франківський','2012-05-27 08:20:43.221000');
INSERT INTO osbb(  name, description, address, district, creation_date) VALUES ('Район','осбб','м.Львів вул.Сихівськаа 33','Сихів','2015-10-15 10:46:43.221000');
INSERT INTO osbb(  name, description, address, district, creation_date) VALUES ('Надія','файне осбб','м.Львів вул.Гната Хоткевича 47а','Сихів','2010-08-01 10:46:43.221000');
INSERT INTO osbb(  name, description, address, district, creation_date) VALUES ('Весна',' ','м.Львів вул.Проспект Червоної Калини 11','Сихів','2016-05-10 12:46:43.221000');
INSERT INTO osbb(  name, description, address, district, creation_date) VALUES ('Мрія',' ','м.Львів вул.Городоцька 147а','Залізничний','2016-09-01 10:46:43.221000');
INSERT INTO osbb(  name, description, address, district, creation_date, creator_id) VALUES ('Моя Оселя','','м.Львів вул.Повітряна 17б','Залізничний','2013-10-12 08:46:43.221340', 11);
INSERT INTO osbb(  name, description, address, district, creation_date) VALUES ('Сонечко','','м.Львів вул.Наукова 77','Франківський','2015-04-18 10:46:43.221270');

INSERT INTO house(city, street, zip_code, description, osbb_id) VALUES('Львів', 'Широка 9', '79045', 'опис1', 8);
INSERT INTO house(city, street, zip_code, description, osbb_id) VALUES('Львів', 'Сяйво 16', '79049', 'опис2', 2);
INSERT INTO house(city, street, zip_code, description, osbb_id) VALUES('Львів', 'Сяйво 24', '79053', 'опис3', 2);
INSERT INTO house(city, street, zip_code, description, osbb_id) VALUES('Львів', 'Сяйво 26', '79056', 'опис4', 1);

INSERT INTO attachment(path, type, date, file_name) VALUES ('http://itukraine.org.ua/sites/default/files/news/sserve.jpg', 'IMAGE', '2016-09-20', 'sserve.jpg');
INSERT INTO attachment(path, type, date, file_name) VALUES ('http://ua-ekonomist.com/uploads/posts/2013-08/1376494055_932378712.jpg', 'IMAGE', '2016-08-01', '1376494055_932378712.jpg');
INSERT INTO attachment(path, type, date, file_name) VALUES ('http://news.dks.ua/images/0915/i_08091517_1.jpg', 'IMAGE', '2015-09-09', 'i_08091517_1.jpg');
INSERT INTO attachment(path, type, date, file_name) VALUES ('http://www.abmk.com.ua/content/images/projects/138047835156_orig.jpg', 'IMAGE', '2016-09-22', '138047835156_orig.jpg');
INSERT INTO attachment(path, type, date, file_name) VALUES ('http://nomerodyn.com/public/img/big/main.jpg', 'IMAGE', '2016-06-19', 'main.jpg');
INSERT INTO attachment(path, type, date, file_name) VALUES ('http://archfest.com/web/images/139479223222_1.jpg', 'IMAGE', '2014-12-20', '139479223222_1.jpg');
INSERT INTO attachment(path, type, date, file_name) VALUES ('https://www.askideas.com/media/39/Awesome-Empire-State-Building-Picture.jpg', 'IMAGE', '2016-07-27', 'Awesome-Empire-State-Building-Picture.jpg');
INSERT INTO attachment(path, type, date, file_name) VALUES ('http://img1.globalinfo.ua/im/2014/02/12/TZA04E.jpg', 'IMAGE', '2016-09-21', 'TZA04E.jpg');
INSERT INTO attachment(path, type, date, file_name) VALUES ('http://kyiv.ridna.ua/wp-content/uploads/2015/06/Project2_0014.jpg', 'IMAGE', '2016-09-25', 'Project2_0014.jpg');

UPDATE house SET osbb_id=1 WHERE house_id=1;

UPDATE users SET osbb_id=1;
UPDATE users SET osbb_id=2 WHERE email='butaroman2@gmail.com';
UPDATE users SET osbb_id=8 WHERE email='butaroman3@gmail.com';

insert into bill(date, to_pay, paid, tariff, apartment_id, provider_id)VALUES('2016-06-28', 240.5,0, 2.5, 1, 1);
insert into bill(date, to_pay, paid, tariff, apartment_id, status, provider_id) VALUES('2016-06-28', 356,356, 4.5, 1, 'PAID', 1);
insert into bill(date, to_pay, paid, tariff, apartment_id, provider_id) VALUES('2016-07-28', 240.5,0, 2, 3, 1);
insert into bill(date, to_pay, paid, tariff, apartment_id, provider_id) VALUES('2016-07-28', 150, 0, 4.5, 2, 1);
insert into bill(date, to_pay, paid, tariff, apartment_id, status, provider_id) VALUES('2016-07-28', 350.5,0, 4.5, 4, 'PAID', 1);


INSERT into ticket(assigned,user_id,name,description,state,"time",state_time)
           VALUES(2,3,'Зламаний ліфт','Скільки вже дзвонимо майстру, просимо, щоб налаштував ліфт. Він строїть його, але наступного дня ліфт знову не працює.
           Давате вже наймемо іншого майстра! Бо це тільки гроші бере, а нічого не вміє робити.','NEW','2016-09-02','2016-09-02');
INSERT into ticket(assigned,user_id,name,description,state,"time",state_time)
           VALUES(1,5,'Прибирання в під`їзді','Вже дістало це чургування в під`їзді. Хтось чесно виконує обов`язок, а хто навіть не береться за вінік.
           Так не піде! Давайте наймено прибиральницю, і тоді в нас завжди буде чисто, і не буде отих сварок з-за прибирання.','DONE','2015-10-02','2015-12-12');
INSERT into ticket(assigned,user_id,name,description,state,"time",state_time)
           VALUES(2,2,'Замок на вхідні двері','Учора, повертаючись пізно з роботи, зустрів сплячого чоловіка. В нас не нічліжка, тому пропоную поставити
            двері з кодовим замком, щоб ніхто не вештався по під`їзді. ','NEW','2015-11-02','2015-11-02');
INSERT into ticket(assigned,user_id,name,description,state,"time",state_time)
           VALUES(4,2,'Інтернет Воля','У вас добре працює інтернет? Бо я вже кілька днів не можу зайти на якийсь сайт! Воля, виправте, що це за перебої?','DONE','2016-04-02','2016-05-02');
INSERT into ticket(assigned,user_id,name,description,state,"time",state_time)
           VALUES(2,2,'Допоможіть! Візьміть Рекса на пару днів!!!','Завтра терміново їдемо по справах і не встигаємо віддати собаку родичам. Будемо дуже вдячні,
           якщо хто зможе виручити нас. Всі ж знаєте Рекса, це дуже весела собака, з ним не засумуєте! Заздалегіть, дякуємо! ','NEW','2016-09-08','2016-09-08');
INSERT into ticket(assigned,user_id,name,description,state,"time",state_time)
           VALUES(6,3,'Назва тікету6','Опис тікету6','DONE','2015-01-02','2015-02-12');
INSERT into ticket(assigned,user_id,name,description,state,"time",state_time)
           VALUES(4,4,'Назва тікету7','Опис тікету7','NEW','2015-11-02','2015-12-12');
INSERT into ticket(assigned,user_id,name,description,state,"time",state_time)
           VALUES(1,5,'Назва тікету8','Опис тікету8','IN_PROGRESS','2015-08-02','2015-09-12');
INSERT into ticket(assigned,user_id,name,description,state,"time",state_time)
           VALUES(5,2,'Назва тікету9','Опис тікету9','NEW','2015-10-02','2015-12-12');


INSERT into settings(user_id,assigned,creator,comment,answer)VALUES(1,TRUE,TRUE,TRUE,TRUE );
INSERT into settings(user_id,assigned,creator,comment,answer)VALUES(2,TRUE,TRUE,TRUE,TRUE );
INSERT into settings(user_id,assigned,creator,comment,answer)VALUES(3,TRUE,TRUE,TRUE,TRUE );
INSERT into settings(user_id,assigned,creator,comment,answer)VALUES(4,FALSE,FALSE,TRUE,TRUE );
INSERT into settings(user_id,assigned,creator,comment,answer)VALUES(5,TRUE,TRUE,TRUE,FALSE );
INSERT into settings(user_id,assigned,creator,comment,answer)VALUES(6,TRUE,FALSE,FALSE,TRUE );
INSERT into settings(user_id,assigned,creator,comment,answer)VALUES(7,FALSE,TRUE,TRUE,TRUE );
INSERT into settings(user_id,assigned,creator,comment,answer)VALUES(8,TRUE,TRUE,TRUE,FALSE );
INSERT into settings(user_id,assigned,creator,comment,answer)VALUES(9,TRUE,TRUE,FALSE,TRUE );
INSERT into settings(user_id,assigned,creator,comment,answer)VALUES(10,TRUE,TRUE,TRUE,TRUE );
INSERT into settings(user_id,assigned,creator,comment,answer)VALUES(11,FALSE,FALSE,FALSE,FALSE );
INSERT into settings(user_id,assigned,creator,comment,answer)VALUES(12,TRUE,FALSE,TRUE,TRUE );


INSERT into event(title, author, start_time, end_time, description, repeat, osbb_id) VALUES(
'Загальні збори всіх ОСББ',6,'2016-09-30 10:00:00+03','2016-10-30 10:00:00+03',
'У звязку із зростанням популярності на ОСББ відбудуться збори мешканців кожного ОСББ у своєму окрузі.' ||
'Метою заходу є відкрити очі населення на новомодні ОСББ. Показати всі недоліки та переваги.','ONE_TIME',2);
INSERT into event(title, author, start_time, end_time, description, repeat, osbb_id) VALUES(
'Заміна каналізації по вул.Городоцькій',9,'2016-06-01 07:00:00+03','2017-09-01 07:00:00+03',
'Було зібрано достатню суму, щоб здійснити часткову заміну каналізаційних труб та провести реогранізацію старих.','PERMANENT_WEEKLY',6);
INSERT into event(title, author, start_time, end_time, description, repeat, osbb_id) VALUES(
'У Броварах відбувся Форум ОСББ',2,'2016-06-11 09:00:00+03','2016-06-11 24:00:00+03',
'11 червня в Броварах відбулася унікальна подія – масштабний Форум ОСББ, який зібрав експертів з усієї країни.','ONE_TIME',1);
INSERT into event(title, author, start_time, end_time, description, repeat, osbb_id) VALUES(
'Вибори голови ОСББ',4,'2016-11-30 08:00:00+03','2016-11-30 22:00:00+03',
'Через зростання кількості ОСББ виникає необхідність в більшість к-сті влади.','ONE_TIME',4);

