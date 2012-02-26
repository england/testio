/*
SQLyog Ultimate v9.02 
MySQL - 5.5.20 : Database - testio_development
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`testio_development` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `testio_development`;

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text,
  `post_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

/*Data for the table `comments` */

insert  into `comments`(`id`,`text`,`post_id`,`created_at`,`updated_at`,`user_id`) values (79,'беда',7,'2012-02-26 15:15:04','2012-02-26 15:15:04',7),(80,'молодец',4,'2012-02-26 15:27:45','2012-02-26 15:27:45',7),(81,'+1',4,'2012-02-26 15:29:51','2012-02-26 15:29:51',7),(82,'третий',4,'2012-02-26 15:45:51','2012-02-26 15:45:51',9),(83,'первый',6,'2012-02-26 15:46:12','2012-02-26 15:46:12',9),(84,'+1',7,'2012-02-26 15:46:25','2012-02-26 15:46:25',9);

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `text` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `posts` */

insert  into `posts`(`id`,`title`,`description`,`text`,`created_at`,`updated_at`) values (4,'Дженнифер Лопес посетила карнавал в Рио','Знаменитая певица и актриса стала почетным гостем пивной компании, лицом которой она является на красочном празднике в Бразилии.','Знаменитая певица и актриса стала почетным гостем пивной компании, лицом которой она является на красочном празднике в Бразилии.\r\n\r\n\r\nДжей Ло наслаждалась карнавалом в Рио вместе с бойфрендом (фото AP)\r\n\r\nЛатиноамериканская красавица артистка Дженнифер Лопес стала почетной гостьей на знаменитом карнавале в Рио-де-Жанейро в Бразилии в минувшее воскресенье.\r\n\r\nНесмотря на то что звезда не принимала участия в соревнованиях самых лучших танцевальных школ самбы, Джей Ло все равно привлекла внимание публики одним своим появлением на VIP-трибуне, откуда она наблюдала за красочным действием вместе со своим бойфрендом Каспером Смартом.\r\n\r\n42-летняя актриса и певица была приглашена на карнавал в рамках рекламной акции бразильской пивной компании, лицом которой является.\r\n\r\nТакже на параде была замечена поп-дива Ферги, которая представляла марку известного шампуня.\r\n\r\nЗнаменитости ежегодно посещают карнавал в Рио. В предыдущие годы на празднике присутствовали Мадонна, Бейонсе, Джуд Лоу, Пэрис Хилтон и Памэла Андерсон.','2012-02-26 15:10:42','2012-02-26 15:10:42'),(5,'Лопес поссорилась с Энтони из-за нового любовника','Бывший супруг Джей Ло Марк Энтони отказался работать с ней над их совместным телешоу после того, как певица закрутила роман со своим танцовщиком.','Бывший супруг Джей Ло Марк Энтони отказался работать с ней над их совместным телешоу после того, как певица закрутила роман со своим танцовщиком.\r\n\r\n\r\nБывшие супруги на ножах\r\n\r\n42-летняя поп-дива Дженнифер Лопес разругалась со своим бывшим мужем Марком Энтони из-за нового возлюбленного.\r\n\r\nВместе экс-супруги занимаются съемками и продюсированием телешоу по поиску новых талантов в странах Латинской Америки.\r\n\r\nНо, с тех пор как красотка Джей Ло открыто объявила всему миру о своих отношениях с 24-летним танцовщиком Каспером Смартом, между Лопес и Энтони словно черная кошка пробежала.\r\n\r\nМарк остался недоволен тем, что бывшая супруга не расстается с молодым любовником ни на минуту и даже их общие дети, 3-летние близнецы Макс и Эмми, постоянно проводят с ним время.\r\n\r\n\r\nЛопес отдохнула на Гавайях с бойфрендом и детьми\r\n\r\nВыяснение отношений состоялось на прошлой неделе, когда Джей Ло была в Марокко.\r\n\r\n - Они долго говорили по телефону и в конце концов затронули щекотливую тему романа Лопес и Смарта, слово за слово - бывшие супруги окончательно разругались, так что Энтони заявил, что не собирается больше участвовать в их совместном проекте, - поделился источник, близкий к звездам.\r\n\r\n\r\nДжей Ло не скрывает своей страсти к Касперу Смарту\r\n\r\nПосле этого Марк Энтони позвонил третьему продюсеру шоу и объявил о своем уходе, мотивировав это просто фразой: \"Я не могу больше с ней работать\", имея в виду Джей Ло.\r\n\r\nПара Лопес - Энтони объявила о своем разводе в июле этого года, завершив тем самым свой семилетний брак.','2012-02-26 15:11:32','2012-02-26 15:11:32'),(6,'Дом дочери Брюса Уиллиса ограбили на $10 000','Дом Румер Уиллис подвергся нападению грабителей, которые вынесли предметов на сумму в $10 тысяч.','Дом Румер Уиллис подвергся нападению грабителей, которые вынесли предметов на сумму в $10 тысяч.\r\n\r\n\r\nДом дочери Брюса Уиллиса ограбили на $10 000 (фото tmz.com)\r\n\r\nДом Румер Уиллис, расположенный в районе Голливудских холмов, сейчас находится на стадии ремонта, поэтому основным объектом внимания преступников стали инструменты рабочих.\r\n\r\nПо заявлениям представителей полиции, сумма ущерба составила 10 тысяч долларов. Пока не ясно, пропало ли что-то из личных вещей Румер.\r\n\r\nРумер Гленн является дочерью Брюса Уиллиса от брака с Деми Мур. У девушки есть еще две сестры - Скаут Ляру и Талула Бэль.','2012-02-26 15:13:54','2012-02-26 15:13:54'),(7,'Джерард Батлер попал в клинику для наркозависимых','Звезда фильма «300 спартанцев», страдающий наркотической зависимостью, вынужден был экстренно обратиться в больницу.','Звезда фильма «300 спартанцев», страдающий наркотической зависимостью, вынужден был экстренно обратиться в больницу.\r\n\r\n\r\nДжерард Батлер (фото Reuters)\r\n\r\nЗвезда Голливуда актер Джерард Батлер попал в популярную среди знаменитостей клинику для наркозависимых в Калифорнии из-за своего пристрастия к сильнодействующим лекарственным препаратам.\r\n\r\n42-летний шотландец сам принял решение обратиться за профессиональной помощью, чтобы избавиться от пагубного воздействия наркотиков.\r\n\r\nПроблемы со здоровьем начались у Батлера после съемок в блокбастере «300 спартанцев», где мачо получил несколько травм и был вынужден долгое время принимать болеутоляющие средства.\r\n\r\n - Самое тяжелое после съемок - это то, что тебе приходится менять режим тренировок. Мне пришлось привыкать к постоянным нагрузкам, а затем я бросил заниматься и начал испытывать постоянную боль, - поделился Батлер.\r\n\r\nКроме того, в конце 2011 года актер едва не погиб во время съемок своего нового фильма «О людях и Мэвериксе». Батлера, игравшего серфенгиста, накрыло волной в одной из сцен, после чего он начал тонуть. После этого инцидента Джерард провел некоторое время на больничной койке.\r\n\r\nБлизкие Батлера также утверждают, что знаменитость страдает от кокаиновой зависимости.','2012-02-26 15:14:29','2012-02-26 15:14:29');

/*Table structure for table `schema_migrations` */

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `schema_migrations` */

insert  into `schema_migrations`(`version`) values ('20120218121149'),('20120218121216'),('20120218134708'),('20120218175403');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`nickname`,`email`,`password`,`is_admin`,`created_at`,`updated_at`) values (7,'englandpost','englandpost@gmail.com','1',1,'2012-02-18 15:12:48','2012-02-18 15:12:48'),(9,'user','user@gmail.com','1',0,'2012-02-19 10:14:30','2012-02-19 10:14:30');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
