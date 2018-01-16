-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2018 at 06:13 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `x_news`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `autor` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `autor`, `created_at`) VALUES
(1, 'Addiko Blic gotovinski krediti za ispunjenje va?ih ?elja', 'Sve ?elje koje ste zamislili u Novoj godini mo?ete ispuniti uz Addiko Blic gotovinski kredit - nije va?no ?elite li renovirati stan, kupiti novi namje?taj ili se provozati u novom automobilu. Pod sloganom \"Kredita za ispunjenje svih ?elja nema ni u Aladinovoj lampi, ali ih ima kod nas\", Addiko banka je pokrenula promotivnu kampanju u okviru koje nudi gotovinske kredite u maksimalnom iznosu do 50.000 KM, na period do 10 godina.', 1, '2018-01-15 00:00:00'),
(2, 'Jeff Bezos je postao najbogatiji ?ovjek u historiji ?ovje?anstva', 'Osniva? Amazona Jeff Bezos zvani?no je postao najbogatiji ?ovjek u historiji ?ovje?anstva s imovinom koja je prema?ila 105 milijardi dolara na Bloomergovoj listi najbogatijih ljudi.\r\nPrije Bezosa, na vrhu liste najbogatijih bio je osniva? kompanije Microsoft, Bill Gates. Me?utim, Bezos je prvi ?ovjek ?ija je imovina prema?ila cifru od 100 milijardi dolara. \r\n\r\nBezosovo bogatstvo od po?etka ove sedmice, prema Bloombergovoj listi, iznosi 105,1 milijardu dolara, a prema Forbesovoj listi 104,4 milijarde dolara. \r\n\r\nVe?inu bogatstva Bezos je stekao zahvaljuju?i 78,9 miliona akcija Amazona koje posjeduje. Akcije Amazona porasle su za 1,4 posto u ponedjeljak, pove?av?i Bezosovo bogatstvo za 1,4 milijardu dolara. Nakon rasta od 56 posto u pro?loj godini, akcije Amazona ponovo su porasle za sedam posto po?etkom ove godine.', 2, '2018-01-15 00:00:00'),
(3, 'O kriptovalutama se potrebno detaljno informirati, ulo?eni novac nije osiguran', 'Nov?ana sredstva ulo?ena u kriptovalute nisu za?ti?ena sistemom osiguranja depozita, te stoga je prije same odluke o njihovom kori?tenju potrebno detaljno se informirati o mogu?im rizicima kupovanja, trgovanja i kori?tenja takvih valuta, iz pouzdanih i provjerenih izvora, re?eno je Feni iz Centralne banke BiH.\r\nIz te institucije navode da je na platformi za trgovanje valutama mogu?e izgubiti \"svoj novac\" jer te platforme ?esto nisu regulirane. Ako platforma za trgovanje valutama izgubi novac ili propadne, ne postoji posebna pravna za?tita. Novac iz \"digitalnog nov?anika\" mo?e biti ukraden. Zna?i nakon kupovine virtuelne valute ona je pohranjena u \"digitalni nov?anik\" - na kompjuter, prenosni kompjuter ili pametni telefon, koji nisu za?ti?eni od hakera. ', 3, '2018-01-15 00:00:00'),
(4, 'D?umhur: Pobjeda protiv Lorenzija je bila te?ka, ali va?na i zaslu?ena', 'Bh. teniser Damir D?umhur je jutros nakon velikog preokreta u 1. kolu Australian Opena uspio pobijediti Talijana Poula Lorenzija u pet setova i pro?i dalje. Nakon me?a je bio veoma zadovoljan, posebno jer se tek oporavio od povrede.\r\n\"Ovo je zaista te?ka, ali i veoma va?na pobjeda. Nekoliko dana prije me?a nisam imamo treninge, tr?anje ni igru, sve je bilo na tome da pro?e povreda. Noga je izdr?ala skoro ?etiri sata, zalije?ili smo povredu, ali nisam imao dovoljno treninga. U?ao sam u me? s mnogo nervoze i nesigurnosti, nedostajalo je samopouzdanja. Uslovi su bili te?ki, puhao je vjetar, a Lorenzi je veliki borac. Bilo je te?ko, nisam uspio osjetiti udarce kako treba, a ve? sam gubio 0:2. Ipak, bez obzira na sve, borio sam se i napravio brak u tre?em setu. Tada sam na?ao svoju igru, odigrao ?etvrti i peti set te sam zaslu?io ovu pobjedu nakon velikog preokreta\", izjavio je D?umhur.\r\n', 1, '2018-01-15 00:00:00'),
(5, 'Uskoro prvi bh. profesionalni nogometni klub u Americi', 'Od naredne sezone FC Kraji?nik iz Utice SAD po?et ?e se takmi?iti u ameri?koj profesionalnoj nogometnoj ligi.\r\nNaime, rukovodstvo kluba se odlu?ilo na korak da klub iz amaterskog ranga prijavi u profesionalnu ligu United Premier Soccer League (UPSL), koja je ?etvrta u rangu ameri?kog sistema takmi?enja.\r\n\r\nGeneralni menad?er Rifet Begi? izjavio je da je klub u dosada?njem takmi?enju osvojio sve ?to se moglo osvojiti i da je ovaj korak logi?an slijed razvoja.\r\n\r\n\"Ideja je bila moja, podr?alo ju je rukovodstvo na ?elu s mladim i agilnim predsjednikom kluba Anelom Pajazetovi?em. Trenutno smo u fazi formiranja stru?nog ?taba na?ega kluba i samog igra?kog kadra koji ?e zastupati na? tim 2019. godine. Ideja je da u FC Kraji?niku okupimo najbolje nogometa?e bh. korijena i da krenemo ka na?em kona?nom cilju, Ameri?koj prvoj ligi\", dodao je Begi?.', 3, '2018-01-15 00:00:00'),
(6, 'Mercedes-Benz zvanično predstavio novu G-Klasu', 'Kompanija Mercedes-Benz zvanično je predstavila svoju novu, du?u i ?iru G-Klasu.\r\nNakon brojnih teasera i \"curenja\" fotografija, Mercedes je kona?no otkrio izgled i detalje svoje nove G-Klase. Njema?ka kompanija tvrdi da je najnovija verzija legendarnog SUV-a udobnija, prostranija i sposobnija na cesti i izvan nje. \r\n\r\nOno ?to je vidljivo na prvi pogled jeste da Mercedesovi dizajneri nisu znatno promijenili izgled najdu?e prisutnog modela. G-Klasa poznata i kao G-Wagen, u prodaji je gotovo u istoj formi jo? od 1979. godine, a pro?le godine je zabilje?en rekordan broj registracija. Najprodavanija je verzija AMG G 63.\r\n\r\nNajnoviji model je debitovao na Sajmu automobila u Detroitu, a zadr?ao je ve?inu svojih klju?nih karakteristika koje uklju?uju ru?ke na vratima, vanjske ?arke vrata i rezervni to?ak postavljen na stra?nja vrata.', 2, '2018-01-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `passwod` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `coments` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
