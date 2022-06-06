-- user Table
delete from user;
INSERT INTO `user` (id,`firstName`, `lastName`, `password`, `email`) VALUES 
(1,'Abdirahim', 'Mohamed', 'password123', 'amm83@uw.edu'),
(2,'John', 'Doe', 'password123', 'johndoe@uw.edu')
;
select * from user;

-- animeShow table
delete from anime_show;
INSERT INTO `anime_show` (id, `title`, `genre`, `actor`, `rating`, `overview`) VALUES 
(1,'One Piece', 'Shonen', '{"actor name":"Mackenyu, Arata"}', 8, 'Pirates and Adventure'),
(2,'Naruto', 'Shonen', '{"actor name":"Junko, Takeuchi"}', 7 , 'Ninjas and Redemption'),
(3,'Vinland Saga', 'Seinen', '{"actor name":"Naoya, Uchida"}', 8 , 'Vikings and Revenge')
;
SELECT * FROM anime_show;

-- season table
delete from season;
INSERT INTO `season` (id, `amount`) VALUES 
(1, 20),
(2, 21),
(3, 1)
;
SELECT * FROM season;

-- episode table
delete from episode;
INSERT INTO `episode` (id, `rating`, `title`, `description`,`season_id`) VALUES 
(1, 3 , 'Some title', 'Some description', 1),
(2, 2 , 'Some title','Some description', 2),
(3, 4 , 'Some title','Some description', 3)
;
SELECT * FROM episode;

-- mangacategory table
delete from manga_category;
INSERT INTO `manga_category` (id,`name`) VALUES 
(1,'Shonen'),
(2,'Shojo'),
(3,'Seinen'),
(4,'Josei'),
(5,'Kodomomuke')
;
SELECT * FROM manga_category;

-- manga table
delete from manga;
INSERT INTO `manga` (id,`title`, `author`, `publisher`) VALUES 
(1,'Vagabond', 'Takehiko Inoue', 'Kodansha USA'),
(2,'Tokyo Revengers', 'Ken Wakui', 'Kodansha USA,'),
(3,'Spy x Family', 'Tatsuya Endo', 'Viz Media')
;
SELECT * FROM manga;

-- news table
delete from news;
INSERT INTO `news` (id,`title`, `author`, `description`, `comment`, `publisher`, `publicationDate`) VALUES 
(1,'INFOGRAPHIC', 'Liam Dempsey', 'Information about Attack on Titan', '12+ comments', 'Crunchyroll News', 2020-12-02),
(2,'UPDATE', 'Crunchyroll Official', 'Information about New Anime Arrivals', '1236+ comments', 'Crunchyroll News', 2020-12-02),
(3,'Breaking News', 'Paul Chapman', 'Information about award-winning Anime', '1 comment', 'Crunchyroll News', 2020-12-02)
;
SELECT * FROM news;
 
-- game table
delete from game;
INSERT INTO `game` (id,`name`, `rule`, `feedback`, `goal`, `user_id`) VALUES 
(1,'MY HERO ACADEMIA', 'Rules and Regulations', 'Valueable and honest criticsm', 'Win the game and have fun!', 1),
(2,'MITRASPHERE', 'Rules and Regulations', 'Valueable and honest criticsm', 'Win the game and have fun!', 1),
(3,'GRAND SUMMONERS', 'Rules and Regulations', 'Valueable and honest criticsm', 'Win the game and have fun!', 1)
;
SELECT * FROM game;

-- product table
delete from product;
INSERT INTO `product` (id,`cart`, `price`, `review`) VALUES 
(1, "5 items" , 69 , 'Amazing Products!')
;
SELECT * FROM product;




