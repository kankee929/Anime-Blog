-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2020 at 11:48 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ryuuk`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `mes` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `mes`, `date`, `email`) VALUES
(1, 'Blanke', '123456', 'I am Blanke. you cant see me.', '2020-09-22 23:15:42', 'blanke@yahoo.com'),
(2, 'Neem', '1234567891', 'neem', '2020-09-23 22:51:13', 'neem@tahoo.com'),
(3, 'bunkee', '852741963', 'I am Bunkee.', '2020-09-26 20:09:07', 'bunkee@yahoo.com'),
(4, 'bunkee', '852741963', 'I am bunkee.', '2020-09-26 20:12:04', 'bunkee@yahoo.com'),
(7, 'bunkee', '852741963', 'i am bunkee.', '2020-09-26 20:13:57', 'bunkee@yahoo.com'),
(8, 'bunkee', '852741963', 'i am bunkee.', '2020-09-26 20:15:23', 'bunkee@yahoo.com'),
(9, 'bunkee', '852741963', 'i am bunkee.', '2020-09-26 20:17:51', 'bunkee@yahoo.com'),
(10, 'bunkee', '852741963', 'i am bunkee.', '2020-09-26 20:22:07', 'bunkee@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Lets us know more about Ryuk..', 'About Ryuk', 'first-post', 'Ryuuk (Japanese: リューク, Hepburn: Ryūku) is a fictional character in the manga series Death Note, created by Tsugumi Ohba and Takeshi Obata. He is a bored Shinigami that drops a Death Note, a notebook that allows the user to kill anyone simply by knowing their name and face, into the human world in order to have relief from his boredom. It is picked up by Light Yagami, a bright high school student who uses it in an attempt to create and rule a utopia cleansed of evil, with him at the helm as a \"god\".\r\n\r\nIn the anime adaptation, Ryuk is voiced by Nakamura Shidō in Japanese and by Brian Drummond in the English version. Both actors reprise their roles for voicing the computer-generated version of the character in the live-action films, with Jun Fukushima voicing the CG version in the live-action television drama. In the musical, Ryuk was portrayed by Kōtarō Yoshida. In the American live-action film adaptation Jason Liles played the character in costume while Willem Dafoe provided the voice acting and facial motion capture.', 'ryuk1.jpg', '2020-09-28 23:20:03'),
(2, 'This is II post on this page.', 'About Death Note Series', 'second-post', 'Death Note (Japanese: デスノート, Hepburn: Desu Nōto) is a Japanese manga series written by Tsugumi Ohba and illustrated by Takeshi Obata. The story follows Light Yagami, a teen genius who stumbles across a mysterious otherworldly notebook: the \"Death Note\", which belonged to the Shinigami Ryuk and grants the user the supernatural ability to kill anyone whose name is written in its pages. The series centers around Light\'s subsequent attempts to use the Death Note to carry out a worldwide massacre of individuals whom he deems morally unworthy of life to change the world into a utopian society without crime, using the alias of a god-like vigilante named \"Kira\" and the subsequent efforts of an elite task-force of law enforcement officers, consisting of members of the Japanese police force, led by L, an enigmatic international detective whose past is shrouded in mystery, to apprehend him and end his reign of terror.\r\n\r\nDeath Note was first serialized in Shueisha\'s manga magazine Weekly Shōnen Jump from December 2003 to May 2006. The 108 chapters were collected and published into 12 tankōbon volumes between April 2004 and July 2006. An anime television adaptation aired in Japan from October 2006 to June 2007. Composed of 37 episodes, the anime was developed by Madhouse and directed by Tetsurō Araki. A light novel based on the series, written by Nisio Isin, was also released in 2006. Additionally, various video games have been published by Konami for the Nintendo DS. The series was adapted into three live action films released in Japan in June 2006, November 2006, and February 2008, and a television drama in 2015. A miniseries entitled Death Note: New Generation and a fourth film were released in 2016. An American film adaptation was released exclusively on Netflix in August 2017 and a sequel is reportedly in the works.\r\n\r\nDeath Note media is licensed and released in North America by Viz Media, with the exception of the video games and soundtracks. The episodes from the anime first appeared in North America as downloadable from IGN, before Viz Media licensed it and it aired on YTV\'s Bionix anime block in Canada and on Adult Swim in the United States with a DVD release following. The live-action films briefly played in certain North American theaters in 2008, before receiving home video releases. In 2015, the collected tankōbon volumes of the Death Note manga had sold over 30 million copies.', 'secondpost.jpg', '2020-09-27 17:56:08'),
(3, 'This is III Post.', 'About L.', 'third-post', 'L Lawliet (Japanese: エル・ローライト, Hepburn: Eru Rōraito),[1] known mononymously as L, is a fictional character in the manga series Death Note, created by Tsugumi Ohba and Takeshi Obata. He is an enigmatic, mysterious and highly-esteemed international consulting detective, who communicates with law enforcement agencies only through his equally inexplicable handler/assistant, Watari, who serves as his official liaison with the authorities and whose true identity and background is kept a secret. Though his past is shrouded in mystery, he has gained an arguable reputation as the world\'s greatest detective/criminal profiler.\r\n\r\nThroughout the series, he observes and spies on the activities of the series\' main character and protagonist, Light Yagami, a high school genius. L attempts to expose Light as the infamous serial killer \"Kira\", who is responsible for massacring high-profile criminals worldwide through apparently supernatural means. As the series progresses, the psychological mind-game of cat and mouse between L and Light intensifies, and each becomes bent on uncovering the other\'s true identity, through a series of intricate ploys and schemes, before their cover is blown. Throughout the series, he serves as an ideological and visual foil to Light.\r\n\r\nIn the anime adaptation, he is voiced by Kappei Yamaguchi in Japanese,[2] and by Alessandro Juliani in English.[3] He is portrayed by Kenichi Matsuyama in the live-action film series, by Kento Yamazaki in the TV drama, and by Lakeith Stanfield in the American film.', 'thirdpost.jpg', '2020-09-27 18:15:47'),
(4, 'This is IV Post.', 'About Light Yagami.', 'fourth-post', 'Light Yagami (Japanese: 夜神月ライト, Hepburn: Yagami Raito) is the main protagonist of the manga series Death Note, created by Tsugumi Ohba and Takeshi Obata. He is portrayed as a brilliant but bored genius who finds the Death Note, an otherworldly supernatural notebook that allows the user to kill anyone by knowing their name and face, after it is dropped by the Shinigami Ryuk. Frustrated by the status quo of a world he deems to be rotten, Light uses the Death Note to kill those whom he deems morally unworthy of life, masterminding a worldwide massacre as the vigilante Kira (キラ). Over the course of his efforts to become the god of a world free of crime, Light is hunted down by a special task-force, headed by an enigmatic consulting detective known as L.\r\n\r\nIn the anime adaptation, he is voiced by Mamoru Miyano in Japanese and by Brad Swaile in the English version. In the live-action film series, he is portrayed by Tatsuya Fujiwara with Swaile reprising his role as his English dub voice; he is portrayed by both Kenji Urai and Hayato Kakizawa in the musical; in the TV drama, he is portrayed by Masataka Kubota; his counterparts in the American film are portrayed by Nat Wolff and Margaret Qualley.', 'fourthpost.jpg', '2020-09-27 18:18:01'),
(5, 'This is V post.', 'About Misa Amane.', 'fifth-post', 'Misa Amane (弥 海砂, Amane Misa) is an up-and-coming model and supporter of Kira who eventually becomes the Second Kira. After gaining a Death Note, she seeks out Kira in order to thank him for killing the man who murdered her family and to offer him her help. Having made the trade for the Shinigami Eyes, Misa learns that the identity of Kira is Light Yagami. After a meeting with Light, she decides to dedicate her life to helping Light however she can, and becomes determined to use her eyes to uncover L\'s real name.\r\n\r\nMisa is very outgoing and is shown to be quite popular due to her career. She attracts a large crowd while visiting Light near his school.[5] She is hyperactive, impulsive, and otherwise childlike, evidenced by her tendency to speak in the third person. Despite being considered idiotic by many, Misa is shown to have moments of intelligence, such as when she successfully tricks Kyosuke Higuchi into revealing himself to be the Yotsuba Kira.[6] However, even though she is more powerful than Light as Kira, she is very careless in her acts as the Second Kira, which leads to her being arrested and put in confinement on suspicion that she is is the second Kira. As she likely didn\'t know the Death Note could manipulate victims, and thus mailed the tapes herself; failed to ensure there was no DNA on the envelopes she sent the tapes in; completely ignored Light\'s order to stay away (as he was already suspected of being Kira) as he predicted L was having him followed.\r\n\r\nAlthough she is generally nice to those she meets, she can also be quite cruel: she tells Light that she would kill any other girls he dates,[7] despite said girls being part of his plan to appear as a normal young man to the investigators and deflect suspicion from himself and Misa.\r\n\r\nDespite her typically cheerful personality, Misa has been mentally afflicted by seeing her parents murdered right before her eyes. It is unclear how much the trauma has affected Misa psychologically, but in the films, Rem indicates that Misa went through a deep depression immediately after she discovered the murderer was acquitted of the crime. After the murderer is later killed by Kira, Misa is incredibly grateful, and her intense appreciation and hero-worship initially fuels her actions as the Second Kira. After she becomes emotionally attached to Light, her behavior is strongly motivated by love.\r\n\r\nLight Yagami is an important figure in Misa\'s life, and she frequently comments on him being so, often declaring her love for him despite little reciprocation. She is faithful to Light to the point of refusing to perform a kiss with fellow actor Hideki Ryuga while making a film out of her fidelity. After losing her memories of the Death Note for the first time, she even decides to help catch Kira, whom she views as the avenger of her family, for Light (who has joined the Task Force and also has no memories of the Death Note).\r\n\r\nHistory\r\nA year before the start of the series, Misa witnessed the murder of her family during an attempted home robbery. The trial against her parents\' murderer continued over a long stretch of time, during which opinions that he was falsely accused began to surface. After he was killed by Kira, Misa felt justice had been served, prompting her to become a loyal Kira supporter.\r\n\r\nOne night, shortly after beginning her modeling career, Misa met an obsessed, knife-wielding stalker. He confessed his feelings to Misa, but upon her rejection, he attacked and attempted to kill her. A Shinigami named Gelus, who had been watching Misa from the Shinigami Realm and had fallen in love with her, wrote down the name of her stalker and killed him, ultimately saving Misa\'s life.\r\n\r\nSince Shinigami are meant to shorten human lifespans and not extend them, Gelus himself died, turning to dust and leaving behind only his Death Note. Since Misa was meant to die, but was saved by Gelus, the years of Gelus\'s lifespan were given to Misa\'s, extending her lifespan greatly past the average lifespan of a human being. Another Shinigami, Rem, witnessed the sacrifice and decided that Gelus\' notebook should belong to Misa in accordance with Gelus\' wishes. After giving Misa the Death Note, Rem was obligated to stay with her (as Ryuk is with Light), and Rem eventually develops feelings for her over time as Gelus did. In the hope of meeting and thanking Kira for avenging her parents, Misa made the eye deal with Rem, making her actually more powerful than Light was as Kira, and making it much easier to kill people with the Death Note.', 'fifthpost.jpg', '2020-09-27 18:21:07'),
(6, 'This is VI post.', 'About takada.', 'sixth-post', 'Kiyomi is an intelligent and graceful young woman. As a student at To-Oh University, she gains a reputation as \"Miss To-Oh\" (\"Miss Todai\" in the Japanese version), and \"Refined Takada\" (\"Seiso Takada\" in the Japanese version, which means something similar to \"plays hard to get\"). She is also seen as a very prideful person who loves to be the center of most or all attention.\r\n\r\nBelieving in Kira\'s ideals, Kiyomi becomes Kira\'s spokeswoman for News 6 on the station NHN. Her beauty and poise make her very popular with viewers, who treat her as if she were a goddess. Kiyomi, rather proud of herself, believes that Misa Amane is undeserving of Light, which leads to a sort of rivalry between the two women.', 'sixthpost.jpg', '2020-09-27 18:31:26'),
(9, 'new post', 'new', 'new-post', 'this is something new.', 'seventh.jpg', '2020-09-30 23:45:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
