-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 08 jan. 2020 à 12:28
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `formulaire`
--
CREATE DATABASE IF NOT EXISTS `database` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `database`;

-- --------------------------------------------------------

--
-- Structure de la table `classement`
--

DROP TABLE IF EXISTS `classement`;
CREATE TABLE IF NOT EXISTS `classement` (
  `Rang` int(255) NOT NULL,
  `Sportif` varchar(255) NOT NULL,
  `Pays` text NOT NULL,
  `Points` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `classement`
--

INSERT INTO `classement` (`Rang`, `Sportif`, `Pays`, `Points`) VALUES
(1, 'CHNXin Xu', '(CHN)', 16600),
(2, 'CHNZhendong Fan', '(CHN)', 16150),
(3, 'CHNLong Ma', '(CHN)', 15285),
(4, 'CHNGaoyuan Lin', '(CHN)', 14885),
(5, 'JPNTomokazu Harimoto', '(JPN)', 13890),
(6, 'BREHugo Calderano', '(BRE)', 13080),
(7, 'TAIYun-Ju Lin', '(TAI)', 12210),
(8, 'CHNJingkun Liang', '(CHN)', 11715),
(9, 'SUEMattias Falck', '(SUE)', 11490),
(10, 'ALLTimo Boll', '(ALL)', 11315),
(11, 'ALLDimitrij Ovtcharov', '(ALL)', 10390),
(12, 'JPNKoki Niwa', '(JPN)', 10200),
(13, 'CORWoojin Jang', '(COR)', 10080),
(14, 'JPNJun Mizutani', '(JPN)', 10065),
(15, 'ALLPatrick Franziska', '(ALL)', 9965),
(16, 'CHNChuqin Wang', '(CHN)', 9760),
(17, 'CORSang-su Lee', '(COR)', 9250),
(18, 'CORYoung-sik Jung', '(COR)', 9210),
(19, 'HKGChun Ting Wong', '(HKG)', 9205),
(20, 'NGRQuadri Aruna', '(NGR)', 8710),
(21, 'FRASimon Gauzy', '(FRA)', 8350),
(22, 'BLRVladimir Samsonov', '(BLR)', 7610),
(22, 'ANGLiam Pitchford', '(ANG)', 7610),
(24, 'SUEKristian Karlsson', '(SUE)', 7015),
(25, 'PORMarcos Freitas', '(POR)', 7010),
(26, 'E-UKanak Jha', '(E-U)', 6955),
(27, 'DANJonathan Groth', '(DAN)', 6900),
(28, 'EGYOmar Assar', '(EGY)', 6625),
(29, 'CHNZihao Zhao', '(CHN)', 6485),
(30, 'INDSathiyan Gnanasekaran', '(IND)', 6330),
(31, 'CORJonghoon Lim', '(COR)', 6255),
(32, 'AUTDaniel Habesohn', '(AUT)', 6220),
(33, 'CROTomislav Pucar', '(CRO)', 5980),
(34, 'INDSharath Kamal Achanta', '(IND)', 5910),
(35, 'TAIChih-Yuan Chuang', '(TAI)', 5765),
(36, 'AUTRobert Gardos', '(AUT)', 5685),
(37, 'ALLRuwen Filus', '(ALL)', 5655),
(38, 'FRAEmmanuel Lebesson', '(FRA)', 5580),
(39, 'SVKYang Wang', '(SVK)', 5450),
(40, 'CORJaehyun An', '(COR)', 5395),
(41, 'BREGustavo Tsuboi', '(BRE)', 5380),
(42, 'JPNMasataka Morizono', '(JPN)', 5195),
(43, 'SLODarko Jorgic', '(SLO)', 5115),
(44, 'JPNTakuya Jin', '(JPN)', 5055),
(45, 'RTCPavel Sirucek', '(RTC)', 4990),
(46, 'BELCédric Nuytinck', '(BEL)', 4950),
(46, 'GREPanagiotis Gionis', '(GRE)', 4950),
(48, 'ALLBenedikt Duda', '(ALL)', 4925),
(49, 'TAIChien-an Chen', '(TAI)', 4845),
(50, 'JPNKazuhiro Yoshimura', '(JPN)', 4830),
(51, 'SUEJon Persson', '(SUE)', 4820),
(52, 'CROAndrej Gacina', '(CRO)', 4795),
(53, 'JPNYukiya Uda', '(JPN)', 4740),
(54, 'JPNMaharu Yoshimura', '(JPN)', 4725),
(55, 'ROUOvidiu Ionescu', '(ROU)', 4680),
(56, 'PORTiago Apolonia', '(POR)', 4650),
(56, 'KAZKirill Gerassimenko', '(KAZ)', 4650),
(58, 'UKRLei Kou', '(UKR)', 4600),
(59, 'BREVitor Ishiy', '(BRE)', 4505),
(60, 'RUSKirill Skachkov', '(RUS)', 4495),
(61, 'SLOBojan Tokic', '(SLO)', 4490),
(62, 'IRANoshad Alamiyan', '(IRA)', 4480),
(63, 'PARMarcelo Aguirre', '(PAR)', 4470),
(64, 'RUSAlexander Shibaev', '(RUS)', 4455),
(65, 'SVKLubomir Pistej', '(SVK)', 4390),
(66, 'ANGPaul Drinkhall', '(ANG)', 4380),
(67, 'ARGHoracio Cifuentes', '(ARG)', 4375),
(68, 'BREThiago Monteiro', '(BRE)', 4360),
(69, 'HONBence Majoros', '(HON)', 4355),
(70, 'MEXMarcos Madrid', '(MEX)', 4195),
(71, 'POLJakub Dyjas', '(POL)', 4170),
(72, 'ESPAlvaro Robles', '(ESP)', 4135),
(73, 'EQUAlberto Mino', '(EQU)', 4120),
(74, 'SUEAnton Kallberg', '(SUE)', 4100),
(74, 'AUSHeming Hu', '(AUS)', 4100),
(76, 'ROUCristian Pletea', '(ROU)', 4010),
(77, 'ALLRicardo Walther', '(ALL)', 3995),
(78, 'AUTStefan Fegerl', '(AUT)', 3990),
(79, 'ALLDang Qiu', '(ALL)', 3975),
(80, 'PURBrian Afanador', '(PUR)', 3950),
(81, 'ANGSamuel Walker', '(ANG)', 3940),
(82, 'SENIbrahima Diaw', '(SEN)', 3935),
(83, 'POLMarek Badowski', '(POL)', 3925),
(84, 'BREEric Jouti', '(BRE)', 3905),
(85, 'INDHarmeet Desai', '(IND)', 3870),
(85, 'NGROlajide Omotayo', '(NGR)', 3870),
(87, 'PORJoao Monteiro', '(POR)', 3860),
(88, 'RTCLubomir Jancarik', '(RTC)', 3830),
(89, 'SUETruls Moregard', '(SUE)', 3810),
(90, 'JPNMizuki Oikawa', '(JPN)', 3805),
(91, 'CHNWen Sun', '(CHN)', 3790),
(92, 'CHNZiyang Yu', '(CHN)', 3750),
(93, 'CHNQihao Zhou', '(CHN)', 3735),
(94, 'JPNYuki Hirano', '(JPN)', 3695),
(95, 'HKGKwan Kit Ho', '(HKG)', 3680),
(96, 'ARGGaston Alto', '(ARG)', 3675),
(97, 'DANAnders Lind', '(DAN)', 3665),
(98, 'FRACan Akkuzu', '(FRA)', 3650),
(99, 'CROFrane Kojic', '(CRO)', 3630),
(100, 'HKGSiu Hang Lam', '(HKG)', 3605),
(101, 'EGYAhmed Ali Saleh', '(EGY)', 3600),
(102, 'JPNYuya Oshima', '(JPN)', 3580),
(103, 'ITANiagol Stoyanov', '(ITA)', 3480),
(104, 'SLODeni Kozul', '(SLO)', 3455),
(105, 'INDAmalraj Anthony Arputharaj', '(IND)', 3440),
(105, 'FRATristan Flore', '(FRA)', 3440),
(107, 'IRANima Alamian', '(IRA)', 3435),
(108, 'THASupanut Wisutmaythangkoon', '(THA)', 3430),
(109, 'BELFlorent Lambiet', '(BEL)', 3405),
(110, 'FINBenedek Olah', '(FIN)', 3390),
(111, 'TAICheng-Ting Liao', '(TAI)', 3370),
(112, 'ALLBastian Steger', '(ALL)', 3360),
(113, 'CHNYingbin Xu', '(CHN)', 3350),
(114, 'CORSeungmin Cho', '(COR)', 3310),
(115, 'BELRobin Devos', '(BEL)', 3265),
(115, 'CHNDingshuo Liu', '(CHN)', 3265),
(117, 'JPNKenta Matsudaira', '(JPN)', 3250),
(118, 'CHNPeifeng Zheng', '(CHN)', 3240),
(119, 'ROUHunor Szocs', '(ROU)', 3160),
(120, 'SRBAleksandar Karakasevic', '(SRB)', 3120),
(121, 'JPNYuta Tanaka', '(JPN)', 3105),
(122, 'PORJoao Geraldo', '(POR)', 3100),
(123, 'CORDaeseong Cho', '(COR)', 3085),
(124, 'UZBZokhid Kenjaev', '(UZB)', 3075),
(125, 'FRAAndrea Landrieu', '(FRA)', 3025),
(126, 'EGYKhalid Assar', '(EGY)', 3010),
(127, 'ITAMihai Bobocica', '(ITA)', 3000),
(127, 'HONAdam Szudi', '(HON)', 3000),
(129, 'ALLSteffen Mengel', '(ALL)', 2965),
(130, 'CNOJi Song An', '(CNO)', 2945),
(131, 'BELMartin Allegro', '(BEL)', 2905),
(132, 'BLRPavel Platonov', '(BLR)', 2890),
(133, 'TAIWang-Wei Peng', '(TAI)', 2885),
(134, 'CHNAn Yan', '(CHN)', 2880),
(135, 'CHNFei Xue', '(CHN)', 2860),
(136, 'CGOSaheed Idowu', '(CGO)', 2850),
(137, 'HONNandor Ecseki', '(HON)', 2790),
(138, 'ROURares Sipos', '(ROU)', 2750),
(139, 'JPNMasaki Yoshida', '(JPN)', 2715),
(140, 'ALGSami Kherouf', '(ALG)', 2705),
(141, 'CANJeremy Hazin', '(CAN)', 2680),
(142, 'PURDaniel Gonzalez', '(PUR)', 2665),
(143, 'NGRSegun Toriola', '(NGR)', 2660),
(143, 'BLRAliaksandr Khanin', '(BLR)', 2660),
(145, 'CORGanghyeon Park', '(COR)', 2655),
(146, 'UKRYevhen Pryshchepa', '(UKR)', 2650),
(147, 'AUTAndreas Levenko', '(AUT)', 2635),
(148, 'ECOGavin Rumgay', '(ECO)', 2630),
(149, 'NGRBode Abiodun', '(NGR)', 2620),
(149, 'CHIJuan Lamadrid', '(CHI)', 2620),
(151, 'EGYMohamed El-Beiali', '(EGY)', 2600),
(152, 'INDManav Vikash Thakkar', '(IND)', 2595),
(153, 'SRBZsolt Peto', '(SRB)', 2550),
(154, 'TOGMawussi Agbetoglo', '(TOG)', 2545),
(155, 'IRAAmir Hossein Hodaei', '(IRA)', 2540),
(156, 'UKRYaroslav Zhmudenko', '(UKR)', 2535),
(157, 'GREIoannis Sgouropoulos', '(GRE)', 2530),
(158, 'CORMinha Hwang', '(COR)', 2525),
(159, 'ESPCarlos Machado', '(ESP)', 2520),
(160, 'ANGTom Jarvis', '(ANG)', 2515),
(161, 'CHNTe Ma', '(CHN)', 2500),
(161, 'ASAAli Alkhadrawi', '(ASA)', 2500),
(163, 'RTCTomas Polansky', '(RTC)', 2485),
(164, 'ESPJesus Cantero', '(ESP)', 2475),
(165, 'CHIGustavo Gomez', '(CHI)', 2465),
(166, 'FRAAlexandre Robinot', '(FRA)', 2450),
(167, 'CHNHaidong Xu', '(CHN)', 2405),
(167, 'TURIbrahim Gunduz', '(TUR)', 2405),
(169, 'NZLDean Shu', '(NZL)', 2395),
(169, 'RUSVladimir Sidorenko', '(RUS)', 2395),
(171, 'TAITai-Wei Wang', '(TAI)', 2390),
(172, 'HONTamas Lakatos', '(HON)', 2385),
(172, 'CHNYu Zhou', '(CHN)', 2385),
(174, 'E-UNikhil Kumar', '(E-U)', 2380),
(175, 'SUILionel Weber', '(SUI)', 2365),
(176, 'RUSSadi Ismailov', '(RUS)', 2350),
(176, 'RUSVildan Gadiev', '(RUS)', 2350),
(178, 'DANYujia Zhai', '(DAN)', 2335),
(179, 'CROShihao Wei', '(CRO)', 2315),
(180, 'RTCTomas Konecny', '(RTC)', 2310),
(181, 'ITALeonardo Mutti', '(ITA)', 2305),
(182, 'P-BLaurens Tromer', '(P-B)', 2290),
(183, 'IRAAmin Ahmadian', '(IRA)', 2285),
(184, 'ALLKilian Ort', '(ALL)', 2280),
(185, 'P-BEwout Oostwouder', '(P-B)', 2275),
(185, 'FRAQuentin Robinot', '(FRA)', 2275),
(187, 'TAIHeng-Wei Yang', '(TAI)', 2240),
(188, 'HKGPak Nam Ng', '(HKG)', 2235),
(189, 'JPNAsuka Machi', '(JPN)', 2215),
(190, 'JPNShunsuke Togami', '(JPN)', 2180),
(191, 'E-UKai Zhang', '(E-U)', 2161),
(192, 'THAPadasak Tanviriyavechakul', '(THA)', 2160),
(192, 'PORDiogo Carvalho', '(POR)', 2160),
(194, 'JPNYuto Kizukuri', '(JPN)', 2065),
(195, 'RUSAlexey Liventsov', '(RUS)', 2060),
(196, 'TUNAdam Hmam', '(TUN)', 2040),
(197, 'FRAEnzo Angles', '(FRA)', 2015),
(198, 'TAIYi-Hsin Feng', '(TAI)', 2000),
(199, 'BELFlorian Cnudde', '(BEL)', 1995),
(200, 'FRAAbdel-Kader Salifou', '(FRA)', 1990),
(200, 'TURAbdullah Yigenler', '(TUR)', 1990),
(202, 'TAITzu-Hsiang Hung', '(TAI)', 1955),
(203, 'SINYew En Koen Pang', '(SIN)', 1950),
(203, 'SUEElias Ranefur', '(SUE)', 1950),
(205, 'SVKAlexander Valuch', '(SVK)', 1930),
(206, 'LUXEric Glod', '(LUX)', 1920),
(207, 'CHNChenhao Xu', '(CHN)', 1890),
(208, 'EGYYoussef Abdel-Aziz', '(EGY)', 1875),
(208, 'LUXLuka Mladenovic', '(LUX)', 1875),
(210, 'INDMudit Dani', '(IND)', 1865),
(211, 'HKGHon Ming Li', '(HKG)', 1860),
(212, 'ALLTobias Hippler', '(ALL)', 1850),
(212, 'CORMinhyeok Kim', '(COR)', 1850),
(214, 'HKGMan Ho Kwan', '(HKG)', 1835);

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

DROP TABLE IF EXISTS `membres`;
CREATE TABLE IF NOT EXISTS `membres` (
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Informations Des Membres';

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`Username`, `Password`, `email`) VALUES
('Adriraxor', 'test', 'figueres.adrien@gmail.com'),
('Adriraxor1', 'test', 'figueres.adrien@gmail.com'),
('Adriraxor2', 'test', 'toto@gmail.com'),
('Adriraxor1', 'test', 'figueres.adrien@gmail.com'),
('kiki', 'test', 'figueres.adrien@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `tournois`
--

DROP TABLE IF EXISTS `tournois`;
CREATE TABLE IF NOT EXISTS `tournois` (
  `NomTournois` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `CodePostal` int(255) NOT NULL,
  `Ville` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tournois`
--

INSERT INTO `tournois` (`NomTournois`, `Date`, `CodePostal`, `Ville`, `Type`) VALUES
('Tournoi regional de Montrond-les-Bains', '2020-01-04', 42210, 'MONTROND LES BAINS', 'Regional'),
('Tournoi National B OC Cesson Tennis de Table', '2020-01-04', 35510, 'CESSON SEVIGNE', 'National B'),
('Tournoi National B La Jeune Garde Tourcoing', '2020-01-04', 59200, 'TOURCOING', 'National B'),
('10eme Tournoi National Dieppe UC Tennis de Table', '2020-01-04', 76200, 'DIEPPE', 'National B'),
('Tournoi Regional Marly 2020', '2020-01-04', 78160, 'MARLY LE ROI', 'Regional'),
('11e tournoi national B de Tennis de table de Saint-Tropez', '2020-01-04', 83990, 'ST TROPEZ', 'National B'),
('Tournoi du Stade Poitevin Tennis de Table', '2020-01-04', 86000, 'POITIERS', 'Departemental'),
('15eme OPEN Valence', '2020-01-04', 26000, 'VALENCE', 'National B'),
('Tournoi Regional - La Ville aux Dames (37)', '2020-01-04', 37700, 'LA VILLE AUX DAMES', 'Regional'),
('Tournoi Chambery TT', '2020-01-05', 73000, 'CHAMBERY', 'National B'),
('TOURNOI REGIONAL SAINTE-PAZANNE', '2020-01-05', 44680, 'STE PAZANNE', 'Regional'),
('ASPTT REIMS TROPHEE FRANCOIS GRIEDER', '2020-01-05', 51100, 'REIMS', 'Regional'),
('tournois regional de Mulsanne', '2020-01-10', 72230, 'MULSANNE', 'Regional'),
('Open de Lille - 4eme edition', '2020-01-11', 59000, 'LILLE', 'International'),
('TOURNOI NATIONAL B DE L UMS TENNIS DE TABLE PONTAULT-COMBAULT', '2020-01-11', 77340, 'PONTAULT COMBAULT', 'National B'),
('TOURNOI NATIONAL PERNOEL 2020', '2020-01-12', 84210, 'PERNES LES FONTAINES', 'National B'),
('TOURNOI REGIONAL DU CTT DEOLS', '2020-01-12', 36130, 'DEOLS', 'Regional'),
('TOURNOI DEPARTEMENTAL SAINT GEORGES DES COTEAUX /CORME ROYAL', '2020-01-12', 17810, 'ST GEORGES DES COTEAUX', 'Departemental'),
('TOURNOI REGIONAL DU CJFTT', '2020-01-12', 45400, 'FLEURY LES AUBRAIS', 'Regional'),
('Tournoi National B PING PONG CLUB MARCKOIS', '2020-02-08', 62730, 'MARCK', 'National B'),
('Tournoi National de SQY PING', '2020-02-08', 78960, 'VOISINS LE BRETONNEUX', 'National B'),
('Tournoi Regional de Perigne', '2020-02-08', 79500, 'MELLE', 'Regional'),
('Tournoi d ORVAULT', '2020-02-09', 44700, 'ORVAULT', 'Regional'),
('Tournoi national B du Bouscat', '2020-02-15', 33110, 'LE BOUSCAT', 'National B'),
('8 eme Tournoi National des Boucles de Seine', '2020-02-15', 76320, 'ST PIERRE LES ELBEUF', 'National B'),
('tournoi national de Coulommiers edition 2020', '2020-02-15', 77120, 'COULOMMIERS', 'National B'),
('tournoi National du Fos tennis de table', '2020-02-15', 59650, 'VILLENEUVE D ASCQ', 'National B'),
('LIGNe ASTT (44) - Tournoi Regional', '2020-02-16', 44850, 'LIGNE', 'Regional'),
('TOURNOI DE QUINT FONSEGRIVES TENNIS DE TABLE', '2020-02-16', 31130, 'QUINT FONSEGRIVES', 'Regional'),
('TOURNOI U S MIOS', '2020-02-22', 33380, 'MIOS', 'National B'),
('Tournoi National B de Ponthierry', '2020-02-22', 77310, 'ST FARGEAU PONTHIERRY', 'National B'),
('GECK OPEN XIII 2020', '2020-02-22', 74930, 'REIGNIER', 'Regional'),
('Tournoi de Saint-Avertin', '2020-02-22', 37550, 'ST AVERTIN', 'National B'),
('30eme tournoi regional du TT.Saint Romain de Jalionas', '2020-02-23', 38460, 'ST ROMAIN DE JALIONAS', 'Regional'),
('39 eme TOURNOI NATIONAL MIRAMAS', '2020-02-29', 13140, 'MIRAMAS', 'National B'),
('AS GUEUX-TINQUEUX TT TOURNOI NATIONAL B', '2020-02-29', 51390, 'GUEUX', 'National B'),
('25eme Tournoi SURGERES ACP', '2020-03-01', 17700, 'SURGERES', 'Departemental'),
('Tournoi de l US Saintes TT', '2020-03-28', 17100, 'SAINTES', 'Departemental'),
('Tournoi US La Riche Tennis de Table', '2020-04-18', 37520, 'LA RICHE', 'Regional'),
('3 eme Tournoi Regional TTT Mauleon', '2020-04-24', 79700, 'MAULEON', 'Regional'),
('Tournoi du Tennis de Table la Motte-Servolex (TTLMS)', '2020-04-25', 73290, 'LA MOTTE SERVOLEX', 'Regional'),
('OPEN des Landes Veterans 2020', '2020-04-26', 40000, 'MONT DE MARSAN', 'Regional'),
('Tournoi departemental du club pongiste fourasin', '2020-05-01', 17450, 'FOURAS', 'Departemental'),
('Tournoi Departemental de Saintines', '2020-05-21', 60410, 'SAINTINES', 'Departemental'),
('64 EME TOURNOI REGIONAL DE LA JA VIOLAY TT', '2020-05-23', 42780, 'VIOLAY', 'Regional'),
('TOURNOI DEPARTEMENTAL NUEIL LES AUBIERS', '2020-05-29', 79250, 'NUEIL LES AUBIERS', 'Departemental'),
('Tournoi regional Ludovic Bayart TTPM', '2020-05-30', 37210, 'PARCAY MESLAY', 'Regional');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
