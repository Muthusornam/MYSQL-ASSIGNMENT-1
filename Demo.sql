create database MOVIE;
select * from movie;
CREATE TABLE MOVIES (
    ID int,
    Title varchar(255),
    Director varchar(255),
    Year int,
    Length_minutes int
);

INSERT INTO MOVIES VALUES ('1','Toy Story','John Lasseter','1995','81');
INSERT INTO MOVIES VALUES ('2','A Bugs Life','John Lasseter','1998','95'), ('3','Toy Story 2','John Lasseter','1999','93');
INSERT INTO MOVIES VALUES ('4','Monsters, Inc.','Pete Docter','2001','92');
INSERT INTO MOVIES VALUES ('5','Finding Nemo','Andrew Stanton','2003','107');
INSERT INTO MOVIES VALUES ('6','The Incredibles','Brad Bird','2004','116');
INSERT INTO MOVIES VALUES ('7','Cars','John Lasseter','2006','117');
INSERT INTO MOVIES VALUES ('8','Ratatouille','Brad Bird','2007','115');
INSERT INTO MOVIES VALUES ('9','WALL-E','Andrew Stanton','2008','104');
INSERT INTO MOVIES VALUES ('10','Up','Pete Docter','2009','101');
INSERT INTO MOVIES VALUES ('11','Toy Story 3','Lee Unkrich','2010','103');
INSERT INTO MOVIES VALUES ('12','Cars 2','John Lasseter','2011','120');
INSERT INTO MOVIES VALUES ('13','Brave','Brenda Chapman','2012','102');
INSERT INTO MOVIES VALUES ('14','Monsters University','Dan Scanlon','2013','110');
INSERT INTO MOVIES VALUES ('87','WALL-G','Brenda Chapman','2042','97');

SELECT Title FROM MOVIES;
SELECT Director FROM MOVIES;
SELECT Title,Director FROM MOVIES;
SELECT Title,Year FROM MOVIES;
SELECT * FROM MOVIES;
SELECT id, title FROM movies WHERE id = 6;
SELECT Title, Year FROM movies WHERE Year BETWEEN 2000 AND 2010;
SELECT Title,Year FROM movies WHERE Year NOT BETWEEN 2000 AND 2010;
SELECT Title,Year FROM movies LIMIT 5;
SELECT * FROM MOVIES WHERE title LIKE "Toy Story%";
SELECT * FROM MOVIES WHERE Director = 'John Lasseter';
SELECT * FROM MOVIES WHERE Director != 'John Lasseter';
SELECT * FROM MOVIES WHERE title LIKE "WALL%";
SELECT Director FROM MOVIES ORDER BY Director ASC;
SELECT Title, year FROM MOVIES ORDER BY year DESC LIMIT 4;
SELECT Title FROM MOVIES ORDER BY Title ASC LIMIT 5 OFFSET 5;
CREATE TABLE North_american_cities(City varchar(255),Country varchar(255),Population int,Latitude float,Longitude float);
INSERT INTO north_american_cities VALUES ('Guadalajara','Mexico','1500800','20.659699','-103.349609');
INSERT INTO north_american_cities VALUES ('Toronto','Canada','2795060','43.653226','-79.383184'), ('Houston','United States','2195914','29.760427','-95.369803');
INSERT INTO north_american_cities VALUES ('New York','United States','8405837','40.712784','-74.005941');
INSERT INTO north_american_cities VALUES ('Philadelphia','United States','1553165','39.952584','-75.165222');
INSERT INTO north_american_cities VALUES ('Havana','Cuba','2106146','23.05407','-82.345189');
INSERT INTO north_american_cities VALUES ('Mexico City','Mexico','8555500','19.432608','-99.133208');
INSERT INTO north_american_cities VALUES ('Phoenix','United States','1513367','33.448377','-112.074037');
INSERT INTO north_american_cities VALUES ('Los Angeles','United States','3884307','34.052234','-118.243685');
INSERT INTO north_american_cities VALUES ('Ecatepec de Morelos','Mexico','1742000','19.601841','-99.050674');
INSERT INTO north_american_cities VALUES ('Montreal','Canada','1717767','45.501689','-73.567256');
INSERT INTO north_american_cities VALUES ('Chicago','United States','2718782','41.878114','-87.629798');
SELECT * From north_american_cities;
SELECT City,Country,Population FROM north_american_cities WHERE Country = 'Canada';
SELECT city, latitude FROM north_american_cities WHERE country = "United States" ORDER BY latitude DESC;
SELECT city, longitude FROM north_american_cities WHERE longitude < -87.629798 ORDER BY longitude ASC;
SELECT City, Country, Population FROM north_american_cities WHERE Country = 'Mexico' ORDER BY Population DESC LIMIT 2 ;
SELECT City, Country, Population FROM north_american_cities WHERE Country = 'United States' ORDER BY Population DESC LIMIT 2 OFFSET 2 ;


CREATE TABLE Boxoffice  (
    Movie_ID int,
    Rating float,
    Domestic_sales int,
    International_sales int
);
SELECT * FROM Boxoffice;
INSERT INTO Boxoffice VALUES ('5','8.2','380843261','555900000'),
('14','7.4','268492764','475066843'),
('8','8','206445654','417277164'),
('12','6.4','191452396','368400000'),
('3','7.9','245852179','239163000'),
('6','8','261441092','370001000'),
('9','8.5','223808164','297503696'),
('11','8.4','415004880','648167031'),
('1','8.3','191796233','170162503'),
('7','7.2','244082982','217900167'),
('10','8.3','293004164','438338580'),
('4','8.1','289916256','272900000'),
('2','7.2','162798565','200600000'),
('13','7.2','237283207','301700000');
SELECT title, domestic_sales, international_sales FROM movies JOIN boxoffice ON movies.id = boxoffice.movie_id;

SELECT title, domestic_sales, international_sales FROM movies JOIN boxoffice ON movies.id = boxoffice.movie_id
 WHERE international_sales > domestic_sales ;
 
 SELECT title, Rating FROM movies JOIN boxoffice ON movies.id = boxoffice.movie_id ORDER BY rating DESC;
