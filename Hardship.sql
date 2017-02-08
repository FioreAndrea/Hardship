-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Creato il: Feb 07, 2017 alle 16:14
-- Versione del server: 10.1.13-MariaDB
-- Versione PHP: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE DATABASE HardShip;
Use HardShip;

--
-- Database: `Hardship`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `album`
--

CREATE TABLE `album` (
  `ID` int(11) NOT NULL,
  `Genere` varchar(30) CHARACTER SET utf8 NOT NULL,
  `Titolo` varchar(30) NOT NULL,
  `Copertina` varchar(244) NOT NULL,
  `Artista` varchar(30) NOT NULL,
  `Released` varchar(64) DEFAULT NULL,
  `Dettaglio` varchar(245) NOT NULL,
  `Etichetta` varchar(244) NOT NULL,
  `Brani` int(11) NOT NULL,
  `Embed` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `album`
--

INSERT INTO `album` (`ID`, `Genere`, `Titolo`, `Copertina`, `Artista`, `Released`, `Dettaglio`, `Etichetta`, `Brani`, `Embed`) VALUES
(1, 'Screamo', 'La Fine Non E'' La Fine', 'img/La_Fine_Non.jpg', 'La Quiete', NULL, '', '', 0, ''),
(2, 'Screamo', 'Le Voyageur Imprudent', 'img/Le_Voyageur.jpg', 'Shizune', NULL, '', '', 0, ''),
(3, 'Emo', 'riviera', 'img/riviera.jpg', 'Riviera', NULL, '', '', 0, ''),
(9, 'Acoustic Folk', 'Mornin'' Hollows', 'img/Hollows.jpg', 'Homelette', 'October 23, 2015', '', 'More Letters', 5, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `amministratore`
--

CREATE TABLE `amministratore` (
  `Username` varchar(254) NOT NULL,
  `Password` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `amministratore`
--

INSERT INTO `amministratore` (`Username`, `Password`) VALUES
('root', 'root');

-- --------------------------------------------------------

--
-- Struttura della tabella `articolo`
--

CREATE TABLE `articolo` (
  `Codice` int(11) NOT NULL,
  `Quantità` int(11) NOT NULL,
  `Prezzo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `articolo`
--

INSERT INTO `articolo` (`Codice`, `Quantità`, `Prezzo`) VALUES
(101, 1, 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `artista`
--

CREATE TABLE `artista` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `artista`
--

INSERT INTO `artista` (`ID`, `Nome`) VALUES
(4, 'Homelette'),
(1, 'La Quiete'),
(3, 'Riviera'),
(2, 'Shizune');

-- --------------------------------------------------------

--
-- Struttura della tabella `brani`
--

CREATE TABLE `brani` (
  `ID` int(11) NOT NULL,
  `Titolo` varchar(64) NOT NULL,
  `Autore` varchar(64) NOT NULL,
  `Anno` varchar(64) NOT NULL,
  `Durata` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `brani`
--

INSERT INTO `brani` (`ID`, `Titolo`, `Autore`, `Anno`, `Durata`) VALUES
(1, 'Raid Aereo Sul Paese Delle Farfalle', 'La Quiete', '2004-04-03', '96'),
(2, 'Metempsicosi Del Fine Ultimo: Nevrastenica Oscillazione', 'La Quiete', '2004-04-03', '180'),
(3, 'Notte Dei Cristalli A Rue Des Trois-Frères', 'La Quiete', '2004-04-03', '121'),
(4, 'Ciò Che Non Siamo, Ciò Che Non Vogliamo', 'La Quiete', '2004-04-03', '266'),
(5, 'Il Destino Di Un Ombrello', 'La Quiete', '2004-04-03', '91'),
(6, 'Super Omega', 'La Quiete', '2004-04-03', '141'),
(7, 'Merce Cunningham', 'La Quiete', '2004-04-03', '59'),
(8, 'Uncaged', 'La Quiete', '2004-04-03', '88'),
(9, 'La Fine Non è La Fine', 'La Quiete', '2004-04-03', '267'),
(11, 'Aestheticism', 'Shizune', '2015-03-02', '133'),
(12, 'Notes of decay', 'Shizune', '2015-03-02', '103'),
(13, 'Un telefono che non squilla', 'Shizune', '2015-03-02', '143'),
(14, 'Sputnik! nostalgia', 'Shizune', '2015-03-02', '141'),
(15, 'Vesper', 'Shizune', '2015-03-02', '182'),
(16, 'Immortel et Impérissable', 'Shizune', '2015-03-02', '104'),
(17, 'Senza luce', 'Shizune', '2015-03-02', '85'),
(18, 'Orienteering in Aokigahara????', 'Shizune', '2015-03-02', '76'),
(19, 'Difficile da capire, impossibile da spiegare', 'Shizune', '2015-03-02', '107'),
(20, 'Instructions for inertia ', 'Shizune', '2015-03-02', '196'),
(21, 'aspetto', 'Riviera', '2014-10-20', '133'),
(22, 'a.n.c.o.r.a.', 'Riviera', '2014-10-20', '103'),
(23, 'camminare sui muri', 'Riviera', '2014-10-20', '123'),
(24, 'piscina', 'Riviera', '2014-10-20', '293'),
(25, 'tuffo bomba', 'Riviera', '2014-10-20', '97'),
(26, 'calanchi', 'Riviera', '2014-10-20', '209'),
(27, 'pioggia di forchette', 'Riviera', '2014-10-20', '123'),
(28, 'risata', 'Riviera', '2014-10-20', '157'),
(29, 'adriano', 'Riviera', '2014-10-20', '139'),
(30, 'attrezzi', 'Riviera', '2014-10-20', '190'),
(31, 'cosa rimane', 'Riviera', '2014-10-20', '257'),
(32, 'Ice, Cold, Green Tea', 'Homelette', 'October 23, 2015', '04:29'),
(33, 'Monroe', 'Homelette', 'October 23, 2015', '02:58'),
(34, 'Grey Days', 'Homelette', 'October 23, 2015', '04:15'),
(35, 'Snowball', 'Homelette', 'October 23, 2015', '03:12'),
(36, 'Anita', 'Homelette', 'October 23, 2015', '03:15');

-- --------------------------------------------------------

--
-- Struttura della tabella `cd`
--

CREATE TABLE `cd` (
  `ID` int(11) NOT NULL,
  `Prezzo` int(11) NOT NULL,
  `Copie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `cd`
--

INSERT INTO `cd` (`ID`, `Prezzo`, `Copie`) VALUES
(1, 10, 0),
(4, 15, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `cliente`
--

CREATE TABLE `cliente` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(64) NOT NULL,
  `Cognome` varchar(64) NOT NULL,
  `DataNascita` varchar(64) NOT NULL,
  `Username` varchar(64) NOT NULL,
  `Password` varchar(64) NOT NULL,
  `CodiceFiscale` varchar(64) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `cliente`
--

INSERT INTO `cliente` (`ID`, `Nome`, `Cognome`, `DataNascita`, `Username`, `Password`, `CodiceFiscale`, `Email`) VALUES
(1, 'Andrea', 'Fiore', '1995-10-26', 'Nuvola', 'andrea7226', 'FRINDR95R26B963Q ', ''),
(2, 'Alfonso', 'Russo', '2016-05-04', 'alf9ns9', 'Alfonso95', 'RSSLNS95E04F138C', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `composizione`
--

CREATE TABLE `composizione` (
  `ID_Fattura` int(11) NOT NULL,
  `ID_Articolo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `creazione`
--

CREATE TABLE `creazione` (
  `ID_Brano` int(5) NOT NULL,
  `ID_Artista` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `creazione`
--

INSERT INTO `creazione` (`ID_Brano`, `ID_Artista`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `dettaglio`
--

CREATE TABLE `dettaglio` (
  `ID_Articolo` int(11) NOT NULL,
  `ID_Album` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dettaglio`
--

INSERT INTO `dettaglio` (`ID_Articolo`, `ID_Album`) VALUES
(101, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `digitale`
--

CREATE TABLE `digitale` (
  `ID` int(11) NOT NULL,
  `Prezzo` int(11) NOT NULL,
  `Copie` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `digitale`
--

INSERT INTO `digitale` (`ID`, `Prezzo`, `Copie`) VALUES
(1, 8, 0),
(4, 5, 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `etichetta`
--

CREATE TABLE `etichetta` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(64) NOT NULL,
  `Feed` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `etichetta`
--

INSERT INTO `etichetta` (`ID`, `Nome`, `Feed`) VALUES
(1, 'Hate Studio', 0),
(11, 'More Letters', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `f1`
--

CREATE TABLE `f1` (
  `ID_Digitale` int(11) NOT NULL,
  `ID_Album` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `f1`
--

INSERT INTO `f1` (`ID_Digitale`, `ID_Album`) VALUES
(1, 1),
(3, 8),
(4, 9);

-- --------------------------------------------------------

--
-- Struttura della tabella `f2`
--

CREATE TABLE `f2` (
  `ID_Vinile` int(11) NOT NULL,
  `ID_Album` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `f2`
--

INSERT INTO `f2` (`ID_Vinile`, `ID_Album`) VALUES
(2, 8),
(3, 9);

-- --------------------------------------------------------

--
-- Struttura della tabella `f3`
--

CREATE TABLE `f3` (
  `ID_CD` int(11) NOT NULL,
  `ID_Album` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `f3`
--

INSERT INTO `f3` (`ID_CD`, `ID_Album`) VALUES
(1, 3),
(3, 8),
(4, 9);

-- --------------------------------------------------------

--
-- Struttura della tabella `fattura`
--

CREATE TABLE `fattura` (
  `Codice` int(11) NOT NULL,
  `InfoP` text NOT NULL,
  `Indirizzo` varchar(30) NOT NULL,
  `DataAcquisto` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `fattura`
--

INSERT INTO `fattura` (`Codice`, `InfoP`, `Indirizzo`, `DataAcquisto`) VALUES
(1001, 'Pagamento effettuato con carta di credito Visa.', 'Via Dante Alighieri, 9', '2016-05-06');

-- --------------------------------------------------------

--
-- Struttura della tabella `fatturazione`
--

CREATE TABLE `fatturazione` (
  `ID_Cliente` int(11) NOT NULL,
  `ID_Fattura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `fatturazione`
--

INSERT INTO `fatturazione` (`ID_Cliente`, `ID_Fattura`) VALUES
(1, 1001);

-- --------------------------------------------------------

--
-- Struttura della tabella `feedback`
--

CREATE TABLE `feedback` (
  `ID` int(11) NOT NULL,
  `Utente` varchar(64) NOT NULL,
  `IdAlbum` int(11) NOT NULL,
  `Test` text NOT NULL,
  `Data` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `feedback`
--

INSERT INTO `feedback` (`ID`, `Utente`, `IdAlbum`, `Test`, `Data`) VALUES
(1, 'Andrea', 9, 'POTATO', 'ciao');

-- --------------------------------------------------------

--
-- Struttura della tabella `lista`
--

CREATE TABLE `lista` (
  `ID_Brano` int(11) NOT NULL,
  `ID_Album` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `lista`
--

INSERT INTO `lista` (`ID_Brano`, `ID_Album`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(8, 32),
(8, 33),
(8, 34),
(8, 35),
(8, 36),
(9, 1),
(9, 37),
(9, 38),
(9, 39),
(9, 40),
(9, 41),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `news`
--

CREATE TABLE `news` (
  `ID` int(11) NOT NULL,
  `Contenuto` text NOT NULL,
  `Data` varchar(64) NOT NULL,
  `Autore` varchar(15) NOT NULL,
  `Titolo` varchar(255) NOT NULL,
  `Copertina` text NOT NULL,
  `Categoria` varchar(245) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `news`
--

INSERT INTO `news` (`ID`, `Contenuto`, `Data`, `Autore`, `Titolo`, `Copertina`, `Categoria`) VALUES
(201, 'Sabato 21 gennaio allo Spazio Tondelli un doppio concerto allâ??insegna dellâ??indie folk e della sperimentazione elettronica. A Riccione unâ??icona della musica islandese nellâ??UNICA DATA ITALIANA del suo tour europeo.\r\nA due mesi dalla pubblicazione del suo primo EP The Mountain Man, uscito il 18 novembre scorso per lâ??etichetta Carosello, Wrongonyou fa ora tappa anche in Romagna.\r\n\r\nDopo la straordinaria performance di Motta, accolto con un sold out Sabato 21 gennaio, dalle 21.30, lo spazio riccionese ospita un doppio live con ingresso unico a 10 euro (prevendita liveticket.it). Ad aprire la serata Ã¨ la rivelazione Wrongonyou, allâ??anagrafe Marco Zitelli, folk-rocker classe 1990, italiano di nascita ma dal sound decisamente anglosassone, ispirato a modelli come Radiohead, John Frusciante, James Blake e soprattutto Bon Iver. A seguire, sale sul palco per una data unica in Italia una vera star dellâ??acclamata scena islandese: HÃ¶gni Egilsson, polistrumentista, compositore e voce inconfondibile di band come GusGus e HjaltalÃ­n.\r\n\r\nOriginario dei castelli romani, ma innamorato del folk nordamericano e dei paesaggi boschivi dâ??oltreoceano, Wrongonyou comincia a scrivere brani nel 2013, pubblicandoli sulla piattaforma musicale SoundCloud. Un professore di sound technology dellâ??UniversitÃ  di Oxford li ascolta e lo invita negli studi di registrazione dove ventâ??anni prima gli Shinding, poi diventati Radiohead, incidevano Manic Hedgehog. Nascono cosÃ¬ un demo dal titolo Hand e un tour che porta il musicista romano a esibirsi in Italia e allâ??estero.\r\n\r\nCon la sua voce profonda, la presenza magnetica e la straordinaria versatilitÃ  musicale HÃ¶gni Egilsson, a poco piÃ¹ di trentâ??anni, Ã¨ giÃ  da tempo unâ??icona indiscussa della scena europea. Oltre a comporre, suonare e cantare per alcune delle piÃ¹ affermate band islandesi, scrive brani per il cinema e il teatro e ha firmato musiche per la Royal Shakespeare Company. Da oltre dieci anni Ã¨ leader degli HjaltalÃ­n, gruppo indie-folk con cui ha pubblicato quattro album, tra cui Terminal (2009), votato come disco dellâ??anno in Islanda. Dal 2011, come cantante e autore, Ã¨ entrato a far parte anche dei GusGus e ha lavorato alla registrazione di Arabian Horse e Mexico, gli LP che hanno definitivamente consacrato la band di ReykjavÃ­k come un punto di riferimento per lâ??elettronica internazionale. Protagonista di prestigiose collaborazioni con John Grant, Ã?lafur Arnalds e con i mÃºm â?? protagonisti lo scorso anno sul palco del â??Tondelliâ?? â?? Egilsson ha di recente avviato un nuovo progetto solista da cui Ã¨ nato Shed Your Skin, album in uscita nella prossima primavera. Dopo aver fatto tappa al mitico Roter Salon/VolksbÃ¼hne di Berlino, HÃ¶gni atterra a Riccione dove presenta per la prima volta in Italia questa nuova avventura segnata da atmosfere scure ma piene di calore, e da una sapiente combinazione di sonoritÃ  acustiche e interferenze elettroniche: un viaggio intimo e dolcissimo tra le luci e le ombre dei piÃ¹ profondi sentimenti umani.', '04-02-2017', 'Andrea Fiore', 'MUSICA INDIE ALLO SPAZIO TONDELLI CON WRONGONYOU E HÃ?GNI', 'http://www.newsrimini.it/wp-content/uploads/2017/01/hogni.jpg', 'Nuove uscite');

-- --------------------------------------------------------

--
-- Struttura della tabella `preferenza`
--

CREATE TABLE `preferenza` (
  `ID_Cliente` int(11) NOT NULL,
  `ID_Brano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `preferenza`
--

INSERT INTO `preferenza` (`ID_Cliente`, `ID_Brano`) VALUES
(1, 9),
(1, 15);

-- --------------------------------------------------------

--
-- Struttura della tabella `produzione`
--

CREATE TABLE `produzione` (
  `ID_Album` int(11) NOT NULL,
  `ID_Artista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `produzione`
--

INSERT INTO `produzione` (`ID_Album`, `ID_Artista`) VALUES
(1, 1),
(2, 2),
(3, 3),
(8, 4),
(9, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `pubblicazione`
--

CREATE TABLE `pubblicazione` (
  `ID_Album` int(11) NOT NULL,
  `ID_Etichetta` int(11) NOT NULL,
  `Data Rilascio` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `pubblicazione`
--

INSERT INTO `pubblicazione` (`ID_Album`, `ID_Etichetta`, `Data Rilascio`) VALUES
(3, 1, '2014-10-20'),
(9, 11, 'October 23, 2015');

-- --------------------------------------------------------

--
-- Struttura della tabella `recensione`
--

CREATE TABLE `recensione` (
  `ID_Cliente` int(5) NOT NULL,
  `ID_Brano` int(5) NOT NULL,
  `Data` date NOT NULL,
  `Testo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `recensione`
--

INSERT INTO `recensione` (`ID_Cliente`, `ID_Brano`, `Data`, `Testo`) VALUES
(1, 9, '2016-04-23', 'Brano eccezionale, uno dei miei preferiti. ');

-- --------------------------------------------------------

--
-- Struttura della tabella `Richiesta`
--

CREATE TABLE `Richiesta` (
  `ID` int(11) NOT NULL,
  `Arista` varchar(64) NOT NULL,
  `Album` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `sottoscrizione`
--

CREATE TABLE `sottoscrizione` (
  `Etichetta` int(11) NOT NULL,
  `Artista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `sottoscrizione`
--

INSERT INTO `sottoscrizione` (`Etichetta`, `Artista`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `vinile`
--

CREATE TABLE `vinile` (
  `ID` int(11) NOT NULL,
  `Prezzo` int(11) NOT NULL,
  `Copie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `vinile`
--

INSERT INTO `vinile` (`ID`, `Prezzo`, `Copie`) VALUES
(3, 0, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `visualizzazione`
--

CREATE TABLE `visualizzazione` (
  `ID_Cliente` int(11) NOT NULL,
  `ID_News` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `visualizzazione`
--

INSERT INTO `visualizzazione` (`ID_Cliente`, `ID_News`) VALUES
(2, 200);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Titolo` (`Titolo`,`Artista`);

--
-- Indici per le tabelle `articolo`
--
ALTER TABLE `articolo`
  ADD PRIMARY KEY (`Codice`);

--
-- Indici per le tabelle `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Nazionalità` (`Nome`);

--
-- Indici per le tabelle `brani`
--
ALTER TABLE `brani`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `cd`
--
ALTER TABLE `cd`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `composizione`
--
ALTER TABLE `composizione`
  ADD PRIMARY KEY (`ID_Fattura`,`ID_Articolo`);

--
-- Indici per le tabelle `dettaglio`
--
ALTER TABLE `dettaglio`
  ADD PRIMARY KEY (`ID_Articolo`,`ID_Album`);

--
-- Indici per le tabelle `digitale`
--
ALTER TABLE `digitale`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `etichetta`
--
ALTER TABLE `etichetta`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `f1`
--
ALTER TABLE `f1`
  ADD PRIMARY KEY (`ID_Digitale`,`ID_Album`);

--
-- Indici per le tabelle `f2`
--
ALTER TABLE `f2`
  ADD PRIMARY KEY (`ID_Vinile`,`ID_Album`);

--
-- Indici per le tabelle `f3`
--
ALTER TABLE `f3`
  ADD PRIMARY KEY (`ID_CD`,`ID_Album`);

--
-- Indici per le tabelle `fattura`
--
ALTER TABLE `fattura`
  ADD PRIMARY KEY (`Codice`);

--
-- Indici per le tabelle `fatturazione`
--
ALTER TABLE `fatturazione`
  ADD PRIMARY KEY (`ID_Cliente`,`ID_Fattura`);

--
-- Indici per le tabelle `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `lista`
--
ALTER TABLE `lista`
  ADD PRIMARY KEY (`ID_Brano`,`ID_Album`);

--
-- Indici per le tabelle `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `preferenza`
--
ALTER TABLE `preferenza`
  ADD PRIMARY KEY (`ID_Cliente`,`ID_Brano`);

--
-- Indici per le tabelle `produzione`
--
ALTER TABLE `produzione`
  ADD PRIMARY KEY (`ID_Album`,`ID_Artista`);

--
-- Indici per le tabelle `pubblicazione`
--
ALTER TABLE `pubblicazione`
  ADD PRIMARY KEY (`ID_Album`,`ID_Etichetta`);

--
-- Indici per le tabelle `Richiesta`
--
ALTER TABLE `Richiesta`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `sottoscrizione`
--
ALTER TABLE `sottoscrizione`
  ADD PRIMARY KEY (`Etichetta`,`Artista`);

--
-- Indici per le tabelle `vinile`
--
ALTER TABLE `vinile`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `album`
--
ALTER TABLE `album`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT per la tabella `articolo`
--
ALTER TABLE `articolo`
  MODIFY `Codice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT per la tabella `artista`
--
ALTER TABLE `artista`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `brani`
--
ALTER TABLE `brani`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT per la tabella `cd`
--
ALTER TABLE `cd`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT per la tabella `digitale`
--
ALTER TABLE `digitale`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `etichetta`
--
ALTER TABLE `etichetta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT per la tabella `f1`
--
ALTER TABLE `f1`
  MODIFY `ID_Digitale` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `fattura`
--
ALTER TABLE `fattura`
  MODIFY `Codice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;
--
-- AUTO_INCREMENT per la tabella `feedback`
--
ALTER TABLE `feedback`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT per la tabella `news`
--
ALTER TABLE `news`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;
--
-- AUTO_INCREMENT per la tabella `Richiesta`
--
ALTER TABLE `Richiesta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `vinile`
--
ALTER TABLE `vinile`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
