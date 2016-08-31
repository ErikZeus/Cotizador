-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.14-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for catalogo
CREATE DATABASE IF NOT EXISTS `catalogo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `catalogo`;


-- Dumping structure for table catalogo.iva
CREATE TABLE IF NOT EXISTS `iva` (
  `Iva` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.iva: ~0 rows (approximately)
DELETE FROM `iva`;
/*!40000 ALTER TABLE `iva` DISABLE KEYS */;
INSERT INTO `iva` (`Iva`) VALUES
	(12.00);
/*!40000 ALTER TABLE `iva` ENABLE KEYS */;


-- Dumping structure for table catalogo.linea
CREATE TABLE IF NOT EXISTS `linea` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`indice`),
  UNIQUE KEY `Descripcion` (`Descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.linea: ~11 rows (approximately)
DELETE FROM `linea`;
/*!40000 ALTER TABLE `linea` DISABLE KEYS */;
INSERT INTO `linea` (`indice`, `Descripcion`) VALUES
	(6, '3 SEDAN'),
	(7, '325i'),
	(12, 'ACCENT'),
	(3, 'CIVIC'),
	(11, 'CIVIC LX'),
	(10, 'COROLLA'),
	(2, 'CRV'),
	(9, 'MIRAGE'),
	(13, 'PROTEGE'),
	(8, 'RAV4'),
	(1, 'SCION XD'),
	(4, 'YARIS');
/*!40000 ALTER TABLE `linea` ENABLE KEYS */;


-- Dumping structure for table catalogo.maestro_correoautomatico
CREATE TABLE IF NOT EXISTS `maestro_correoautomatico` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) DEFAULT '0',
  `mensaje` text,
  `descripcion_codigo` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`indice`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.maestro_correoautomatico: ~0 rows (approximately)
DELETE FROM `maestro_correoautomatico`;
/*!40000 ALTER TABLE `maestro_correoautomatico` DISABLE KEYS */;
INSERT INTO `maestro_correoautomatico` (`indice`, `codigo`, `mensaje`, `descripcion_codigo`) VALUES
	(1, 3, '\r\n<span style="text-decoration: underline;"><p>SEGURO COMPLETO</p></span> \r\n <br />\r\n  <br />\r\n   <br />\r\n<p>De acuerdo a su solicitud, adjunto encontrar&aacute; cotizaci&oacute;n para el seguro de su veh&iacute;culo bajo el plan exclusivo de colaboradores del banco.</p>\r\n<p>En caso de ser aceptada la propuesta, necesitamos nos pueda enviar por esta v&iacute;a copia de los siguientes documentos:</p>\r\n<p>Tarjeta de circulaci&oacute;n (legible)<br />DPI<br />Recibo reciente de agua, luz o tel&eacute;fono fijo que refleje su direcci&oacute;n particular.<br />Completar campos marcados en color gris del Formulario ASR27 y enviarlo en excel (adjunto archivo) <br />Indicar su No. GEID</p>\r\n<p>Se deber&aacute; realizar una inspecci&oacute;n al veh&iacute;culo y las opciones para realizar dicha inspecci&oacute;n son las siguientes:</p>\r\n<p>Promotores Unity Avenida de las Am&eacute;ricas 22-23, Zona 14 (Frente al Monumento al Papa en horario de 8 a 16 hrs)<br />Parqueo Piedr&iacute;n/C&eacute;ntrica Plaza (fecha a convenir)<br />Campus zona 12 (fecha a convenir) <br />Cualquiera de los centros de atenci&oacute;n de Seguros El Roble, si lo realiza en estos centros, deber&aacute; hacer CITA e indicar a la persona que le realice la inspecci&oacute;n que es para incluir el veh&iacute;culo en la flotilla de CITI y que va de parte de Promotores Unity. Esta persona le entregar&aacute; una copia de la hoja que &eacute;l llena, misma que deber&aacute; de enviarnos por esta v&iacute;a a nosotros.</p>\r\n<p>Los centros autorizados por Seguros El Roble para realizar las inspecciones son:</p>\r\n\r\n<table><tr><th>TALLER</th><th>DIRECCI&Oacute;N</th><th>TEL&Eacute;FONO</th> </tr>\r\n\r\n <tr><td>QUANTUM</td><td>20 calle 18-01,zona 10</td><td>2384-1412</td></tr>\r\n <tr><td>TALLER DE LA CIUDAD ZONA 9</td><td>6a. Calle 6-17, zona 9</td><td>2504-3939</td></tr>\r\n <tr><td>TALLER DE LA CIUDAD CARRETERA</td><td>Km 16.5 Carr. A El Salvador</td><td>2504-3939</td></tr>\r\n <tr><td>BODY FIX</td><td>Av. Petapa 43-15 Z12</td><td>2388-5500</td></tr>\r\n <tr><td>AUTOCOLOR</td><td>10a. Avenida A 0-38 Z.7</td><td>2419-3800</td></tr>\r\n <tr><td>TALLER SPECTRA</td><td>25 Av. 4-34 Zona 11</td><td>2474-2033</td></tr>\r\n <tr><td>UNIAUTO</td><td>Avenida Petapa 36-19 zona 12</td><td>2328 8879</td></tr>\r\n <tr><td>TALLER RODAS ZONA 5</td><td>11 Avenida B 31-15 zona 5</td><td>2331-9106</td></tr>\r\n <tr><td>COJULUN ROOSEVELT</td><td>7 avenida 0-07, zona 2 de Mixco</td><td>2250-4602</td></tr>\r\n </table>\r\n <br />Su veh&iacute;culo queda asegurado inmediatamente despu&eacute;s de haber realizado la inspecci&oacute;n y completado los documentos ac&aacute; detallados.<br />Agradecemos su atenci&oacute;n y cualquier consulta adicional quedamos a las &oacute;rdenes.<br /> <br /> <br />Atentamente,</p> <br /> <br /> <br />\r\n', 'Mensaje del cotizador envio automatico'),
	(2, 2, '<div style="width:650px;>"  <span style="text-decoration: underline;"><p>SOLO RC</p></span> \r\n <br />\r\n  <br />\r\n<p><span style="font-weight: 400;">De acuerdo a su solicitud, adjunto encontrar&aacute; cotizaci&oacute;n para el seguro de su veh&iacute;culo bajo &nbsp;el plan exclusivo de colaboradores del banco.</span></p>\r\n<p><span style="font-weight: 400;">En caso de ser aceptada la propuesta, &nbsp;favor enviar los siguientes documentos:</span></p>\r\n<br />\r\n<ul>\r\n<li><strong><strong>Tarjeta de circulaci&oacute;n</strong></strong></li>\r\n<li><strong>DPI</strong></li>\r\n<li style="font-weight: 400;"><strong>Recibo reciente de agua, luz o tel&eacute;fono fijo&nbsp;</strong><span style="font-weight: 400;">que refleje su direcci&oacute;n particular.</span></li>\r\n<li style="font-weight: 400;"><span style="font-weight: 400;">Completar campos&nbsp;</span><span style="font-weight: 400;">marcados en color gris</span><span style="font-weight: 400;">&nbsp;del Formulario&nbsp;&nbsp;</span><strong>ASR27</strong><span style="font-weight: 400;">&nbsp;y enviarlo en excel (adjunto)</span><strong> No. GEID</strong></li>\r\n</ul>\r\n<p><span style="font-weight: 400;">Dichos documentos puede enviarlos&nbsp;&nbsp;escaneados, hasta que nosotros tengamos los documentos completos el veh&iacute;culo queda asegurado.</span></p>\r\n<p><span style="font-weight: 400;">Agradecemos su atenci&oacute;n y cualquier consulta adicional quedamos a las &oacute;rdenes.</span></p>\r\n  <br />\r\n   <br />\r\n<p><span style="font-weight: 400;">Cordialmente,</span></p>\r\n<p>&nbsp;</p></div>\r\n', 'Mensaje 2 del cotizador envio automatico'),
	(3, 1, '<div style="width:650px;">\r\n        <p><font style="font-family:Calibri; font-size:medium;">Gracias por tomarnos en cuenta para la asesor&iacute;a en el seguro de su veh&iacute;culo. Unity Promotores es una empresa con m&aacute;s de 35 a&ntilde;os de estar en el mercado Guatemalteco. Nos especializamos en seguros de todo tipo, siendo nuestra filosof&iacute;a de trabajo recomendar a nuestros clientes productos de seguros conforme a sus necesidades, comprometidos con la mejora continua de nuestros servicios y las normas legales que rigen nuestro negocio.&nbsp; &nbsp;</font></p>\r\n        <p><font style="font-family:Calibri; font-size:medium;">A continuaci&oacute;n le presentamos 3 sencillos pasos que Ud. debe seguir para poder contratar el seguro de su veh&iacute;culo.</font></p>\r\n         <table>\r\n             <tr><td class="tat">\r\n                     <img src="http://www.unitypromotores.com/images/Paso1.bmp" /></td><td></td><td class="tat"></td>\r\n             <td>\r\n                 <img src="http://www.unitypromotores.com/images/Paso2.bmp" /></td><td class="tat"></td>\r\n             <td>\r\n                 <img src="http://www.unitypromotores.com/images/Paso3.bmp" /></td></tr></table>\r\n        <p>&nbsp;</p>\r\n        <p><font style="font-family:Calibri; font-size:medium;">En breve uno de nuestros asesores especializados se estar&aacute; comunicando con usted para resolver dudas y guiarlo/a en el proceso de contrataci&oacute;n del seguro para su veh&iacute;culo.</font></p>\r\n    </div>', 'Correo Automatico Cotizador Formato Gerencial');
/*!40000 ALTER TABLE `maestro_correoautomatico` ENABLE KEYS */;


-- Dumping structure for table catalogo.maestro_correosinternos
CREATE TABLE IF NOT EXISTS `maestro_correosinternos` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `Correo` varchar(75) NOT NULL DEFAULT '0',
  `CodigoEmpresa` varchar(75) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Correo`,`CodigoEmpresa`),
  KEY `indice` (`indice`),
  KEY `FK__coberturas_adicionales` (`CodigoEmpresa`),
  CONSTRAINT `FK__coberturas_adicionales` FOREIGN KEY (`CodigoEmpresa`) REFERENCES `maestro_reglasnegocio` (`CodigoEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.maestro_correosinternos: ~0 rows (approximately)
DELETE FROM `maestro_correosinternos`;
/*!40000 ALTER TABLE `maestro_correosinternos` DISABLE KEYS */;
INSERT INTO `maestro_correosinternos` (`indice`, `Correo`, `CodigoEmpresa`) VALUES
	(3, 'erik.castaneda@unitypromotores.com', 'Roble');
/*!40000 ALTER TABLE `maestro_correosinternos` ENABLE KEYS */;


-- Dumping structure for table catalogo.maestro_ejecutivos
CREATE TABLE IF NOT EXISTS `maestro_ejecutivos` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(350) NOT NULL DEFAULT '0',
  `Correo` varchar(150) NOT NULL DEFAULT '0',
  `CodigoEmpresa` varchar(350) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Nombre`,`Correo`,`CodigoEmpresa`),
  KEY `indice` (`indice`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.maestro_ejecutivos: ~5 rows (approximately)
DELETE FROM `maestro_ejecutivos`;
/*!40000 ALTER TABLE `maestro_ejecutivos` DISABLE KEYS */;
INSERT INTO `maestro_ejecutivos` (`indice`, `Nombre`, `Correo`, `CodigoEmpresa`) VALUES
	(1, 'Silvia de González', 'silvia.gonzalez@unitypromotores.com', '0'),
	(2, 'Josué Hernández', 'josue.hernandez@unitypromotores.com', '0'),
	(3, 'Luis Lugo', 'luis.lugo@unitypromotores.com', '0'),
	(4, 'Oscar Bethancourt', 'oscar.bethancourt@unitypromotores.com', '0'),
	(5, 'Paola Alvarado', 'paola.alvarado@unitypromotores.com', '0');
/*!40000 ALTER TABLE `maestro_ejecutivos` ENABLE KEYS */;


-- Dumping structure for table catalogo.maestro_reglasnegocio
CREATE TABLE IF NOT EXISTS `maestro_reglasnegocio` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoEmpresa` varchar(50) NOT NULL DEFAULT '0',
  `base` decimal(10,2) NOT NULL DEFAULT '0.00',
  `suma_asegurada_limite` decimal(10,2) NOT NULL DEFAULT '0.00',
  `porcentaje_menor_100` decimal(10,3) NOT NULL DEFAULT '0.000',
  `porcentaje_mayor_100` decimal(10,3) NOT NULL DEFAULT '0.000',
  `costo` decimal(10,2) NOT NULL DEFAULT '0.00',
  `robo_parcial` decimal(10,2) DEFAULT '0.00',
  `Menores_desde_16` decimal(10,2) DEFAULT '0.00',
  `Menores_desde_18` decimal(10,2) DEFAULT '0.00',
  `Exceso_RC` decimal(10,2) DEFAULT '0.00',
  `gastos_emision` decimal(10,2) DEFAULT '0.00',
  `asisto` decimal(10,2) DEFAULT '0.00',
  `iva` decimal(10,2) DEFAULT '0.00',
  `Exceso_RC_ElevacionDeCobertura` decimal(10,2) DEFAULT NULL,
  `Exceso_RC_Base` decimal(10,2) DEFAULT NULL,
  `PrimaNetaRC` decimal(10,2) DEFAULT NULL,
  `MenorNombradoRC` decimal(10,2) DEFAULT NULL,
  `PorcentajeResponsabilidadCivil` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`indice`),
  UNIQUE KEY `codigo` (`CodigoEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.maestro_reglasnegocio: ~1 rows (approximately)
DELETE FROM `maestro_reglasnegocio`;
/*!40000 ALTER TABLE `maestro_reglasnegocio` DISABLE KEYS */;
INSERT INTO `maestro_reglasnegocio` (`indice`, `CodigoEmpresa`, `base`, `suma_asegurada_limite`, `porcentaje_menor_100`, `porcentaje_mayor_100`, `costo`, `robo_parcial`, `Menores_desde_16`, `Menores_desde_18`, `Exceso_RC`, `gastos_emision`, `asisto`, `iva`, `Exceso_RC_ElevacionDeCobertura`, `Exceso_RC_Base`, `PrimaNetaRC`, `MenorNombradoRC`, `PorcentajeResponsabilidadCivil`) VALUES
	(1, 'Roble', 1000.00, 100000.00, 0.025, 0.020, 500.00, 267.54, 500.00, 1000.00, 200.00, 0.05, 145.45, 0.12, 250000.00, 800000.00, 900.00, NULL, 1.05);
/*!40000 ALTER TABLE `maestro_reglasnegocio` ENABLE KEYS */;


-- Dumping structure for table catalogo.marca
CREATE TABLE IF NOT EXISTS `marca` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`indice`),
  UNIQUE KEY `Descripcion` (`Descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=1029 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.marca: ~190 rows (approximately)
DELETE FROM `marca`;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` (`indice`, `Descripcion`) VALUES
	(873, 'ACCU'),
	(784, 'ACURA'),
	(831, 'ADMIRAL'),
	(877, 'ALFA'),
	(875, 'ALFA ROMEO'),
	(878, 'AMG'),
	(879, 'APOLO'),
	(832, 'ASIA'),
	(857, 'ASIA HERO'),
	(880, 'ASTA'),
	(785, 'ASTON MARTIN'),
	(786, 'AUDI'),
	(867, 'AUTOBUS'),
	(881, 'AVANTI'),
	(821, 'AZTEC'),
	(823, 'BAJAJ'),
	(869, 'BASHAN'),
	(861, 'BLUE BIRD'),
	(774, 'BMW'),
	(932, 'BMX'),
	(845, 'BOBCAT'),
	(882, 'BUICK'),
	(839, 'BUTLER'),
	(941, 'BYD'),
	(883, 'CADILLAC'),
	(952, 'CAN-AM ROADSTER'),
	(864, 'CASE'),
	(826, 'CATERPILLAR'),
	(876, 'CHANA'),
	(924, 'CHANGAN'),
	(919, 'CHEROKEE'),
	(835, 'CHERRY'),
	(777, 'CHEVROLET'),
	(787, 'CHRYSLER'),
	(813, 'CITROEN'),
	(833, 'CMC'),
	(808, 'DAEWOO'),
	(809, 'DAIHATSU'),
	(950, 'DAINLER BENZ'),
	(828, 'DATSUN'),
	(946, 'DFSK'),
	(850, 'DINA'),
	(788, 'DODGE'),
	(859, 'DONGFENG'),
	(960, 'DORSEY'),
	(942, 'DUCATI'),
	(865, 'DUMPER'),
	(884, 'EAGLE'),
	(885, 'EIK'),
	(870, 'ELGIN PELICAN'),
	(886, 'EZGO'),
	(945, 'FAW'),
	(789, 'FERRARI'),
	(816, 'FIAT'),
	(842, 'FLOW BOY'),
	(779, 'FORD'),
	(887, 'FREEDOM'),
	(814, 'FREIGHTLINER'),
	(836, 'FRUEHAUF'),
	(863, 'FUTIAN'),
	(888, 'GEELY'),
	(862, 'GENESIS'),
	(806, 'GEO'),
	(790, 'GMC'),
	(921, 'GREAT DANE'),
	(889, 'GREAT WALL'),
	(890, 'HAFEI'),
	(953, 'HAOJUE'),
	(938, 'HARLEY'),
	(891, 'HARLEY-DAVIDSON'),
	(817, 'HARTFORD'),
	(840, 'HAUF'),
	(931, 'HERO'),
	(822, 'HINO'),
	(854, 'HOBBS'),
	(838, 'HOMEMADE'),
	(962, 'HONDA'),
	(892, 'HUMMER'),
	(951, 'HUSQVARNA'),
	(776, 'HYUNDAI'),
	(791, 'INFINITI'),
	(927, 'INTERNACIONAL'),
	(819, 'INTERNATIONAL'),
	(792, 'ISUZU'),
	(926, 'ITALIKA'),
	(893, 'IVECO'),
	(922, 'JAC'),
	(894, 'JAGUAR'),
	(849, 'JEEP'),
	(851, 'JIALIGN'),
	(852, 'JIALING'),
	(958, 'JIMBEI'),
	(856, 'JMC'),
	(955, 'JOHN DEERE'),
	(871, 'JOHNSTON'),
	(930, 'KAISER'),
	(948, 'KARI KOOL'),
	(858, 'KAWASAKI'),
	(848, 'KENWORTH'),
	(793, 'KIA'),
	(895, 'KINLON'),
	(846, 'KOMATSU'),
	(896, 'KORANDO'),
	(866, 'KYMCO'),
	(794, 'LAND ROVER'),
	(795, 'LEXUS'),
	(860, 'LIFAN'),
	(872, 'LINMAX'),
	(897, 'LIONCEL'),
	(855, 'LML'),
	(956, 'LONCIN'),
	(937, 'LOW BOY'),
	(818, 'MACK'),
	(847, 'MAGIRUZ'),
	(923, 'MAHINDRA'),
	(829, 'MARCK'),
	(796, 'MASERATI'),
	(954, 'MASSEY'),
	(780, 'MAZDA'),
	(797, 'MERCEDES'),
	(827, 'MERCEDES BENZ'),
	(899, 'MERCURY'),
	(944, 'METAGRO'),
	(837, 'MILWAUKEE'),
	(798, 'MINI'),
	(901, 'MINI COOPER'),
	(781, 'MITSUBISHI'),
	(940, 'MORGAN PLUS'),
	(834, 'NAVISTAR'),
	(961, 'NC700XD'),
	(773, 'NISSAN'),
	(933, 'OLDSMOBILE'),
	(903, 'OPEL'),
	(812, 'PENDIENTE'),
	(905, 'PETER'),
	(907, 'PETERBILT'),
	(782, 'PEUGEOT'),
	(898, 'PIPA'),
	(900, 'PIPATANQUE'),
	(810, 'PLYMOUTH'),
	(943, 'POLARIS'),
	(799, 'PONTIAC'),
	(800, 'PORSCHE'),
	(902, 'RANGE ROVER'),
	(807, 'RENAULT'),
	(843, 'RETESA'),
	(959, 'ROBECA'),
	(904, 'ROVER'),
	(906, 'RSM'),
	(949, 'SACHS MOPEDS'),
	(868, 'SANYANG'),
	(908, 'SATURN'),
	(929, 'SCHWING'),
	(801, 'SCION'),
	(778, 'SEAT'),
	(874, 'SHINERAY'),
	(909, 'SINSKI'),
	(910, 'SKODA'),
	(957, 'SKYGO'),
	(911, 'SSANG YONG'),
	(783, 'SSANGYONG'),
	(928, 'STERLING'),
	(934, 'STEYR PUCH'),
	(939, 'STRICK'),
	(802, 'SUBARU'),
	(925, 'SUKIDA'),
	(803, 'SUZUKI'),
	(936, 'THEURER'),
	(935, 'TITAN'),
	(775, 'TOYOTA'),
	(841, 'TRAILMOBILE'),
	(912, 'TRIUMPH'),
	(913, 'UD NISSAN'),
	(914, 'UD TRUCKS'),
	(825, 'UNITED MOTORS'),
	(815, 'VENTO'),
	(824, 'VESPA'),
	(853, 'VIKING'),
	(915, 'VILLAGER 8'),
	(804, 'VOLKSWAGEN'),
	(805, 'VOLVO'),
	(820, 'WABASH'),
	(916, 'WHITE'),
	(920, 'WHITE GMC'),
	(917, 'WULING'),
	(947, 'XRT 1550 SE'),
	(811, 'YAMAHA'),
	(918, 'YUMBO'),
	(830, 'ZUKYAMA'),
	(844, 'ZX');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;


-- Dumping structure for table catalogo.modelo
CREATE TABLE IF NOT EXISTS `modelo` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`indice`),
  UNIQUE KEY `Descripcion` (`Descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.modelo: ~16 rows (approximately)
DELETE FROM `modelo`;
/*!40000 ALTER TABLE `modelo` DISABLE KEYS */;
INSERT INTO `modelo` (`indice`, `Descripcion`) VALUES
	(2, '2001'),
	(3, '2002'),
	(4, '2003'),
	(5, '2004'),
	(6, '2005'),
	(7, '2006'),
	(8, '2007'),
	(9, '2008'),
	(10, '2009'),
	(11, '2010'),
	(12, '2011'),
	(13, '2012'),
	(14, '2013'),
	(15, '2014'),
	(16, '2015'),
	(17, '2016');
/*!40000 ALTER TABLE `modelo` ENABLE KEYS */;


-- Dumping structure for table catalogo.tipodevehiculo
CREATE TABLE IF NOT EXISTS `tipodevehiculo` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`indice`),
  UNIQUE KEY `Descripcion` (`Descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.tipodevehiculo: ~3 rows (approximately)
DELETE FROM `tipodevehiculo`;
/*!40000 ALTER TABLE `tipodevehiculo` DISABLE KEYS */;
INSERT INTO `tipodevehiculo` (`indice`, `Descripcion`) VALUES
	(5, 'Automóvil'),
	(26, 'Camioneta'),
	(7, 'Motocicleta'),
	(41, 'Pickup');
/*!40000 ALTER TABLE `tipodevehiculo` ENABLE KEYS */;


-- Dumping structure for table catalogo.trans_correosenviados
CREATE TABLE IF NOT EXISTS `trans_correosenviados` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(500) DEFAULT '0',
  `Apellidos` varchar(500) DEFAULT '0',
  `Correo` varchar(500) DEFAULT '0',
  `TipoDeVehiculo` varchar(200) DEFAULT '0',
  `Linea` varchar(500) DEFAULT '0',
  `Marca` varchar(300) DEFAULT '0',
  `Telefono` varchar(75) DEFAULT '0',
  `Modelo` varchar(75) DEFAULT '0',
  `SumaAsegurada` decimal(8,2) DEFAULT '0.00',
  `Fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `TipoSeguro` varchar(500) DEFAULT NULL,
  `contactar` varchar(100) DEFAULT NULL,
  `CodigoEmpresa` varchar(150) DEFAULT NULL,
  `ComoContactar` varchar(100) DEFAULT NULL,
  `Paso1` bit(1) DEFAULT NULL,
  `Paso2` bit(1) DEFAULT NULL,
  `Paso3` bit(1) DEFAULT NULL,
  PRIMARY KEY (`indice`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.trans_correosenviados: ~151 rows (approximately)
DELETE FROM `trans_correosenviados`;
/*!40000 ALTER TABLE `trans_correosenviados` DISABLE KEYS */;
INSERT INTO `trans_correosenviados` (`indice`, `Nombre`, `Apellidos`, `Correo`, `TipoDeVehiculo`, `Linea`, `Marca`, `Telefono`, `Modelo`, `SumaAsegurada`, `Fecha`, `TipoSeguro`, `contactar`, `CodigoEmpresa`, `ComoContactar`, `Paso1`, `Paso2`, `Paso3`) VALUES
	(2, 'Monica Arce', '0', 'monica.arce@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '654654654', '2000', 350000.00, '2016-08-18 21:36:13', 'Responsabilidad Civil', NULL, 'Roble', NULL, NULL, NULL, NULL),
	(3, 'Monica Arce', '0', 'castaneda.erik@hotmail.com', 'Automovil', '3 SEDAN', 'BMW', '24654974', '2000', 35000.00, '2016-08-18 21:56:10', 'Daños a Terceros', NULL, 'Roble', NULL, NULL, NULL, NULL),
	(4, 'Monica Arce', '0', 'monica.arce@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '654654314', '2000', 7500.00, '2016-08-18 22:33:00', 'Daños a Terceros', NULL, 'Roble', NULL, NULL, NULL, NULL),
	(5, 'Monica Arce', '0', 'monica.arce@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '46198798', '2000', 15400.00, '2016-08-18 22:46:46', 'Daños a Terceros', NULL, 'Roble', NULL, NULL, NULL, NULL),
	(6, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '46198798', '2000', 15400.00, '2016-08-18 22:47:53', 'Daños a Terceros', NULL, 'Roble', NULL, NULL, NULL, NULL),
	(7, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '46546879', '2000', 15000.00, '2016-08-18 22:52:14', 'Daños a Terceros', NULL, 'Roble', NULL, NULL, NULL, NULL),
	(8, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '46546879', '2000', 15000.00, '2016-08-18 22:53:15', 'Daños a Terceros', NULL, 'Roble', NULL, NULL, NULL, NULL),
	(9, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '46546879', '2000', 15000.00, '2016-08-18 22:54:07', 'Daños a Terceros', NULL, 'Roble', NULL, NULL, NULL, NULL),
	(10, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '465465465', '2000', 15000.00, '2016-08-19 15:44:51', 'Responsabilidad Civil', NULL, 'Roble', NULL, NULL, NULL, NULL),
	(11, 'monica arce', '0', 'monica.arce@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '465465465', '2000', 15000.00, '2016-08-19 15:46:43', 'Responsabilidad Civil', NULL, 'Roble', NULL, NULL, NULL, NULL),
	(12, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '12345647', '2000', 5000.00, '2016-08-22 11:39:09', 'Daños a Terceros', NULL, 'Roble', NULL, NULL, NULL, NULL),
	(13, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '13265465', '2000', 5000.00, '2016-08-22 11:43:02', 'Daños a Terceros', NULL, 'Roble', NULL, NULL, NULL, NULL),
	(14, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '65465465', '2000', 5000.00, '2016-08-22 11:44:19', 'Daños a Terceros', NULL, 'Roble', NULL, NULL, NULL, NULL),
	(15, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '12345665', '2000', 5000.00, '2016-08-22 11:50:47', 'Daños a Terceros', NULL, 'Roble', NULL, NULL, NULL, NULL),
	(16, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '65465465', '2000', 5000.00, '2016-08-22 12:14:14', 'Daños a Terceros', NULL, 'Roble', NULL, NULL, NULL, NULL),
	(17, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '65465465', '2000', 50000.00, '2016-08-22 13:51:41', 'Seguro Completo', NULL, 'Roble', NULL, NULL, NULL, NULL),
	(18, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '65465465', '2000', 5000.00, '2016-08-22 13:55:30', 'Seguro Completo', NULL, 'Roble', NULL, NULL, NULL, NULL),
	(19, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '65465465', '2000', 5000.00, '2016-08-22 13:56:03', 'Responsabilidad Civil', NULL, 'Roble', NULL, NULL, NULL, NULL),
	(20, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 5000.00, '2016-08-23 09:47:56', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(21, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '13246549', '2000', 50000.00, '2016-08-23 13:39:58', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(22, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 5050.00, '2016-08-23 13:44:24', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(23, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465165', '2000', 47000.00, '2016-08-23 14:33:01', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(24, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 47000.00, '2016-08-23 14:42:04', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(25, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 470000.00, '2016-08-23 14:47:00', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(26, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 47000.00, '2016-08-23 14:49:16', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(27, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 47000.00, '2016-08-23 14:56:39', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(28, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 47000.00, '2016-08-23 14:57:56', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(29, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465165', '2000', 47000.00, '2016-08-23 15:07:00', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(30, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 47000.00, '2016-08-23 15:09:46', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(31, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 47000.00, '2016-08-23 15:11:32', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(32, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 470000.00, '2016-08-23 15:13:30', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(33, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 47000.00, '2016-08-23 15:14:25', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(34, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 47000.00, '2016-08-23 15:23:46', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(35, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 47000.00, '2016-08-23 15:45:20', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(36, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 47000.00, '2016-08-23 15:51:31', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(37, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '54987987', '2000', 135000.00, '2016-08-23 15:57:00', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(38, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 135000.00, '2016-08-23 15:57:48', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(39, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 135000.00, '2016-08-23 16:10:01', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(40, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 135000.00, '2016-08-23 16:12:47', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(41, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65798798', '2000', 135000.00, '2016-08-23 16:13:49', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(42, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65798798', '2005', 180000.00, '2016-08-23 16:24:22', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(43, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 135000.00, '2016-08-23 16:34:13', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(44, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 135000.00, '2016-08-23 16:36:30', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(45, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65468798', '2000', 135000.00, '2016-08-23 16:53:43', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(46, 'Julian Presa', '0', 'julian.presa@unitypromotores.com', 'Agrícola 4x4', 'RAV4', 'Toyota', '23863700', '2014', 200000.00, '2016-08-24 08:21:33', 'Seguro Completo', 'julian.presa@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(47, 'erik castañeda', '0', 'erik.castaneda@hotmail.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 50000.00, '2016-08-24 09:08:07', 'Seguro Completo', 'erik.castaneda@hotmail.com', 'Roble', NULL, NULL, NULL, NULL),
	(48, 'Erik Castañeda', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 50000.00, '2016-08-24 09:09:33', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(49, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 154000.00, '2016-08-25 08:56:21', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(50, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 500000.00, '2016-08-25 09:45:04', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(51, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 45000.00, '2016-08-25 09:51:28', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(52, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 45000.00, '2016-08-25 09:58:46', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(53, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 45000.00, '2016-08-25 10:20:21', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(54, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '46546546', '2000', 145000.00, '2016-08-26 09:02:56', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(55, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 09:05:32', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(56, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 09:07:13', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(57, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 09:09:06', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(58, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 09:11:50', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(59, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 09:13:50', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(60, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 09:15:49', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(61, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 09:22:55', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(62, 'Julian Presa', '0', 'julian.presa@unitypromotores.com', 'Agrícola 4x4', 'CRV', 'Honda', '23863700', '2015', 200000.00, '2016-08-26 09:28:01', 'Seguro Completo', 'julian.presa@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(63, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 09:40:26', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(64, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 09:56:36', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(65, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 10:10:33', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(66, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 10:12:26', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(67, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 10:19:02', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(68, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 10:23:06', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(69, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 10:32:12', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(70, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 10:34:03', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(71, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 10:43:28', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(72, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 10:49:56', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(73, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 10:55:43', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(74, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 11:00:49', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(75, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 11:03:02', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(76, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 11:06:52', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(77, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 11:12:38', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(78, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 11:21:43', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(79, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 11:28:08', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(80, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '64654654', '2000', 0.00, '2016-08-26 13:58:01', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(81, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 15:10:35', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(82, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 15:11:52', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(83, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 195000.00, '2016-08-26 15:32:06', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(84, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 155000.00, '2016-08-26 15:36:26', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(85, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 155000.00, '2016-08-26 15:44:14', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(86, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 0.00, '2016-08-26 15:51:37', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(87, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 0.00, '2016-08-26 15:54:37', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(88, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 0.00, '2016-08-26 16:00:42', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(89, 'monica arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 95000.00, '2016-08-26 16:06:03', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(90, 'Luis Alberto Flores', '0', 'luis.flores@unitypromotores.com', 'Automóvil', '325i', 'BMW', '52041839', '2014', 150000.00, '2016-08-26 16:32:15', 'Seguro Completo', 'luis.flores@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(91, 'Julian Presa', '0', 'julian.presa@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '52016759', '2010', 200000.00, '2016-08-26 17:14:26', 'Seguro Completo', 'julian.presa@unitypromotores.com', 'Roble', NULL, NULL, NULL, NULL),
	(92, 'CEsar', '0', 'cesar.roldan@unityseguros.xom', 'Agrícola 4x2', '3 SEDAN', 'BMW', '12345678', '2000', 100000.00, '2016-08-29 08:19:34', 'Seguro Completo', 'cesar.roldan@unityseguros.xom', 'Roble', NULL, NULL, NULL, NULL),
	(93, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '325', 'BMW', '65465465', '2007', 65000.00, '2016-08-29 09:28:02', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat', NULL, NULL, NULL),
	(94, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', 'I 325', 'BMW', '65465465', '2000', 45000.00, '2016-08-29 09:48:32', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(95, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', 'I 325', 'BMW', '65465465', '2000', 45000.00, '2016-08-29 09:57:47', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(96, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', 'I 325', 'BMW', '65465465', '2000', 35000.00, '2016-08-29 10:05:24', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Telefono - 3 PM', NULL, NULL, NULL),
	(97, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', 'I 325', 'BMW', '65465465', '2000', 35500.00, '2016-08-29 10:13:43', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - 4 PM', NULL, NULL, NULL),
	(98, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', 'I 325', 'BMW', '65465465', '2000', 500000.00, '2016-08-29 10:18:40', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Telefono - Inmediatamente', NULL, NULL, NULL),
	(99, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', 'I 325', 'BMW', '65465465', '2000', 25000.00, '2016-08-29 11:02:20', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(100, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', 'I 325', 'BMW', '65465465', '2000', 45000.00, '2016-08-29 11:34:20', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(101, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '54654654', '2000', 25500.00, '2016-08-29 11:38:04', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Telefono - Inmediatamente', NULL, NULL, NULL),
	(102, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '65465465', '2000', 45000.00, '2016-08-29 12:07:22', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(103, 'Julian Presa', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '65465465', '2000', 35000.00, '2016-08-29 12:12:19', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Telefono - 4 PM', NULL, NULL, NULL),
	(104, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '65465465', '2000', 25750.00, '2016-08-29 12:21:53', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(105, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '65465465', '2000', 25500.00, '2016-08-29 12:29:58', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Telefono - Inmediatamente', NULL, NULL, NULL),
	(106, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '65465465', '2000', 35700.00, '2016-08-29 13:29:56', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(107, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '65465465', '2000', 45000.00, '2016-08-29 13:42:01', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(108, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '65465465', '2000', 27500.00, '2016-08-29 14:32:50', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Telefono - Inmediatamente', NULL, NULL, NULL),
	(109, 'Manolo Mendizabal', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '65465465', '2000', 14500.00, '2016-08-29 14:40:50', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Telefono - Inmediatamente', NULL, NULL, NULL),
	(110, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '65465465', '2000', 45600.00, '2016-08-29 14:44:28', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(111, 'Mario Donado', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '65465465', '2000', 45000.00, '2016-08-29 14:50:15', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Telefono - Inmediatamente', NULL, NULL, NULL),
	(112, 'Manuel de la Garza', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '65465465', '2000', 34450.00, '2016-08-29 14:55:07', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(113, 'Magally Tolledo', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '65465465', '2000', 25400.00, '2016-08-29 15:01:35', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(114, 'Marielos Dulce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '65465465', '2000', 125000.00, '2016-08-29 15:04:30', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(115, 'Marielos Dulce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '65465465', '2000', 125000.00, '2016-08-29 15:04:40', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(116, 'Maluma Cantante', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '65465465', '2000', 45000.00, '2016-08-29 15:05:36', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(117, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '65465465', '2000', 145000.00, '2016-08-29 15:21:30', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(118, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 25450.00, '2016-08-29 15:32:29', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(119, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 15000.00, '2016-08-29 15:39:54', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(120, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 45500.00, '2016-08-29 15:41:27', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(121, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 45800.00, '2016-08-29 15:42:31', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(122, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 12500.00, '2016-08-29 15:44:54', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(123, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 125800.00, '2016-08-29 15:47:35', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(124, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 14500.00, '2016-08-29 16:03:41', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(125, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 14500.00, '2016-08-29 16:07:12', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(126, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323I', 'BMW', '98798798', '2000', 215400.00, '2016-08-29 16:08:50', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(127, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323I', 'BMW', '98798798', '2000', 215400.00, '2016-08-29 16:09:24', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(128, 'Monica Airas', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '68798798', '2000', 14500.00, '2016-08-29 16:10:58', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(129, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 14500.00, '2016-08-29 16:17:41', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Telefono - Inmediatamente', NULL, NULL, NULL),
	(130, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 14500.00, '2016-08-29 16:27:30', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(131, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 24500.00, '2016-08-29 16:45:51', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(132, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 0.00, '2016-08-29 16:54:14', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(133, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 0.00, '2016-08-29 16:54:15', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(134, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 0.00, '2016-08-30 08:32:06', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(135, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 0.00, '2016-08-30 09:02:17', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Telefono - Inmediatamente', NULL, NULL, NULL),
	(136, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 0.00, '2016-08-30 09:04:33', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Telefono - Inmediatamente', NULL, NULL, NULL),
	(137, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 0.00, '2016-08-30 09:05:03', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Telefono - Inmediatamente', NULL, NULL, NULL),
	(138, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 0.00, '2016-08-30 09:08:22', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(139, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 0.00, '2016-08-30 09:08:45', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(140, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 0.00, '2016-08-30 09:08:56', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(141, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 0.00, '2016-08-30 09:19:12', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(142, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 0.00, '2016-08-30 09:24:26', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(143, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 0.00, '2016-08-30 09:29:44', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(144, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 0.00, '2016-08-30 09:33:55', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(145, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 0.00, '2016-08-30 09:37:09', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(146, 'Monica Arce', '0', 'monica.arce@unitypromotores.com', 'Automóvil', '323 I', 'BMW', '65465465', '2000', 0.00, '2016-08-30 09:42:39', 'Responsabilidad Civil', 'monica.arce@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(147, 'Jose Raymundo', '0', 'jose.raymundo@unitypromotores.com', 'Automóvil', '323 i', 'BMW', '44667543', '2000', 45000.00, '2016-08-30 15:53:26', 'Seguro Completo', 'jose.raymundo@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente', NULL, NULL, NULL),
	(148, 'Luis Flores', '0', 'luis.flores@unitypromotores.com', 'Automóvil', 'Accord', 'HONDA', '52041839', '2013', 150000.00, '2016-08-30 16:59:20', 'Seguro Completo', 'luis.flores@unitypromotores.com', 'Roble', 'Por Telefono - 5 PM', NULL, NULL, NULL),
	(149, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'Filia', 'Patatata', '45678876', '2001', 46000.00, '2016-08-31 10:11:26', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Telefono - 9 AM', NULL, NULL, NULL),
	(150, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 i', '', '65465465', '2001', 45000.00, '2016-08-31 10:26:05', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Telefono - Inmediatamente', NULL, NULL, NULL),
	(151, 'Monica Arce', '0', 'erik.castaneda@unitypromotores.com', 'Automóvil', '323 I', '', '65465465', '2001', 50000.00, '2016-08-31 11:07:57', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Telefono - Inmediatamente', NULL, NULL, NULL),
	(152, 'Jennifer', '0', 'jennifer.wiesner@unitypromotores.com', 'Automóvil', 'saber', '', '12345678', '2005', 100000.00, '2016-08-31 11:18:34', 'Seguro Completo', 'jennifer.wiesner@unitypromotores.com', 'Roble', 'Por Telefono - Inmediatamente', NULL, NULL, NULL);
/*!40000 ALTER TABLE `trans_correosenviados` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
