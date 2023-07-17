create type HouseType as enum ('APARTMENT','FLAT','HOUSE','LOW-RISE APARTMENT','HIGH-RISE-APARTMENT');
create type FamilyStatus as enum ('MARRIED','SINGLE');
create type Gender as enum ('MALE','FEMALE');
alter type gender add value 'Male';
alter type gender add value 'Female';

create table Owners(
                       id serial primary key ,
                       first_name varchar,
                       last_name varchar,
                       email varchar,
                       date_of_birth date,
                       Gender gender
);

create table Addresses(
                          id serial primary key ,
                          city varchar,
                          region varchar,
                          street varchar
);

create table Houses (
                        id serial primary key ,
                        price numeric,
                        rating float,
                        description text,
                        room int,
                        furniture boolean,
                        address_id int references addresses(id),
                        owner_id int references owners(id)
);

create table Agency(
                       id serial primary key ,
                       name varchar,
                       phone_number varchar,
                       address_id int references addresses(id)
);
create table customers(
                          id serial primary key ,
                          first_name varchar,
                          last_name varchar,
                          email varchar,
                          date_of_birth date,
                          Gender gender,
                          nationality varchar,
                          family_status FamilyStatus
);
alter table customers rename column family_status to marital_status;
create table rentInfo(
                         id serial primary key ,
                         owner_id int references owners(id),
                         customer_id int references customers(id),
                         agency_id int references agencies(id),
                         house_id int references houses(id)
);
alter table rentInfo rename to rent_info;
alter table owners add constraint email unique (email);
alter table agencies alter column name set not null ;
alter table customers alter column email set not null ;
alter type familystatus rename to marital_status;
alter table rent_info add column check_in date;
alter table rent_info add column check_out date;
alter table agencies add check ( phone_number like'_____________'),add check ( phone_number like '+996%');


insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Serene', 'Roggerone', 'sroggeronej@shop-pro.jp', '1988-06-13', 'Female', 'French', 'Married');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Rafaellle', 'Hannent', 'rhannentk@miitbeian.gov.cn', '1974-10-14', 'Male', 'Icelandic', 'Single');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Aveline', 'Aslum', 'aasluml@w3.org', '1994-12-23', 'Female', 'Kurdish', 'Single');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Gloria', 'Powrie', 'gpowriem@msn.com', '1986-11-19', 'Female', 'Malay', 'Widow');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Tilek', 'Adam', 'tcrimminsn@google.co.uk', '1990-01-18', 'Male', 'Kyrgyz', 'Single');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Felike', 'Jurisic', 'fjurisico@joomla.org', '1994-08-24', 'Male', 'Guaraní', 'Married');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Kailey', 'Gate', 'kgatep@lycos.com', '1987-04-21', 'Female', 'Malayalam', 'Widow');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Ronna', 'Genge', 'rgengeq@admin.ch', '1982-01-04', 'Female', 'Thai', 'Single');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Hamish', 'Flisher', 'hflisherr@webnode.com', '1982-10-08', 'Male', 'Icelandic', 'Divorced');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Trula', 'Gheraldi', 'tgheraldis@paginegialle.it', '1988-01-06', 'Female', 'Malayalam', 'Divorced');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Fran', 'Olander', 'folandert@nsw.gov.au', '1974-11-14', 'Male', 'Indonesian', 'Married');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Arlana', 'Glass', 'aglassu@stanford.edu', '1983-10-30', 'Female', 'Bosnian', 'Single');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Esma', 'Doerr', 'edoerrv@51.la', '1983-06-13', 'Female', 'English', 'Married');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Rhiamon', 'MacLaig', 'rmaclaigw@feedburner.com', '1992-07-19', 'Female', 'Hebrew', 'Single');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Hunt', 'Minchinton', 'hminchintonx@mac.com', '1969-09-26', 'Male', 'German', 'Single');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Kamila', 'Armanova', 'kama@aboutads.info', '1994-02-02', 'Female', 'Kyrgyz', 'Single');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Berne', 'Armall', 'barmallz@e-recht24.de', '1980-09-28', 'Male', 'Belarusian', 'Widow');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Crista', 'Skeene', 'cskeene10@hp.com', '1970-01-25', 'Female', 'Gujarati', 'Single');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Fernanda', 'Bullen', 'fbullen11@abc.net.au', '1966-12-14', 'Female', 'Bosnian', 'Divorced');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Malika', 'Alikova', 'malika@last.fm', '1988-02-22', 'Female', 'Kyrgyz', 'Married');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Zackariah', 'Gelardi', 'zgelardi13@usa.gov', '1986-01-04', 'Male', 'Hungarian', 'Widow');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Frans', 'Colls', 'fcolls14@japanpost.jp', '1989-08-24', 'Male', 'Hindi', 'Married');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Ali', 'Jumabek', 'ali@imgur.com', '1993-11-14', 'Male', 'Kyrgyz', 'Married');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Shirleen', 'Hasley', 'shasley16@dmoz.org', '2019-07-12', 'Female', 'Chineese', 'Widow');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Garrott', 'Beccles', 'gbeccles17@foxnews.com', '2001-04-11', 'Male', 'Tsonga', 'Single');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Uulkan', 'Beisheeva', 'uulkan@xinhuanet.com', '1980-05-12', 'Female', 'Kyrgyz', 'Divorced');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Rosana', 'Mucci', 'rmucci19@fotki.com', '1970-05-07', 'Female', 'Czech', 'Married');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Neils', 'Aronson', 'naronson1a@time.com', '1976-12-18', 'Male', 'German', 'Married');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Nicol', 'Tipple', 'ntipple1b@theatlantic.com', '1997-07-19', 'Male', 'Turkish', 'Widow');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Leandra', 'Swancott', 'lswancott1c@thetimes.co.uk', '1985-04-14', 'Female', 'English', 'Single');

