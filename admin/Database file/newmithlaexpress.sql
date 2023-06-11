-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2023 at 08:12 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newmithlaexpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(34, 'Crime', 1),
(31, 'Entertainment', 2),
(32, 'Political', 1),
(33, 'Health', 1),
(36, 'Business', 1),
(38, 'Sports', 1),
(39, 'World', 1),
(40, 'Technology', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(44, 'Thapa lauds PM Dahal and Nepal', 'Nepali Congress General Secretary Gagan Kumar Thapa said that the NC would remain committed to the eight-party alliance led by Prime Minister Pushpa Kamal Dahal. Addressing an orientation for lawmakers of the eight-party alliance today, Thapa said in a veiled reference to the CPN-UML that the NC would not be enticed by anybody. He said rumours were being spread that the NC would form a new government after presidential election scheduled for March 9.\"This time I was also involved in the formation of the new alliance. NC will remain committed to the terms of the alliance for five years. Nobody should try to entice or tease the NC,\" Thapa said adding that fulfilling commitments was also a matter of credibility of the NC and other parties.Thapa joined NC President Sher Bahadur Deuba in lauding the role of Prime Minister Pushpa Kamal Dahal and CPN (Unified Socialist) Chair Madhav Kumar Nepal for making the eight-party alliance possible. It was because of Dahal\'s firm decision to revive the old alliance that the eight-party alliance was formed. \"Had Dahal cared for the post of prime minister, he would not have formed this alliance. The CPN-MC would have the post of vice president and the UML could have done anything to let Dahal run the government for a full five-year term,\" Thapa said, \"Had Dahal not been courageous and revived the old alliance, the new alliance would not have been formed.Yesterday NC President and former prime minister Sher Bahadur Deuba had also praised Dahal and Nepal for their role in formation of the eight-party alliance.The NC General Secretary said although the PM faced the charge of changing his political stance very quickly, Dahal\'s decision to revive the alliance with the NC was a mature. All partners of the eight-party alliance should tell this to everybody from the top to the lower levels of the party structure.Thapa also said the CPN (US) Chair Nepal would have got the chance to become the president or he could have also been offered the UML chair, but it was because of his decision that the formation of the eight-party alliance was possible.He agreed that NC had made a mistake, but said that at the time the new alliance was formed, NC never thought of forming alliance with big parties and undermining the importance of fringe parties.Thapa said the UML was trying to mislead people by saying that some partners of the eight-party alliance, particularly the CPN (US) and Loktantrik Samajwadi Party-Nepal were positive about the UML candidate for President. \"Such false propaganda was not heard even during student union elections,\" he added.', '32', '05 Mar, 2023', 39, '1677980411-Gagan-Thapa1.jpg'),
(43, 'Russian and Ukrainian forces are fighting in the streets of Bakhmut - but Russia does not control th', 'Oleksandr Marchenko also told the BBC the remaining 4,000 civilians are living in shelters without access to gas, electricity or water.\r\n\r\nMr Marchenko said \"not a single building\" had remained untouched and that the city is \"almost destroyed\".\r\n\r\nBakhmut has seen months of fighting, as Russia tries to take charge.\r\n\r\n\"There is fighting near the city and there are also street fights,\" Mr Marchenko said.\r\n\r\nTaking the city would be a rare battlefield success in recent months for Russia. But despite that, the city\'s strategic value has been questioned.\r\n\r\nSome experts say any Russian victory could be pyrrhic - that is, not worth the cost.\r\n\r\nThousands of Russian troops have died trying to take Bakhmut, which had a pre-war population of around 75,000. Ukrainian commanders estimate that Russia has lost seven times as many soldiers as they have.\r\n\r\nOn Saturday, UK military intelligence said Russian advances in the northern suburbs had left the Ukraine-held sections vulnerable to Russian attacks on three sides.\r\n\r\nMr Marchenko accused the Russians of having \"no goal\" to save the city and that it wanted to commit \"genocide of the Ukrainian people\".\r\n\r\n\"Currently there is no communication in the city so the city is cut out, the bridges are destroyed and the tactics the Russians are using is the tactic of parched land,\" Mr Marchenko told the Today programme.\r\n\r\nThe fall of Bakhmut has long been predicted, but for more than six months it hasn\'t happened. So any reports of potential Ukrainian withdrawal should be treated with caution.\r\n\r\nIt is hard to know what is going on without independent sources. Both sides have a greater incentive to confuse their enemy than provide accurate information.\r\n\r\nBut it may be that Ukrainian commanders are beginning to calculate that the cost of defending Bakhmut - in terms of blood and treasure - is now too great, despite the grievous losses being inflicted on Russian troops.\r\n\r\nAnd if so, then they might want what Western analysts call \"a controlled fighting withdrawal\" to protect the remaining Ukrainian forces so they can be redeployed.\r\n\r\nBut any withdrawal may be hard fought and could take some time.\r\n\r\nEarlier this week, Ukraine\'s President Volodymyr Zelensky said that the situation in the area was becoming \"more and more difficult\" - although the Ukrainian military said it had repelled numerous attacks since Friday.\r\n\r\n\"I believe we shouldn\'t give any inch of our land to the enemy,\" Mr Marchenko said. \"We should protect our land, we should protect our people and we should protect the businesses that are on this land.\"\r\n\r\nThe city was \"almost destroyed\", with bridges ruined and communication cut off, Mr Marchenko added.\r\n\r\n\"They want to destroy Bakhmut, they want to destroy the city like they did with Mariupol and Popasna,\" he said, referring to two cities in the east of Ukraine now under Russian control.\r\n\r\nThe Russian military laid siege to the south-eastern port city of Mariupol at the outset of the invasion and took control after three months of artillery bombardment that killed thousands.', '34', '05 Mar, 2023', 39, '1677979910-_128850698_reutershospitalhi074458754.jpg'),
(45, 'Investigation committee to be formed to settle NKHP dispute', 'Prime Minister Pushpa Kamal Dahal has said a probe panel will be formed to resolve the issues facing Nyasim Khola Hydropower Project (NKHP). Stakeholders had laid concern over the vandalism, arson, and assault on employees working at the construction site of the 35 MW NKHP by a group of people on Monday, February 27, and urged authorities concerned to launch an investigation into the matter. Apprising Prime Minister Dahal of the incident during a meeting today, the Independent Power Producers\' Association of Nepal (IP- PAN) had urged the government to prevent such criminal activities from occurring at the project site, to make proper arrangements for security, and take strict action against the criminal group involved in such incidents.During the meeting, PM Dahal expressed sadness over the incident and pledged to form an investigation committee to resolve the issues at NKHP site.The hydropower project is being constructed by Sita Hydropower Pvt Ltd in Jugal Rural Municipality 3 of Sindupalchowk district since 2021 after receiving permission from the Department of Electricity Development on November 23, 2020, with the target of starting commercial production from June 2024.According to the company, over 50 people stormed the construction site after a 14-year-old child was electrocuted due to a short circuit in the distribution line at Gumba of Jugal Rural Municipality 3. Enraged by the tragic incident, the group stormed the construction site in a planned manner, vandalised, and attacked the employees.Due to the attack, the project\'s residential building, and powerhouse, among other areas, suffered heavy damages and seven employees, including an engineer, were injured.Issuing a notice, Sita Hydropower Pvt Ltd informed that the group set fire to the crusher and vandalised trucks as well as excavators. The damage from the attack is estimated to be around Rs 120 million.\"It will take at least one year to recover from the damages and resume the project, delaying the scheduled production date by another year. We believe that the energy sector, which is the backbone of the economy, will be discouraged by such criminal activities, which also give off the impression of bad investment climate in the country. Therefore, to prevent such criminal activities from happening at the project sites, we strongly request the government to make proper arrangements for security at the project site and to take strictest legal action against the criminal group involved. Expressing our condolences to the bereaved family, we also hope that the electricity authority will provide proper compensation to the victim\'s family and wish speedy recovery to all the employees who were injured in the attack.\" the statement reads.According to Rasham Syangbo, chairman of Jugal Rural Municipality, the work of line extension and development was being carried out in Gumba of Ward 3 by Nepal Electricity Authority (NEA) alongside the construction of NKHP by Sita Hydropower Company Pvt Ltd near the river.\"When the child died by electrocution, a group of agitated people stormed the construction site and unleashed havoc, although it has been understood that the electricity line belonged to the NEA and not the hydropower project,\" he told The Himalayan Times.Stating that the rural municipality will hold talks with NEA and the grieving parties as well as the concerned stakeholders to resolve the issue, Syangbo said that further discussions will be held to avoid such incidents in the future and to maintain the security of the investors.\"The rural municipality does not support vandalism and assault of the employees. The local authorities have been informed of the matter and things will move ahead accordingly. The agitated party should not have resorted to violence,\" he said.Meanwhile, the grieving family members of the deceased Norjin Wangmu Lama (14) argued that she was electrocuted by an electric pole while heavy equipment and the crusher used by the construction company were in operation.Lama was three metres away from the pole while working at a nearby field with two others. According to the family members, the electric poles near Gumba of Ward 3 would make buzzing noises and even let out smoke from time to time when heavy machinery was used by the company, and they had even notified the company about it. However, they claim that the company\'s negligence had led to the accident which claimed one life and injured two others on February 27. They have also accused Sitaram Timalsina, executive chairman of Sita Hydropower Company Pvt Ltd, of not being present at a meeting on March 1 when requested by the local authorities, but instead holding a press conference in Kathmandu.The party has also requested the government to sincerely look into the matter to avoid such accidents and loss of life in the future as well as to provide relief and compensation to the injured as well as the grieving family of the deceased.The NEA officials could not be contacted for comment despite repeated attempts.', '36', '05 Mar, 2023', 39, '1677980758-download.jpg'),
(46, 'Suman Kulung, Sunmaya Budha win Khijidemba Ultra Trail Race', 'Okhaldhunga Tourism Development Committee in association with Nepal Tourism Board and Khijidemba Rural Municipality successfully organised an ultra-marathon covering the distance of 42 kilometres on the lap of Pikey Peak in the Mt Everest region.According to Ngawa Ngima Sherpa, chairman of Okhaldhunga Tourism Development Committee, Suman Kulung Rai of Solukhumbu won the ultra trail race under male category, completing the trail race in 3 hours and 49 minutes. Similarly, in the women\'s category, Sunmaya Budha from Jumla bagged the first prize winning the race in 4 hours and 41 minutes. Tirtha Tamang from Bhojpur (3 hours, 50 minutes) and Arjun Kulung Rai of Solukhumbu (3 hours, 55 minutes) and Mohan Dev Joshi from Baitadi (4 hours and 8 minutes) stood second, third and fourth in male category respectively. Manju Rawat from Jumla stood second completing the race in 5 hours and 11 minutes while Priya Rai of Khotang and Nitu Tamang of Sindhupalchowk stood second and third in women\'s category making it in 5 hours, 11 minutes and 3 seconds and 5 hours and 19 minutes respectively. Among local racers from Okhaldhunga, KIrti Rai (4 hours, 18 minutes), Rabindra Tamang (4 hours 19 minutes and Devraj Sunuwa r and Prithilal Rai (4 hrs, 33 minutes each) bagged the first, second and third position under male category while female racers Padam Kumari Sunuwar (5 hrs, 33 minutes and 1 second), Hirumaya Bhujel ( 6 hours and 19 minutes) and Anita Sunuwar ( 6 hours and 29 minutes) bagged the first, second third prize respectively. \"The top three athletes in both men and women categories received Rs 70,000, Rs 55,000 and Rs 45,000 respectively,\" Sherpa shared. There were 58 athletes including one each from the KU and Kenya. The route of the race follows the beautiful pastures between Pikey Peak (4,200 m) and Demba (3,150 m) then runs down to Chuplung Banjhyang (2,600 m), with the finishing point in Khijipalathe (2,500 m).According to Gambu Sherpa, the ultra-marathon was organised in coordination with the Nepal Tourism Board to promote the adventure sports in the Pikey region. \"The marathon aims to promote adventure tourism along the Pikey region that adjoins Solukhumbu and Okhaldhunga districts,\" Sherpa said. The trail race is not just a running event, but it is truly a once in a lifetime experience where the OTDC will support the local community by organising various kinds of programmes such as a health camp, education, awareness programmes for the public, and home-stay programme, he shared.It was a pleasant race along the open narrow strip of pasture land sandwiched between a forest of rhododendrons and coniferous plants, participants said. Pikey region has great adventure tourism potential and numerous mountains including Everest, Kanchenjunga, Lhotse, Gaurishankar and Makalu can also be viewed from the Pikey peak, Sherpa said, adding that the marathon would be helpful to promote the lower belt of Mt Everest region nationally and internationally.', '38', '05 Mar, 2023', 39, '1677981057-download.jpg'),
(47, 'Indonesia fuel depot fire kills 18, over dozen missing', 'Indonesian rescuers and firefighters on Saturday searched for more than a dozen missing under the rubble of charred houses and buildings, after a large fire spread from a fuel storage depot in the capital and killed at least 18 people. The Plumpang fuel storage station, operated by state-run oil and gas company Pertamina, is near a densely populated area in the Tanah Merah neighborhood in North Jakarta. It supplies 25% of Indonesia\'s fuel needs. At least 260 firefighters and 52 fire engines extinguished the blaze just before midnight on Friday after it tore through the neighborhood for more than two hours, fire officials said.Footage showed hundreds of people running in panic as thick plumes of black smoke and orange flames filled the sky.A preliminary investigation showed the fire broke out when a pipeline ruptured during heavy rain, possibly triggered by a lightning strike, said Eko Kristiawan, Pertamina\'s area manager for the western part of Java.Residents living near the depot said they smelled a strong odor of gasoline, causing some people to vomit, after which thunder rumbled twice, followed by a huge explosion around 8 p.m.Sri Haryati, a mother of three, said the fire began to spread about 20 minutes later, causing panic.\"I was crying and immediately grabbed our valuable documents and ran with my husband and children,\" Haryati said, adding that she heard smaller blasts that echoed across the neighborhood as orange flames jumped from the depot.Rescuers were searching for 16 people who were reported missing or separated from their families amid the chaos. About 42 people were receiving treatment in five hospitals, some of them in critical condition.National Police chief Listyo Sigit Prabowo said more than 1,300 people were displaced and taking shelter in 10 government offices, a Red Cross command post and a sport stadium.He said investigators were still working to establish the cause of the fire and questioning dozens of witnesses.Pertamina\'s head Nicke Widyawati apologized and said the company would provide help to the community and cooperate in the investigation.\"We will carry out a thorough evaluation and reflection internally to prevent similar incidents from happening again,\" Widyawati said in a statement, adding that the company ensured the safe supply of fuel oil.On Saturday, grieving relatives gathered at a police hospital\'s morgue in eastern Jakarta to try to identify their loved ones. Officials said the victims were burned beyond recognition and could only be identified through DNA and dental records.In 2014, a fire at the same fuel depot engulfed at least 40 houses, but no casualties were reported.Indonesia\'s State Owned Enterprises Minister Erick Thohir told reporters that the government will remap safe zones for residential areas away from vital objects.He said the incident showed the Plumpang area is not safe for the community, and the government is planning to move the fuel storage depot to Tanjung Priok port in northern Jakarta.', '39', '05 Mar, 2023', 39, '1677981181-download.jpg'),
(48, 'Nepathya perfoming live in concert at Odeon Theatre in Hobart, Australia. Photo: Nepalaya Nepathya c', 'Nepal\'s famous folk-rock band, Nepathya, performed at the Odeon Theatre in Hobart of Tasmania to conclude Australia tour with a bang on Friday. With the rise in the number of Nepali students and Bhutani regugees resettlement, Nepali language is ranked second to English. Hobart is the gateway to Antartica and situated on the coastal area of Pacific ocean with less than 3 lakhs inhabitants. The band kicked-off the much awaited show with it\'s pioneer song \'Aagani vari heu nai jhare\' with a synchronised video and light at a sold-out century old auditorium.As the concert went on, the audience swayed and sang with Amrit Gurung, Nepathya vocalist and social activist.\"I\'m thrilled to know that Nepali language is the second most spoken language in the province,\" Amrit Gurung said urging the audience to preserve Nepali language in the upcoming generation as language is our identity.The band also entertained the crowd with its ever-green hit numbers including \'Lampate Surati,\' \'Chari maryo,\' \'Johmson Bazaar\' among others.The concert concluded with band performing \'Rato ra chandra Surya\'. the show which started at sharp 9:00 pm lasted for two hours.On the stage, Amrit was accompanied by Dhruba Lama on drums, Suraj Thapa on keyboards, Subin Shakya on bass, Niraj Gurung on guitars and Shanti Rayamajhi on madal.With this show, Nepathya\'s concert entourage ends its Australia tour and heads back home of Tuesday.', '31', '05 Mar, 2023', 39, '1677981339-download.jpg'),
(49, ' New update in Citizen app, added features like this', 'There is a new update in the Android version of the citizen app.\r\n\r\nUnder this, the National Library (Civil), improvements in the user interface and experience, as well as general problems have been solved, the app said.\r\nThe government is running a citizen app with the aim of providing all government service facilities through a single app.\r\n\r\nClick here for Android and click here for iOS to download the app.', '40', '05 Mar, 2023', 39, '1677982267-nagarik_app_ios_techpana-1_NQP0VQqvbt.jpg'),
(50, 'WHO plans to rename monkeypox over stigmatization concerns', 'The World Health Organization says it\'s holding an open forum to rename the disease monkeypox, after some critics raised concerns the name could be derogatory or have racist connotations. In a statement Friday, the U.N. health agency said it has also renamed two families, or clades, of the virus, using Roman numerals instead of geographic areas, to avoid stigmatization. The version of the disease formerly known as the Congo Basin will now be known as Clade one or I and the West Africa clade will be known as Clade two or II. WHO said the decision was made following a meeting of scientists this week and in line with current best practices for naming diseases, which aims to \"avoid causing offense to any cultural, social, national, regional, professional, or ethnic groups, and minimize any negative impact on trade, travel, tourism or animal welfare.\"Numerous other diseases, including Japanese encephalitis, Marburg virus, Spanish influenza and Middle Eastern Respiratory Syndrome have been named after the geographic areas where they first arose or were identified. WHO has not publicly suggested changing any of those names.Monkeypox was first named in 1958 when research monkeys in Denmark were observed to have a \"pox-like\" disease, although they are not thought to be the animal reservoir.WHO said it was also opening a way for the public to suggest new names for monkeypox, but did not say when any new name would be announced.To date, there have been more than 31,000 cases of monkeypox identified globally since May, with the majority of those beyond Africa. Monkeypox has been endemic in parts of central and west Africa for decades and was not known to trigger large outbreaks beyond the continent until May.WHO declared the global spread of monkeypox to be an international emergency in July and the U.S. declared its own epidemic to be a national emergency earlier this month.Outside of Africa, 98% of cases are in men who have sex with men. With only a limited global supply of vaccines, authorities are racing to stop monkeypox before it becomes entrenched as a new disease.', '33', '05 Mar, 2023', 39, '1677982678-download.jpg'),
(54, 'hi', 'test', '31', '12 May, 2023', 39, '1683889560-sign1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `websitename` varchar(60) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `footerdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `websitename`, `logo`, `footerdesc`) VALUES
(1, 'New Mithla Express', 'logo.png', '© Copyright 2020 News | Powered by <a href=\"www.rajnishyadav.com.np\">NewMithlaExpress</a>');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(39, 'Rajnish', 'Yadav', 'yrajnish', '202cb962ac59075b964b07152d234b70', 1),
(40, 'Satendra', 'Kumar Thakur', 'tsatendra ', '202cb962ac59075b964b07152d234b70', 1),
(41, 'Suraj ', 'Kumar Mandal ', 'suraj', '202cb962ac59075b964b07152d234b70', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
