-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2019 at 12:06 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `sample_table_1`
--

CREATE TABLE IF NOT EXISTS `sample_table_1` (
`id` int(16) NOT NULL,
  `ref_name` varchar(250) NOT NULL,
  `description` varchar(2000) NOT NULL DEFAULT '',
  `user_id` int(16) NOT NULL,
  `group_id` int(16) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_accessed` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10363 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample_table_1`
--

INSERT INTO `sample_table_1` (`id`, `ref_name`, `description`, `user_id`, `group_id`, `date_created`, `date_accessed`, `date_modified`, `date_deleted`) VALUES
(10001, 'SBC554', 'GEORGETOWN', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10002, 'SBC555', 'GEPPS CROSS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10003, 'SBC556', 'GEPPS CROSS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10004, 'SBC557', 'GERANIUM', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10005, 'SBC558', 'GERANIUM PLAINS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10006, 'SBC559', 'GERARD', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10007, 'SBC560', 'GERMAN CREEK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10008, 'SBC561', 'GERMAN FLAT', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10009, 'SBC562', 'GERMEIN BAY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10010, 'SBC563', 'GIFFORD HILL', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10011, 'SBC564', 'GILBERTON', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10012, 'SBC565', 'GILES CORNER', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10013, 'SBC566', 'GILLENTOWN', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10014, 'SBC567', 'GILLES PLAINS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10015, 'SBC568', 'GILLES PLAINS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10016, 'SBC569', 'GILLES PLAINS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10017, 'SBC570', 'GILLMAN', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10018, 'SBC571', 'GLADSTONE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10019, 'SBC572', 'GLANDORE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10020, 'SBC573', 'GLANDORE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10021, 'SBC574', 'GLANVILLE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10022, 'SBC575', 'GLEN OSMOND', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10023, 'SBC576', 'GLEN OSMOND', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10024, 'SBC577', 'GLENALTA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10025, 'SBC578', 'GLENBURNIE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10026, 'SBC579', 'GLENBURNIE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10027, 'SBC580', 'GLENCOE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10028, 'SBC581', 'GLENDAMBO', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10029, 'SBC582', 'GLENELG', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10030, 'SBC583', 'GLENELG EAST', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10031, 'SBC584', 'GLENELG NORTH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10032, 'SBC585', 'GLENELG NORTH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10033, 'SBC586', 'GLENELG SOUTH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10034, 'SBC587', 'GLENGOWRIE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10035, 'SBC588', 'GLENROY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10036, 'SBC589', 'GLENSIDE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10037, 'SBC590', 'GLENUNGA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10038, 'SBC591', 'GLOBE DERBY PARK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10039, 'SBC592', 'GLOSSOP', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10040, 'SBC593', 'GLYNDE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10041, 'SBC594', 'GOLDEN GROVE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10042, 'SBC595', 'GOLDEN GROVE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10043, 'SBC596', 'GOLDEN HEIGHTS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10044, 'SBC597', 'GOMERSAL', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10045, 'SBC598', 'GOOD HOPE LANDING', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10046, 'SBC599', 'GOODWOOD', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10047, 'SBC600', 'GOODWOOD', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10048, 'SBC601', 'GOOLWA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10049, 'SBC602', 'GOOLWA BEACH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10050, 'SBC603', 'GOOLWA NORTH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10051, 'SBC604', 'GOOLWA SOUTH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10052, 'SBC605', 'GOSSE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10053, 'SBC606', 'GOULD CREEK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10054, 'SBC607', 'GOULD CREEK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10055, 'SBC608', 'GOULD CREEK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10056, 'SBC609', 'GOYDER', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10057, 'SBC610', 'GRACE PLAINS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10058, 'SBC611', 'GRACE PLAINS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10059, 'SBC612', 'GRANGE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10060, 'SBC613', 'GRANGE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10061, 'SBC614', 'GREEN FIELDS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10062, 'SBC615', 'GREEN HILLS RANGE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10063, 'SBC616', 'GREEN PATCH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10064, 'SBC617', 'GREENACRES', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10065, 'SBC618', 'GREENHILL', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10066, 'SBC619', 'GREENOCK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10067, 'SBC620', 'GREENOCK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10068, 'SBC621', 'GREENWAYS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10069, 'SBC622', 'GREENWITH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10070, 'SBC623', 'GREENWITH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10071, 'SBC624', 'GULFVIEW HEIGHTS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10072, 'SBC625', 'GULFVIEW HEIGHTS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10073, 'SBC626', 'GULFVIEW HEIGHTS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10074, 'SBC627', 'GULNARE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10075, 'SBC628', 'GUM CREEK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10076, 'SBC629', 'GUMERACHA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10077, 'SBC630', 'GURRA GURRA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10078, 'SBC631', 'GURRA GURRA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10079, 'SBC632', 'HACKHAM', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10080, 'SBC633', 'HACKHAM WEST', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10081, 'SBC634', 'HACKLINS CORNER', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10082, 'SBC635', 'HACKNEY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10083, 'SBC636', 'HAHNDORF', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10084, 'SBC637', 'HAHNDORF', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10085, 'SBC638', 'HAINES', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10086, 'SBC639', 'HALBURY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10087, 'SBC640', 'HALBURY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10088, 'SBC641', 'HALIDON', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10089, 'SBC642', 'HALLELUJAH HILLS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10090, 'SBC643', 'HALLETT', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10091, 'SBC644', 'HALLETT COVE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10092, 'SBC645', 'HAMILTON', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10093, 'SBC646', 'HAMLEY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10094, 'SBC647', 'HAMLEY BRIDGE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10095, 'SBC648', 'HAMLEY BRIDGE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10096, 'SBC649', 'HAMMOND', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10097, 'SBC650', 'HAMMOND', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10098, 'SBC651', 'HAMPDEN', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10099, 'SBC652', 'HAMPSTEAD GARDENS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10100, 'SBC653', 'HANSBOROUGH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10101, 'SBC654', 'HANSBOROUGH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10102, 'SBC655', 'HANSON', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10103, 'SBC656', 'HAPPY VALLEY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10104, 'SBC657_2', 'HAPPY VALLEY_2', 1, 10, '2019-06-03 20:30:29', NULL, '2019-06-04 02:41:14', NULL),
(10105, 'SBC658_3', 'HAPPY VALLEY_3', 1, 10, '2019-06-03 20:30:29', NULL, '2019-06-04 02:41:23', NULL),
(10106, 'SBC659', 'HARDWICKE BAY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10107, 'SBC660', 'HARDY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10108, 'SBC661', 'HARROGATE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10109, 'SBC662', 'HART', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10110, 'SBC663', 'HARTLEY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10111, 'SBC664', 'HARTLEY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10112, 'SBC665', 'HASLAM', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10113, 'SBC666', 'HATHERLEIGH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10114, 'SBC667', 'HAWKER', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10115, 'SBC668', 'HAWKER', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10116, 'SBC669', 'HAWKER', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10117, 'SBC670', 'HAWSON', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10118, 'SBC671', 'HAWTHORN', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10119, 'SBC672', 'HAWTHORNDENE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10120, 'SBC673', 'HAY FLAT', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10121, 'SBC674', 'HAY VALLEY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10122, 'SBC675', 'HAYBOROUGH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10123, 'SBC676', 'HAYBOROUGH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10124, 'SBC677', 'HAZELWOOD PARK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10125, 'SBC678', 'HEATHFIELD', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10126, 'SBC679', 'HEATHPOOL', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10127, 'SBC680', 'HECTORVILLE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10128, 'SBC681', 'HENDON', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10129, 'SBC682', 'HENLEY BEACH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10130, 'SBC683', 'HENLEY BEACH SOUTH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10131, 'SBC684', 'HEWETT', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10132, 'SBC685', 'HIGHBURY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10133, 'SBC686', 'HIGHBURY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10134, 'SBC687', 'HIGHGATE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10135, 'SBC688', 'HIGHLAND VALLEY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10136, 'SBC689', 'HILL RIVER', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10137, 'SBC690', 'HILLBANK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10138, 'SBC691', 'HILLCREST', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10139, 'SBC692', 'HILLIER', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10140, 'SBC693', 'HILLIER', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10141, 'SBC694', 'HILLTOWN', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10142, 'SBC695', 'HILTON', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10143, 'SBC696', 'HINDMARSH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10144, 'SBC697', 'HINDMARSH ISLAND', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10145, 'SBC698', 'HINDMARSH TIERS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10146, 'SBC699', 'HINDMARSH VALLEY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10147, 'SBC700', 'HOLDEN HILL', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10148, 'SBC701', 'HOLDEN HILL', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10149, 'SBC702', 'HOLDER', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10150, 'SBC703', 'HOLDER SIDING', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10151, 'SBC704', 'HONITON', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10152, 'SBC705', 'HOPE FOREST', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10153, 'SBC706', 'HOPE FOREST', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10154, 'SBC707', 'HOPE GAP', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10155, 'SBC708', 'HOPE VALLEY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10156, 'SBC709', 'HOPE VALLEY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10157, 'SBC710', 'HOPE VALLEY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10158, 'SBC711', 'HOPE VALLEY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10159, 'SBC712', 'HORNSDALE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10160, 'SBC713', 'HORSNELL GULLY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10161, 'SBC714', 'HOSKIN CORNER', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10162, 'SBC715', 'HOUGHTON', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10163, 'SBC716', 'HOUGHTON', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10164, 'SBC717', 'HOVE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10165, 'SBC718', 'HOYLETON', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10166, 'SBC719', 'HOYLETON', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10167, 'SBC720', 'HOYLETON', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10168, 'SBC721', 'HUDDLESTON', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10169, 'SBC722', 'HUMBUG SCRUB', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10170, 'SBC723', 'HUMBUG SCRUB', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10171, 'SBC724', 'HUNTFIELD HEIGHTS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10172, 'SBC725', 'HYDE PARK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10173, 'SBC726', 'HYNAM', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10174, 'SBC727', 'IGA WARTA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10175, 'SBC728', 'INDULKANA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10176, 'SBC729', 'INGLE FARM', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10177, 'SBC730', 'INGLEWOOD', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10178, 'SBC731', 'INGLEWOOD', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10179, 'SBC732', 'INKERMAN', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10180, 'SBC733', 'INKSTER', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10181, 'SBC734', 'INMAN VALLEY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10182, 'SBC735', 'INMAN VALLEY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10183, 'SBC736', 'INNAMINCKA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10184, 'SBC737', 'INNESTON', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10185, 'SBC738', 'INVERBRACKIE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10186, 'SBC739', 'IRON BARON', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10187, 'SBC740', 'IRON KNOB', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10188, 'SBC741', 'IRONBANK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10189, 'SBC742', 'IRONBANK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10190, 'SBC743', 'IRONSTONE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10191, 'SBC744', 'ISLAND BEACH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10192, 'SBC745', 'JABUK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10193, 'SBC746', 'JABUK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10194, 'SBC747', 'JAMES WELL', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10195, 'SBC748', 'JAMESTOWN', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10196, 'SBC749', 'JERICHO', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10197, 'SBC750', 'JERUSALEM', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10198, 'SBC751', 'JERVOIS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10199, 'SBC752', 'JOANNA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10200, 'SBC753', 'JOHNBURGH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10201, 'SBC754', 'JOSLIN', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10202, 'SBC755', 'JULANKA HOLDINGS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10203, 'SBC756', 'JULIA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10204, 'SBC757', 'JUPITER CREEK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10205, 'SBC758', 'KADINA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10206, 'SBC759', 'KAINTON', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10207, 'SBC760', 'KALANBI', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10208, 'SBC761', 'KALANGADOO', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10209, 'SBC762', 'KALBEEBA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10210, 'SBC763', 'KALDOONERA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10211, 'SBC764', 'KALKA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10212, 'SBC765', 'KALLORA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10213, 'SBC766', 'KANGARILLA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10214, 'SBC767', 'KANGARILLA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10215, 'SBC768', 'KANGAROO FLAT', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10216, 'SBC769', 'KANGAROO HEAD', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10217, 'SBC770', 'KANGAROO INN', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10218, 'SBC771', 'KANMANTOO', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10219, 'SBC772', 'KANNI', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10220, 'SBC773', 'KANPI', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10221, 'SBC774', 'KANYAKA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10222, 'SBC775', 'KAPINNIE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10223, 'SBC776', 'KAPPAWANTA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10224, 'SBC777', 'KAPUNDA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10225, 'SBC778', 'KARATTA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10226, 'SBC779', 'KARCULTABY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10227, 'SBC780', 'KARCULTABY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10228, 'SBC781', 'KARKOO', 1, 10, '2019-06-03 20:30:29', NULL, '2019-06-03 22:57:04', NULL),
(10229, 'SBC782', 'KAROONDA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10230, 'SBC783', 'KARTE', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10231, 'SBC784', 'KEILIRA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10232, 'SBC785', 'KEITH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10233, 'SBC786', 'KELLIDIE BAY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10234, 'SBC787', 'KELLY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10235, 'SBC788', 'KENSINGTON', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10236, 'SBC789', 'KENSINGTON GARDENS', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10237, 'SBC790', 'KENSINGTON PARK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10238, 'SBC791', 'KENT TOWN', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10239, 'SBC792', 'KEPA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10240, 'SBC793', 'KEPPOCH', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10241, 'SBC794', 'KERSBROOK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10242, 'SBC795', 'KESWICK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10243, 'SBC796', 'KESWICK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10244, 'SBC797', 'KEYNETON', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10245, 'SBC798', 'KI KI', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10246, 'SBC799', 'KIANA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10247, 'SBC800', 'KIDMAN PARK', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10248, 'SBC801', 'KIELPA', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10249, 'SBC802', 'KILBURN', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10250, 'SBC803', 'KILKENNY', 1, 10, '2019-06-03 20:30:29', NULL, NULL, NULL),
(10354, '', '', 1, 10, '2019-06-05 22:37:19', NULL, NULL, '2019-06-15 13:36:41'),
(10355, 'sdfsd', 'sdfsdf', 1, 10, '2019-06-15 13:35:15', NULL, NULL, '2019-06-15 13:36:31'),
(10356, '', '', 1, 10, '2019-06-15 13:36:53', NULL, NULL, NULL),
(10357, 'vjn7y', 'vbnvbn', 1, 10, '2019-06-15 16:23:21', NULL, '2019-06-15 16:23:26', NULL),
(10358, 'asd', 'asfc', 1, 10, '2019-06-15 16:23:32', NULL, NULL, NULL),
(10359, 'asdasddd', 'asdasd', 1, 10, '2019-06-15 16:23:41', NULL, '2019-06-15 16:23:44', NULL),
(10360, 'zxv', 'zxv', 1, 10, '2019-06-15 16:28:22', NULL, '2019-06-15 16:28:49', NULL),
(10361, 'xcv', 'xcv', 1, 10, '2019-06-15 17:09:09', NULL, NULL, NULL),
(10362, 'xcvxc', 'vvvvv', 1, 10, '2019-06-15 17:09:16', NULL, '2019-06-15 17:09:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `table_activity_log`
--

CREATE TABLE IF NOT EXISTS `table_activity_log` (
`id` int(16) NOT NULL,
  `activity_type` varchar(50) NOT NULL,
  `target_table` varchar(50) NOT NULL,
  `target_id` int(16) NOT NULL,
  `data_before_activity` text NOT NULL,
  `user_id` int(16) NOT NULL,
  `group_id` int(16) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_accessed` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_activity_log`
--

INSERT INTO `table_activity_log` (`id`, `activity_type`, `target_table`, `target_id`, `data_before_activity`, `user_id`, `group_id`, `date_created`, `date_accessed`, `date_modified`, `date_deleted`) VALUES
(1, 'update', 'sample_table_1', 34, '[]', 1, 10, '2019-06-11 23:16:53', NULL, NULL, NULL),
(2, 'update', 'sample_table_1', 8, '{"cf_id":"8","supplierid":"","suburbid":null,"company_name":"KAPPAWANTA","sup_id":null,"address1":"KAPPAWANTA","address2":"KAPPAWANTA","suburb":"KAPPAWANTA","state":"KAPPAWANTA","postcode":"KAPPAWANTA","phone":"KAPPAWANTA","fax":"KAPPAWANTA","email":"KAPPAWANTA","website":"KAPPAWANTA","lastname":"KAPPAWANTA","firstname":"KAPPAWANTA","title":"KAPPAWANTA","mobile":"KAPPAWANTA","notes":"KAPPAWANTA","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-11 23:20:54', NULL, NULL, NULL),
(3, 'update', 'sample_table_1', 8, '{"cf_id":"8","supplierid":"","suburbid":null,"company_name":"company wang 123","sup_id":null,"address1":"mandaue city 123","address2":"KAPPAWANTA","suburb":"KAPPAWANTA","state":"KAPPAWANTA","postcode":"KAPPAWANTA","phone":"1111111","fax":"KAPPAWANTA","email":"KAPPAWANTA","website":"KAPPAWANTA","lastname":"KAPPAWANTA","firstname":"KAPPAWANTA","title":"KAPPAWANTA","mobile":"222222","notes":"KAPPAWANTA","date_deleted":null,"date_modified":"2019-06-11"}', 1, 10, '2019-06-11 23:39:19', NULL, NULL, NULL),
(4, 'update', 'sample_table_1', 11, '{"cf_id":"11","supplierid":"","suburbid":null,"company_name":"processResultSaveSampleSectionDataEntryForm","sup_id":null,"address1":"processResultSaveSampleSectionDataEntryForm","address2":"processResultSaveSampleSectionDataEntryForm","suburb":"processResultSaveSampleSectionDataEntryForm","state":"processResultSaveSampleSectionDataEntryForm","postcode":"processResultSaveSampleSectionDataEntryForm","phone":"processResultSaveSampleSectionDataEntryForm","fax":"processResultSaveSampleSectionDataEntryForm","email":"processResultSaveSampleSectionDataEntryForm","website":"processResultSaveSampleSectionDataEntryForm","lastname":"processResultSaveSampleSectionDataEntryForm","firstname":"processResultSaveSampleSectionDataEntryForm","title":"processResultSaveSampleSectionDataEntryForm","mobile":"processResultSaveSampleSectionDataEntryForm","notes":"processResultSaveSampleSectionDataEntryForm","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-11 23:40:15', NULL, NULL, NULL),
(5, 'update', 'sample_table_1', 8, '{"cf_id":"8","supplierid":"","suburbid":null,"company_name":"Company Test","sup_id":null,"address1":"cebu city","address2":"KAPPAWANTA","suburb":"KAPPAWANTA","state":"KAPPAWANTA","postcode":"KAPPAWANTA","phone":"09346906","fax":"KAPPAWANTA","email":"KAPPAWANTA","website":"KAPPAWANTA","lastname":"KAPPAWANTA","firstname":"KAPPAWANTA","title":"KAPPAWANTA","mobile":"09295265903","notes":"KAPPAWANTA","date_deleted":null,"date_modified":"2019-06-11"}', 1, 10, '2019-06-12 14:07:50', NULL, NULL, NULL),
(6, 'update', 'sample_table_1', 35, '{"cf_id":"35","supplierid":"","suburbid":"","company_name":"","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-12 14:23:22', NULL, NULL, NULL),
(7, 'update', 'sample_table_1', 11, '{"cf_id":"11","supplierid":"","suburbid":null,"company_name":"Test","sup_id":null,"address1":"mandaue city","address2":"processResultSaveSampleSectionDataEntryForm","suburb":"processResultSaveSampleSectionDataEntryForm","state":"processResultSaveSampleSectionDataEntryForm","postcode":"processResultSaveSampleSectionDataEntryForm","phone":"8888","fax":"processResultSaveSampleSectionDataEntryForm","email":"processResultSaveSampleSectionDataEntryForm","website":"processResultSaveSampleSectionDataEntryForm","lastname":"processResultSaveSampleSectionDataEntryForm","firstname":"processResultSaveSampleSectionDataEntryForm","title":"processResultSaveSampleSectionDataEntryForm","mobile":"999999","notes":"processResultSaveSampleSectionDataEntryForm","date_created":null,"date_deleted":null,"date_modified":"2019-06-11"}', 1, 10, '2019-06-12 22:45:58', NULL, NULL, NULL),
(8, 'update', 'sample_table_1', 8, '{"cf_id":"8","supplierid":"","suburbid":null,"company_name":"Company Test","sup_id":null,"address1":"Mandaue city","address2":"KAPPAWANTA","suburb":"KAPPAWANTA","state":"KAPPAWANTA","postcode":"KAPPAWANTA","phone":"88888","fax":"KAPPAWANTA","email":"KAPPAWANTA","website":"KAPPAWANTA","lastname":"KAPPAWANTA","firstname":"KAPPAWANTA","title":"KAPPAWANTA","mobile":"999999","notes":"KAPPAWANTA","date_created":null,"date_deleted":null,"date_modified":"2019-06-12"}', 1, 10, '2019-06-12 22:46:26', NULL, NULL, NULL),
(9, 'update', 'sample_table_1', 8, '{"cf_id":"8","supplierid":"","suburbid":null,"company_name":"Company Test EDit","sup_id":null,"address1":"Mandaue city","address2":"KAPPAWANTA","suburb":"","state":"KAPPAWANTA","postcode":"KAPPAWANTA","phone":"","fax":"KAPPAWANTA","email":"","website":"KAPPAWANTA","lastname":"supplier_section_save","firstname":"supplier_section_save","title":"mr","mobile":"","notes":"KAPPAWANTA","date_created":null,"date_deleted":null,"date_modified":"2019-06-12"}', 1, 10, '2019-06-12 22:47:32', NULL, NULL, NULL),
(10, 'update', 'sample_table_1', 11, '{"cf_id":"11","supplierid":"","suburbid":null,"company_name":"Test","sup_id":null,"address1":"mandaue city","address2":"processResultSaveSampleSectionDataEntryForm","suburb":"AGERY","state":"SA","postcode":"5558","phone":"","fax":"processResultSaveSampleSectionDataEntryForm","email":"","website":"processResultSaveSampleSectionDataEntryForm","lastname":"update_supplier","firstname":"update_supplier","title":"ms","mobile":"","notes":"processResultSaveSampleSectionDataEntryForm","date_created":null,"date_deleted":null,"date_modified":"2019-06-12"}', 1, 10, '2019-06-12 22:49:32', NULL, NULL, NULL),
(11, 'update', 'sample_table_1', 36, '{"cf_id":"36","supplierid":"","suburbid":"","company_name":"","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":" 03.4545.4455","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":null,"date_deleted":null,"date_modified":null}', 1, 10, '2019-06-12 22:52:37', NULL, NULL, NULL),
(12, 'update', 'sample_table_1', 16, '{"cf_id":"16","supplierid":"","suburbid":null,"company_name":"test","sup_id":null,"address1":"mr","address2":"test","suburb":"test","state":"test","postcode":"test","phone":"test","fax":"test","email":"9448","website":"test","lastname":"test","firstname":"test","title":"test","mobile":"test","notes":"test","date_created":null,"date_deleted":null,"date_modified":null}', 1, 10, '2019-06-12 23:06:38', NULL, NULL, NULL),
(13, 'update', 'sample_table_1', 16, '{"cf_id":"16","supplierid":"16","suburbid":"9450","company_name":"test","sup_id":null,"address1":"mr","address2":"test","suburb":"AGERY","state":"SA","postcode":"5558","phone":"33 4444 4444","fax":"test","email":"","website":"test","lastname":"test","firstname":"test","title":"ms","mobile":"3335 333 333","notes":"test","date_created":null,"date_deleted":null,"date_modified":"2019-06-12"}', 1, 10, '2019-06-12 23:09:40', NULL, NULL, NULL),
(14, 'update', 'sample_table_1', 16, '{"cf_id":"16","supplierid":"16","suburbid":"","company_name":"test ediy","sup_id":null,"address1":"mr","address2":"test","suburb":"","state":"SA","postcode":"5558","phone":"33 4444 4444","fax":"test","email":"","website":"test","lastname":"","firstname":"","title":"ms","mobile":"3335 333 333","notes":"test","date_created":null,"date_deleted":null,"date_modified":"2019-06-12"}', 1, 10, '2019-06-12 23:09:55', NULL, NULL, NULL),
(15, 'update', 'sample_table_1', 14, '{"cf_id":"14","supplierid":"","suburbid":null,"company_name":"SBC776","sup_id":null,"address1":"SBC776","address2":"SBC776","suburb":"SBC776","state":"SBC776","postcode":"SBC776","phone":"SBC776","fax":"SBC776","email":"SBC776","website":"SBC776","lastname":"SBC776","firstname":"SBC776","title":"SBC776","mobile":"SBC776","notes":"SBC776","date_created":null,"date_deleted":null,"date_modified":null}', 1, 10, '2019-06-12 23:10:43', NULL, NULL, NULL),
(16, 'update', 'sample_table_1', 16, '{"cf_id":"16","supplierid":"16","suburbid":"","company_name":"test edit","sup_id":null,"address1":"mr","address2":"test","suburb":"","state":"SA","postcode":"5558","phone":"33 4444 4444","fax":"test","email":"","website":"test","lastname":"","firstname":"","title":"ms","mobile":"3335 333 333","notes":"test","date_created":null,"date_deleted":null,"date_modified":"2019-06-12"}', 1, 10, '2019-06-12 23:12:38', NULL, NULL, NULL),
(17, 'update', 'sample_table_1', 14, '{"cf_id":"14","supplierid":"14","suburbid":"9450","company_name":"SBC776 update","sup_id":null,"address1":"SBC776  update","address2":"SBC776 update","suburb":"AGERY","state":"SA","postcode":"5558","phone":"","fax":"SBC776","email":"","website":"SBC776","lastname":" update","firstname":" update","title":"","mobile":"","notes":"SBC776","date_created":null,"date_deleted":null,"date_modified":"2019-06-12"}', 1, 10, '2019-06-12 23:16:38', NULL, NULL, NULL),
(18, 'update', 'sample_table_1', 16, '{"cf_id":"16","supplierid":"16","suburbid":"","company_name":"test update","sup_id":null,"address1":"mr","address2":"test","suburb":"","state":"SA","postcode":"5558","phone":"33 4444 4444","fax":"test","email":"","website":"test","lastname":"","firstname":"","title":"ms","mobile":"3335 333 333","notes":"test","date_created":null,"date_deleted":null,"date_modified":"2019-06-12"}', 1, 10, '2019-06-12 23:16:51', NULL, NULL, NULL),
(19, 'update', 'sample_table_1', 57, '{"cf_id":"57","supplierid":"","suburbid":"9449","company_name":"test","sup_id":null,"address1":"test","address2":"test","suburb":"AGERY ADELAIDE","state":"SA","postcode":"5000","phone":"","fax":"test","email":"","website":"tset","lastname":"tset","firstname":"test","title":"ms","mobile":"","notes":"tset","date_created":null,"date_deleted":null,"date_modified":null}', 1, 10, '2019-06-12 23:25:46', NULL, NULL, NULL),
(20, 'update', 'sample_table_1', 57, '{"cf_id":"57","supplierid":"57","suburbid":"","company_name":"test edit","sup_id":null,"address1":"test","address2":"test","suburb":"","state":"SA","postcode":"5000","phone":"","fax":"test","email":"","website":"tset","lastname":"","firstname":"","title":"ms","mobile":"","notes":"tset","date_created":null,"date_deleted":null,"date_modified":"2019-06-12"}', 1, 10, '2019-06-12 23:58:16', NULL, NULL, NULL),
(21, 'update', 'sample_table_1', 58, '{"cf_id":"58","supplierid":"","suburbid":"9449","company_name":"Final test","sup_id":null,"address1":"Final test","address2":"Final test","suburb":"AGERY ADELAIDE","state":"SA","postcode":"5000","phone":"","fax":"Final test","email":"","website":"Final test","lastname":"Final test","firstname":"Final test","title":"mr","mobile":"","notes":"Final test","date_created":null,"date_deleted":null,"date_modified":null}', 1, 10, '2019-06-13 00:03:30', NULL, NULL, NULL),
(22, 'update', 'sample_table_1', 59, '{"cf_id":"59","supplierid":"","suburbid":"9449","company_name":"test edit 8888","sup_id":null,"address1":"test edit","address2":"test edit","suburb":"AGERY ADELAIDE","state":"SA","postcode":"5000","phone":"","fax":"test edit","email":"","website":"test edit","lastname":"test edit","firstname":"test edit","title":"ms","mobile":"","notes":"test edit","date_created":null,"date_deleted":null,"date_modified":null}', 1, 10, '2019-06-13 20:03:20', NULL, NULL, NULL),
(23, 'update', 'sample_table_1', 61, '{"cf_id":"61","supplierid":"","suburbid":"9449","company_name":"","sup_id":null,"address1":"","address2":"","suburb":"AGERY ADELAIDE","state":"SA","postcode":"5000","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-13","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-13 21:17:17', NULL, NULL, NULL),
(24, 'update', 'sample_table_1', 19, '{"cf_id":"19","supplierid":"","suburbid":"9449","company_name":"cvb","sup_id":null,"address1":"ms","address2":"sdg","suburb":"sdg","state":"sdg","postcode":"sdgsdg","phone":"sdg","fax":"sdg","email":"ADELAIDE","website":"sdg","lastname":"sdg","firstname":"sdg","title":"sdg","mobile":"sdg","notes":"sdg","date_created":null,"date_deleted":null,"date_modified":null}', 1, 10, '2019-06-13 21:18:24', NULL, NULL, NULL),
(25, 'update', 'sample_table_1', 63, '{"cf_id":"63","supplierid":"","suburbid":"9448","company_name":"Final test","sup_id":null,"address1":"Final test","address2":"Final test","suburb":"AGERY ABERFOYLE PARK","state":"SA","postcode":"5159","phone":"","fax":"Final test","email":"","website":"Final test","lastname":"Final test","firstname":"Final test","title":"mr","mobile":"","notes":"Final test","date_created":"2019-06-13","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-13 21:32:03', NULL, NULL, NULL),
(26, 'update', 'sample_table_1', 64, '{"cf_id":"64","supplierid":"","suburbid":"","company_name":"sasdgf","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-13","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-13 21:44:03', NULL, NULL, NULL),
(27, 'update', 'sample_table_1', 64, '{"cf_id":"64","supplierid":"64","suburbid":"9448","company_name":"sasdgf","sup_id":null,"address1":"","address2":"","suburb":"AGERY ABERFOYLE PARK","state":"SA","postcode":"5159","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-13","date_deleted":null,"date_modified":"2019-06-13"}', 1, 10, '2019-06-13 21:44:30', NULL, NULL, NULL),
(28, 'update', 'sample_table_1', 14, '{"cf_id":"14","supplierid":"14","suburbid":"","company_name":"SBC776 update 1","sup_id":null,"address1":"SBC776  update 2","address2":"SBC776 update 3","suburb":"","state":"SA","postcode":"5558","phone":"","fax":"SBC776","email":"","website":"SBC776","lastname":"","firstname":"","title":"","mobile":"","notes":"SBC776","date_created":null,"date_deleted":null,"date_modified":"2019-06-12"}', 1, 10, '2019-06-13 21:50:31', NULL, NULL, NULL),
(29, 'update', 'sample_table_1', 63, '{"cf_id":"63","supplierid":"63","suburbid":"","company_name":"Final test","sup_id":null,"address1":"Final test","address2":"Final test","suburb":"","state":"SA","postcode":"5159","phone":"99 9999 9999","fax":"Final test","email":"","website":"Final test","lastname":"Final test","firstname":"Final test","title":"mr","mobile":"9999 999 999","notes":"Final test","date_created":"2019-06-13","date_deleted":null,"date_modified":"2019-06-13"}', 1, 10, '2019-06-13 21:51:20', NULL, NULL, NULL),
(30, 'update', 'sample_table_1', 64, '{"cf_id":"64","supplierid":"64","suburbid":"9451","company_name":"sasdgf","sup_id":null,"address1":"","address2":"","suburb":"AGERY TEST","state":"SA TEST","postcode":"5559","phone":"44 5555 5555","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"5555 555 777","notes":"","date_created":"2019-06-13","date_deleted":null,"date_modified":"2019-06-13"}', 1, 10, '2019-06-13 21:51:36', NULL, NULL, NULL),
(31, 'update', 'sample_table_1', 57, '{"cf_id":"57","supplierid":"57","suburbid":"","company_name":"test edit","sup_id":null,"address1":"test","address2":"test","suburb":"","state":"SA","postcode":"5000","phone":"33 4444 4444","fax":"test","email":"","website":"tset","lastname":"","firstname":"","title":"ms","mobile":"","notes":"tset","date_created":null,"date_deleted":null,"date_modified":"2019-06-12"}', 1, 10, '2019-06-13 21:51:44', NULL, NULL, NULL),
(32, 'update', 'sample_table_1', 58, '{"cf_id":"58","supplierid":"58","suburbid":"","company_name":"Final test","sup_id":null,"address1":"Final test","address2":"Final test","suburb":"","state":"SA","postcode":"5000","phone":"44 5555 5555","fax":"Final test","email":"","website":"Final test","lastname":"","firstname":"","title":"mr","mobile":"","notes":"Final test","date_created":null,"date_deleted":null,"date_modified":"2019-06-13"}', 1, 10, '2019-06-13 21:51:56', NULL, NULL, NULL),
(33, 'update', 'sample_table_1', 66, '{"cf_id":"66","supplierid":"","suburbid":"9451","company_name":"Final test","sup_id":null,"address1":"","address2":"","suburb":"AGERY TEST","state":"SA TEST","postcode":"5559","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-13","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-13 21:58:41', NULL, NULL, NULL),
(34, 'update', 'sample_table_1', 67, '{"cf_id":"67","supplierid":"","suburbid":"9450","company_name":"Final test 123","sup_id":null,"address1":"Final test","address2":"SBC776 update 3","suburb":"AGERY","state":"SA","postcode":"5558","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-13","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-13 22:15:30', NULL, NULL, NULL),
(35, 'update', 'sample_table_1', 68, '{"cf_id":"68","supplierid":"","suburbid":"9448","company_name":"Final test","sup_id":null,"address1":"Final test","address2":"Final test","suburb":"AGERY ABERFOYLE PARK","state":"SA","postcode":"5159","phone":"","fax":"Final test","email":"","website":"Final test","lastname":"Final test","firstname":"Final test","title":"ms","mobile":"","notes":"Final test","date_created":"2019-06-14","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-14 20:12:35', NULL, NULL, NULL),
(36, 'update', 'sample_table_1', 69, '{"cf_id":"69","supplierid":"","suburbid":"9449","company_name":"try test from leong want","sup_id":null,"address1":"try test from leong want","address2":"try test from leong want","suburb":"AGERY ADELAIDE","state":"SA","postcode":"5000","phone":"","fax":"try test from leong want","email":"","website":"try test from leong want","lastname":"try test from leong want","firstname":"try test from leong want","title":"ms","mobile":"","notes":"try test from leong wanttry test from leong wanttry test from leong wanttry test from leong want","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 09:32:10', NULL, NULL, NULL),
(37, 'update', 'sample_table_1', 66, '{"cf_id":"66","supplierid":"66","suburbid":"9448","company_name":"Final test","sup_id":null,"address1":"Final test","address2":"Final test","suburb":"AGERY ABERFOYLE PARK","state":"SA","postcode":"5159","phone":"44 5555 5555","fax":"Final test","email":"Testing@gmail.com","website":"Final test","lastname":"test","firstname":"test","title":"mr","mobile":"9999 999 999","notes":"sdgsdgsdg","date_created":"2019-06-13","date_deleted":null,"date_modified":"2019-06-13"}', 1, 10, '2019-06-15 10:38:55', NULL, NULL, NULL),
(38, 'update', 'sample_table_1', 24, '{"cf_id":"24","supplierid":"","suburbid":"9448","company_name":"Testing 123","sup_id":null,"address1":"Testing 123","address2":"Testing 123","suburb":"ABERFOYLE PARK","state":"Testing 123","postcode":"Testing 123","phone":"Testing 123","fax":"Testing 123","email":"Testing 123","website":"Testing 123","lastname":"Testing 123","firstname":"Testing 123","title":"mr","mobile":"Testing 123","notes":"Testing 123","date_created":null,"date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 10:45:00', NULL, NULL, NULL),
(39, 'update', 'sample_table_1', 24, '{"cf_id":"24","supplierid":"24","suburbid":"9449","company_name":"Testing 123","sup_id":null,"address1":"Testing 123","address2":"Testing 123","suburb":"AGERY ADELAIDE","state":"SA","postcode":"5000","phone":"55 5556 6666","fax":"Testing 123","email":"Testing@gmail.com","website":"Testing 123","lastname":"Testing 123","firstname":"Testing 123","title":"mr","mobile":"9999 999 999","notes":"Testing 123","date_created":null,"date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 10:45:11', NULL, NULL, NULL),
(40, 'update', 'sample_table_1', 69, '{"cf_id":"69","supplierid":"69","suburbid":"9451","company_name":"try test from leong want","sup_id":null,"address1":"try test from leong want","address2":"try test from leong want","suburb":"AGERY TEST","state":"SA TEST","postcode":"5559","phone":"99 9999 9999","fax":"try test from leong want","email":"Testing@gmail.com","website":"try test from leong want","lastname":"try test from leong want","firstname":"try test from leong want","title":"ms","mobile":"5555 555 777","notes":"try test from leong wanttry test from leong wanttry test from leong wanttry test from leong want","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 10:45:27', NULL, NULL, NULL),
(41, 'update', 'sample_table_1', 69, '{"cf_id":"69","supplierid":"69","suburbid":"9448","company_name":"try test from leong want","sup_id":null,"address1":"try test from leong want","address2":"try test from leong want","suburb":"AGERY ABERFOYLE PARK","state":"SA","postcode":"5159","phone":"99 9999 9999","fax":"try test from leong want","email":"Testing@gmail.com","website":"try test from leong want","lastname":"try test from leong want","firstname":"try test from leong want","title":"ms","mobile":"5555 555 777","notes":"try test from leong wanttry test from leong wanttry test from leong wanttry test from leong want","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 10:47:16', NULL, NULL, NULL),
(42, 'update', 'sample_table_1', 24, '{"cf_id":"24","supplierid":"24","suburbid":"9451","company_name":"Testing 123","sup_id":null,"address1":"Testing 123","address2":"Testing 123","suburb":"AGERY TEST","state":"SA TEST","postcode":"5559","phone":"55 5556 6666","fax":"Testing 123","email":"Testing@gmail.com","website":"Testing 123","lastname":"Testing 123","firstname":"Testing 123","title":"mr","mobile":"9999 999 999","notes":"Testing 123","date_created":null,"date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 10:47:35', NULL, NULL, NULL),
(43, 'update', 'sample_table_1', 68, '{"cf_id":"68","supplierid":"68","suburbid":"","company_name":"Final test","sup_id":null,"address1":"Final test","address2":"Final test","suburb":"","state":"SA","postcode":"5159","phone":"44 5555 5555","fax":"Final test","email":"Testing@gmail.com","website":"Final test","lastname":"Final test","firstname":"Final test","title":"ms","mobile":"9999 999 999","notes":"Final test","date_created":"2019-06-14","date_deleted":null,"date_modified":"2019-06-14"}', 1, 10, '2019-06-15 12:24:23', NULL, NULL, NULL),
(44, 'update', 'sample_table_1', 68, '{"cf_id":"68","supplierid":"68","suburbid":"9451","company_name":"Final test","sup_id":null,"address1":"Final test","address2":"Final test","suburb":"AGERY TEST","state":"SA TEST","postcode":"5559","phone":"44 5555 5555","fax":"Final test","email":"Testing@gmail.com","website":"Final test","lastname":"Final test","firstname":"Final test","title":"ms","mobile":"9999 999 999","notes":"Final test","date_created":"2019-06-14","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 12:24:29', NULL, NULL, NULL),
(45, 'update', 'sample_table_1', 71, '{"cf_id":"71","supplierid":"","suburbid":"","company_name":"","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 12:30:32', NULL, NULL, NULL),
(46, 'update', 'sample_table_1', 71, '{"cf_id":"71","supplierid":"71","suburbid":"9451","company_name":"Testing again","sup_id":null,"address1":"Testing again","address2":"Testing again","suburb":"AGERY TEST","state":"SA TEST","postcode":"5559","phone":"55 5556 6666","fax":"Testing again","email":"qwertyesting@gmail.com","website":"Testing again","lastname":"Final test","firstname":"Testing again","title":"ms","mobile":"9999 999 999","notes":"Testing againTesting againTesting againTesting againTesting againTesting againTesting againTesting againTesting again","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 12:30:44', NULL, NULL, NULL),
(47, 'update', 'sample_table_1', 71, '{"cf_id":"71","supplierid":"71","suburbid":"","company_name":"Testing again","sup_id":null,"address1":"Testing again","address2":"Testing again","suburb":"AGERY TEST","state":"SA TEST","postcode":"5559","phone":"55 5556 6666","fax":"Testing again","email":"qwertyesting@gmail.com","website":"Testing again","lastname":"Testing again","firstname":"Final test","title":"mr","mobile":"9999 999 999","notes":"Testing againTesting againTesting againTesting againTesting againTesting againTesting againTesting againTesting again","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 12:31:04', NULL, NULL, NULL),
(48, 'update', 'sample_table_1', 71, '{"cf_id":"71","supplierid":"71","suburbid":"9449","company_name":"Testing again","sup_id":null,"address1":"Testing again","address2":"Testing again","suburb":"AGERY ADELAIDE","state":"SA","postcode":"5000","phone":"55 5556 6666","fax":"Testing again","email":"qwertyesting@gmail.com","website":"Testing again","lastname":"Final test","firstname":"Testing again","title":"mr","mobile":"9999 999 999","notes":"Testing againTesting againTesting againTesting againTesting againTesting againTesting againTesting againTesting again","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 12:31:09', NULL, NULL, NULL),
(49, 'update', 'sample_table_1', 71, '{"cf_id":"71","supplierid":"71","suburbid":"","company_name":"Testing again","sup_id":null,"address1":"Testing again","address2":"Testing again","suburb":"AGERY ADELAIDE","state":"SA","postcode":"5000","phone":"55 5556 6666","fax":"Testing again","email":"qwertyesting@gmail.com","website":"Testing again","lastname":"Testing again","firstname":"Final test","title":"ms","mobile":"9999 999 999","notes":"Testing againTesting againTesting againTesting againTesting againTesting againTesting againTesting againTesting again","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 12:34:13', NULL, NULL, NULL),
(50, 'update', 'sample_table_1', 1, '{"cf_id":"1","supplierid":"","suburbid":"9451","company_name":"SBC776 update 1","sup_id":null,"address1":"SBC776 update 1","address2":"SBC776 update 1","suburb":"AGERY TEST","state":"SA TEST","postcode":"5559","phone":"44 5555 5555","fax":"SBC776 update 1","email":"Testing@gmail.com","website":"SBC776 update 1","lastname":"SBC776 update 1","firstname":"SBC776 update 1","title":"ms","mobile":"9999 999 999","notes":"SBC776 update 1SBC776 update 1SBC776 update 1SBC776 update 1SBC776 update 1SBC776 update 1SBC776 update 1","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 12:59:41', NULL, NULL, NULL),
(51, 'update', 'sample_table_1', 1, '{"cf_id":"1","supplierid":"1","suburbid":"9449","company_name":"SBC776 update 1","sup_id":null,"address1":"SBC776 update 1","address2":"SBC776 update 1","suburb":"AGERY ADELAIDE","state":"SA","postcode":"5000","phone":"44 5555 5555","fax":"SBC776 update 1","email":"Testing@gmail.com","website":"SBC776 update 1","lastname":"SBC776 update 1","firstname":"SBC776 update 1","title":"ms","mobile":"9999 999 999","notes":"SBC776 update 1SBC776 update 1SBC776 update 1SBC776 update 1SBC776 update 1SBC776 update 1SBC776 update 1","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 13:00:26', NULL, NULL, NULL),
(52, 'update', 'sample_table_1', 2, '{"cf_id":"2","supplierid":"","suburbid":"9449","company_name":"QWERTY","sup_id":null,"address1":"QWERTY","address2":"QWERTY","suburb":"AGERY ADELAIDE","state":"SA","postcode":"5000","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 13:01:44', NULL, NULL, NULL),
(53, 'update', 'sample_table_1', 3, '{"cf_id":"3","supplierid":"","suburbid":"","company_name":"","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 13:04:55', NULL, NULL, NULL),
(54, 'update', 'sample_table_1', 4, '{"cf_id":"4","supplierid":"","suburbid":"","company_name":"","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 13:07:34', NULL, NULL, NULL),
(55, 'update', 'sample_table_1', 2, '{"cf_id":"2","supplierid":"2","suburbid":"","company_name":"QWERTY","sup_id":null,"address1":"QWERTY","address2":"QWERTY","suburb":"AGERY ADELAIDE","state":"SA","postcode":"5000","phone":"44 5555 5555","fax":"Final test","email":"Testing@gmail.com","website":"SBC776","lastname":"Final test","firstname":"Final test","title":"ms","mobile":"5555 555 777","notes":"QWERTYQWERTYQWERTYQWERTYQWERTY","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 13:07:55', NULL, NULL, NULL),
(56, 'update', 'sample_table_1', 2, '{"cf_id":"2","supplierid":"2","suburbid":"9449","company_name":"QWERTY","sup_id":null,"address1":"QWERTY","address2":"QWERTY","suburb":"AGERY ADELAIDE","state":"SA","postcode":"5000","phone":"44 5555 5555","fax":"Final test","email":"Testing@gmail.com","website":"SBC776","lastname":"Final test","firstname":"Final test","title":"ms","mobile":"5555 555 777","notes":"QWERTYQWERTYQWERTYQWERTYQWERTY","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 13:08:01', NULL, NULL, NULL),
(57, 'update', 'sample_table_1', 10, '{"cf_id":"10","supplierid":"","suburbid":"","company_name":"Testing 12399999","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 13:24:15', NULL, NULL, NULL),
(58, 'update', 'sample_table_1', 17, '{"cf_id":"17","supplierid":"","suburbid":"","company_name":"dddd","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 13:51:52', NULL, NULL, NULL),
(59, 'update', 'sample_table_1', 17, '{"cf_id":"17","supplierid":"17","suburbid":"9449","company_name":"dddd","sup_id":null,"address1":"","address2":"","suburb":"AGERY ADELAIDE","state":"SA","postcode":"5000","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 13:52:44', NULL, NULL, NULL),
(60, 'update', 'sample_table_1', 19, '{"cf_id":"19","supplierid":"","suburbid":"","company_name":"dfbcb","sup_id":null,"address1":"xcvb","address2":"xcvbxcvb","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 13:53:12', NULL, NULL, NULL),
(61, 'update', 'sample_table_1', 18, '{"cf_id":"18","supplierid":"","suburbid":"","company_name":"asdf","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 13:55:32', NULL, NULL, NULL),
(62, 'update', 'sample_table_1', 20, '{"cf_id":"20","supplierid":"","suburbid":"","company_name":"Final test","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 13:55:44', NULL, NULL, NULL),
(63, 'update', 'sample_table_1', 10, '{"cf_id":"10","supplierid":"10","suburbid":"9450","company_name":"Testing 12399999","sup_id":null,"address1":"","address2":"","suburb":"AGERY","state":"SA","postcode":"5558","phone":"44 5555 5555","fax":"Final test","email":"Testing@gmail.com","website":"SBC776","lastname":"Final test","firstname":"Final test","title":"ms","mobile":"9999 999 999","notes":"ver_chronoforms_data_supplier_vicver_chronoforms_data_supplier_vicver_chronoforms_data_supplier_vicver_chronoforms_data_supplier_vic","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 13:59:28', NULL, NULL, NULL),
(64, 'update', 'sample_table_1', 21, '{"cf_id":"21","supplierid":"","suburbid":"9450","company_name":"knowledgeplus","sup_id":null,"address1":"knowledgeplus.net.au","address2":"knowledgeplus.net.au","suburb":"AGERY","state":"SA","postcode":"5558","phone":"55 5556 6666","fax":"knowledgeplus.net.au","email":"wang@knowledgeplus.net.au","website":"knowledgeplus.net.au","lastname":"knowledgeplus.net.au","firstname":"knowledgeplus.net.au","title":"ms","mobile":"9999 999 999","notes":"knowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.au","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 14:30:32', NULL, NULL, NULL),
(65, 'update', 'sample_table_1', 22, '{"cf_id":"22","supplierid":"","suburbid":"9450","company_name":"Test 123","sup_id":null,"address1":"Test 123","address2":"Test 123","suburb":"AGERY","state":"SA","postcode":"5558","phone":"55 5556 6666","fax":"Test 123","email":"Testing@gmail.com","website":"Test 123","lastname":"Test 123","firstname":"Final test","title":"mr","mobile":"9999 999 999","notes":"Test 123Test 123Test 123Test 123Test 123","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 14:32:35', NULL, NULL, NULL),
(66, 'update', 'sample_table_1', 21, '{"cf_id":"21","supplierid":"21","suburbid":"9448","company_name":"knowledgeplus","sup_id":null,"address1":"knowledgeplus.net.au","address2":"knowledgeplus.net.au","suburb":"AGERY ABERFOYLE PARK","state":"SA","postcode":"5159","phone":"55 5556 6666","fax":"knowledgeplus.net.au","email":"wang@knowledgeplus.net.au","website":"knowledgeplus.net.au","lastname":"knowledgeplus.net.au","firstname":"knowledgeplus.net.au","title":"ms","mobile":"9999 999 999","notes":"knowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.au","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 14:34:47', NULL, NULL, NULL),
(67, 'update', 'sample_table_1', 2, '{"cf_id":"2","supplierid":"2","suburbid":"9451","company_name":"QWERTY","sup_id":null,"address1":"QWERTY","address2":"QWERTY","suburb":"AGERY TEST","state":"SA TEST","postcode":"5559","phone":"44 5555 5555","fax":"Final test","email":"Testing@gmail.com","website":"SBC776","lastname":"Final test","firstname":"Final test","title":"ms","mobile":"5555 555 777","notes":"QWERTYQWERTYQWERTYQWERTYQWERTY","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 14:35:17', NULL, NULL, NULL),
(68, 'update', 'sample_table_1', 1, '{"cf_id":"1","supplierid":"1","suburbid":"9450","company_name":"SBC776 update 1","sup_id":null,"address1":"SBC776 update 1","address2":"SBC776 update 1","suburb":"AGERY","state":"SA","postcode":"5558","phone":"44 5555 5555","fax":"SBC776 update 1","email":"Testing@gmail.com","website":"SBC776 update 1","lastname":"SBC776 update 1","firstname":"SBC776 update 1","title":"ms","mobile":"9999 999 999","notes":"SBC776 update 1SBC776 update 1SBC776 update 1SBC776 update 1SBC776 update 1SBC776 update 1SBC776 update 1","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 14:35:35', NULL, NULL, NULL),
(69, 'update', 'sample_table_1', 23, '{"cf_id":"23","supplierid":"","suburbid":"9450","company_name":"Final test","sup_id":null,"address1":"Final test","address2":"Final test","suburb":"AGERY","state":"SA","postcode":"5558","phone":"44 5555 5555","fax":"Final test","email":"wang@knowledgeplus.net.au","website":"Final test","lastname":"Test 123","firstname":"Final test","title":"ms","mobile":"9999 999 999","notes":"previous_supplier_record","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 16:08:23', NULL, NULL, NULL),
(70, 'update', 'sample_table_1', 1, '{"cf_id":"1","supplierid":"1","suburbid":"9451","company_name":"SBC776 update 1","sup_id":null,"address1":"SBC776 update 1","address2":"SBC776 update 1","suburb":"AGERY TEST","state":"SA TEST","postcode":"5559","phone":"44 5555 5555","fax":"SBC776 update 1","email":"Testing@gmail.com","website":"SBC776 update 1","lastname":"SBC776 update 1","firstname":"SBC776 update 1","title":"ms","mobile":"9999 999 999","notes":"SBC776 update 1SBC776 update 1SBC776 update 1SBC776 update 1SBC776 update 1SBC776 update 1SBC776 update 1","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 16:08:39', NULL, NULL, NULL),
(71, 'update', 'sample_table_1', 24, '{"cf_id":"24","supplierid":"","suburbid":"9450","company_name":"xv","sup_id":null,"address1":"zxv","address2":"zxv","suburb":"AGERY","state":"SA","postcode":"5558","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 16:12:09', NULL, NULL, NULL),
(72, 'update', 'sample_table_1', 24, '{"cf_id":"24","supplierid":"24","suburbid":"9450","company_name":"xv","sup_id":null,"address1":"zxv","address2":"zxv","suburb":"AGERY","state":"SA","postcode":"5558","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 16:12:19', NULL, NULL, NULL),
(73, 'update', 'sample_table_1', 25, '{"cf_id":"25","supplierid":"","suburbid":"","company_name":"xvbcvb","sup_id":null,"address1":"cvb","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 16:19:53', NULL, NULL, NULL),
(74, 'update', 'sample_table_1', 10357, '{"id":"10357","ref_name":"vjn","description":"vbnvbn","user_id":"1","group_id":"10","date_created":"2019-06-15 16:23:21","date_accessed":null,"date_modified":null,"date_deleted":null}', 1, 10, '2019-06-15 16:23:26', NULL, NULL, NULL),
(75, 'update', 'sample_table_1', 10359, '{"id":"10359","ref_name":"asdas","description":"asdasd","user_id":"1","group_id":"10","date_created":"2019-06-15 16:23:41","date_accessed":null,"date_modified":null,"date_deleted":null}', 1, 10, '2019-06-15 16:23:44', NULL, NULL, NULL),
(76, 'update', 'sample_table_1', 10360, '{"id":"10360","ref_name":"zxv","description":"zxv","user_id":"1","group_id":"10","date_created":"2019-06-15 16:28:22","date_accessed":null,"date_modified":null,"date_deleted":null}', 1, 10, '2019-06-15 16:28:26', NULL, NULL, NULL),
(77, 'update', 'sample_table_1', 10360, '{"id":"10360","ref_name":"zxv","description":"zxv","user_id":"1","group_id":"10","date_created":"2019-06-15 16:28:22","date_accessed":null,"date_modified":"2019-06-15 16:28:26","date_deleted":null}', 1, 10, '2019-06-15 16:28:26', NULL, NULL, NULL),
(78, 'update', 'sample_table_1', 10360, '{"id":"10360","ref_name":"zxv","description":"zxv","user_id":"1","group_id":"10","date_created":"2019-06-15 16:28:22","date_accessed":null,"date_modified":"2019-06-15 16:28:26","date_deleted":null}', 1, 10, '2019-06-15 16:28:27', NULL, NULL, NULL),
(79, 'update', 'sample_table_1', 10360, '{"id":"10360","ref_name":"zxv","description":"zxv","user_id":"1","group_id":"10","date_created":"2019-06-15 16:28:22","date_accessed":null,"date_modified":"2019-06-15 16:28:27","date_deleted":null}', 1, 10, '2019-06-15 16:28:28', NULL, NULL, NULL),
(80, 'update', 'sample_table_1', 10360, '{"id":"10360","ref_name":"zxv","description":"zxv","user_id":"1","group_id":"10","date_created":"2019-06-15 16:28:22","date_accessed":null,"date_modified":"2019-06-15 16:28:28","date_deleted":null}', 1, 10, '2019-06-15 16:28:28', NULL, NULL, NULL),
(81, 'update', 'sample_table_1', 10360, '{"id":"10360","ref_name":"zxv","description":"zxv","user_id":"1","group_id":"10","date_created":"2019-06-15 16:28:22","date_accessed":null,"date_modified":"2019-06-15 16:28:28","date_deleted":null}', 1, 10, '2019-06-15 16:28:29', NULL, NULL, NULL),
(82, 'update', 'sample_table_1', 10360, '{"id":"10360","ref_name":"zxv","description":"zxv","user_id":"1","group_id":"10","date_created":"2019-06-15 16:28:22","date_accessed":null,"date_modified":"2019-06-15 16:28:29","date_deleted":null}', 1, 10, '2019-06-15 16:28:30', NULL, NULL, NULL),
(83, 'update', 'sample_table_1', 10360, '{"id":"10360","ref_name":"zxv","description":"zxv","user_id":"1","group_id":"10","date_created":"2019-06-15 16:28:22","date_accessed":null,"date_modified":"2019-06-15 16:28:30","date_deleted":null}', 1, 10, '2019-06-15 16:28:30', NULL, NULL, NULL),
(84, 'update', 'sample_table_1', 10360, '{"id":"10360","ref_name":"zxv","description":"zxv","user_id":"1","group_id":"10","date_created":"2019-06-15 16:28:22","date_accessed":null,"date_modified":"2019-06-15 16:28:30","date_deleted":null}', 1, 10, '2019-06-15 16:28:31', NULL, NULL, NULL),
(85, 'update', 'sample_table_1', 10360, '{"id":"10360","ref_name":"zxv","description":"zxv","user_id":"1","group_id":"10","date_created":"2019-06-15 16:28:22","date_accessed":null,"date_modified":"2019-06-15 16:28:31","date_deleted":null}', 1, 10, '2019-06-15 16:28:31', NULL, NULL, NULL),
(86, 'update', 'sample_table_1', 10360, '{"id":"10360","ref_name":"zxv","description":"zxv","user_id":"1","group_id":"10","date_created":"2019-06-15 16:28:22","date_accessed":null,"date_modified":"2019-06-15 16:28:31","date_deleted":null}', 1, 10, '2019-06-15 16:28:32', NULL, NULL, NULL),
(87, 'update', 'sample_table_1', 10360, '{"id":"10360","ref_name":"zxv","description":"zxv","user_id":"1","group_id":"10","date_created":"2019-06-15 16:28:22","date_accessed":null,"date_modified":"2019-06-15 16:28:32","date_deleted":null}', 1, 10, '2019-06-15 16:28:33', NULL, NULL, NULL),
(88, 'update', 'sample_table_1', 10360, '{"id":"10360","ref_name":"zxv","description":"zxv","user_id":"1","group_id":"10","date_created":"2019-06-15 16:28:22","date_accessed":null,"date_modified":"2019-06-15 16:28:33","date_deleted":null}', 1, 10, '2019-06-15 16:28:33', NULL, NULL, NULL),
(89, 'update', 'sample_table_1', 10360, '{"id":"10360","ref_name":"zxv","description":"zxv","user_id":"1","group_id":"10","date_created":"2019-06-15 16:28:22","date_accessed":null,"date_modified":"2019-06-15 16:28:33","date_deleted":null}', 1, 10, '2019-06-15 16:28:34', NULL, NULL, NULL),
(90, 'update', 'sample_table_1', 10360, '{"id":"10360","ref_name":"zxv","description":"zxv","user_id":"1","group_id":"10","date_created":"2019-06-15 16:28:22","date_accessed":null,"date_modified":"2019-06-15 16:28:34","date_deleted":null}', 1, 10, '2019-06-15 16:28:49', NULL, NULL, NULL),
(91, 'update', 'sample_table_1', 10360, '{"id":"10360","ref_name":"zxv","description":"zxv","user_id":"1","group_id":"10","date_created":"2019-06-15 16:28:22","date_accessed":null,"date_modified":"2019-06-15 16:28:49","date_deleted":null}', 1, 10, '2019-06-15 16:28:49', NULL, NULL, NULL),
(92, 'update', 'sample_table_1', 26, '{"cf_id":"26","supplierid":"","suburbid":"","company_name":"xcbzxcb","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 16:30:00', NULL, NULL, NULL),
(93, 'update', 'sample_table_1', 26, '{"cf_id":"26","supplierid":"26","suburbid":"","company_name":"xcbzxcb","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 16:30:00', NULL, NULL, NULL),
(94, 'update', 'sample_table_1', 26, '{"cf_id":"26","supplierid":"26","suburbid":"","company_name":"xcbzxcb","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 16:30:01', NULL, NULL, NULL),
(95, 'update', 'sample_table_1', 26, '{"cf_id":"26","supplierid":"26","suburbid":"","company_name":"xcbzxcb","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 16:30:01', NULL, NULL, NULL),
(96, 'update', 'sample_table_1', 26, '{"cf_id":"26","supplierid":"26","suburbid":"","company_name":"xcbzxcb","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 16:30:02', NULL, NULL, NULL),
(97, 'update', 'sample_table_1', 26, '{"cf_id":"26","supplierid":"26","suburbid":"","company_name":"xcbzxcb","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 16:30:02', NULL, NULL, NULL),
(98, 'update', 'sample_table_1', 27, '{"cf_id":"27","supplierid":"","suburbid":"","company_name":"b","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 16:37:23', NULL, NULL, NULL),
(99, 'update', 'sample_table_1', 28, '{"cf_id":"28","supplierid":"","suburbid":"","company_name":"v","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 16:37:39', NULL, NULL, NULL),
(100, 'update', 'sample_table_1', 29, '{"cf_id":"29","supplierid":"","suburbid":"","company_name":"fcbcvb","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 16:39:15', NULL, NULL, NULL),
(101, 'update', 'sample_table_1', 30, '{"cf_id":"30","supplierid":"","suburbid":"9449","company_name":"sdfsd","sup_id":null,"address1":"","address2":"","suburb":"AGERY ADELAIDE","state":"SA","postcode":"5000","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 16:44:43', NULL, NULL, NULL),
(102, 'update', 'sample_table_1', 31, '{"cf_id":"31","supplierid":"","suburbid":"","company_name":"nn","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 16:51:50', NULL, NULL, NULL);
INSERT INTO `table_activity_log` (`id`, `activity_type`, `target_table`, `target_id`, `data_before_activity`, `user_id`, `group_id`, `date_created`, `date_accessed`, `date_modified`, `date_deleted`) VALUES
(103, 'update', 'sample_table_1', 32, '{"cf_id":"32","supplierid":"","suburbid":"9448","company_name":"xcvxcv","sup_id":null,"address1":"xcv","address2":"xcv","suburb":"AGERY ABERFOYLE PARK","state":"SA","postcode":"5159","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 16:55:22', NULL, NULL, NULL),
(104, 'update', 'sample_table_1', 33, '{"cf_id":"33","supplierid":"","suburbid":"","company_name":"fdxcb","sup_id":null,"address1":"","address2":"","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 16:56:16', NULL, NULL, NULL),
(105, 'update', 'sample_table_1', 34, '{"cf_id":"34","supplierid":"","suburbid":"9450","company_name":"xvxczb","sup_id":null,"address1":"Final test","address2":"xcb","suburb":"AGERY","state":"SA","postcode":"5558","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 17:07:34', NULL, NULL, NULL),
(106, 'update', 'sample_table_1', 10362, '{"id":"10362","ref_name":"xcvxc","description":"xcv","user_id":"1","group_id":"10","date_created":"2019-06-15 17:09:16","date_accessed":null,"date_modified":null,"date_deleted":null}', 1, 10, '2019-06-15 17:09:20', NULL, NULL, NULL),
(107, 'update', 'sample_table_1', 35, '{"cf_id":"35","supplierid":"","suburbid":"9449","company_name":"bvbb","sup_id":null,"address1":"Final test","address2":"vb","suburb":"AGERY ADELAIDE","state":"SA","postcode":"5000","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 17:10:36', NULL, NULL, NULL),
(108, 'update', 'sample_table_1', 37, '{"cf_id":"37","supplierid":"","suburbid":"9448","company_name":"bcvbbbb","sup_id":null,"address1":"cvb","address2":"cvb","suburb":"AGERY ABERFOYLE PARK","state":"SA","postcode":"5159","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 17:12:49', NULL, NULL, NULL),
(109, 'update', 'sample_table_1', 38, '{"cf_id":"38","supplierid":"","suburbid":"9450","company_name":"Final test","sup_id":null,"address1":"bb","address2":"bb","suburb":"AGERY","state":"SA","postcode":"5558","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 17:16:19', NULL, NULL, NULL),
(110, 'update', 'sample_table_1', 39, '{"cf_id":"39","supplierid":"","suburbid":"","company_name":"xcvx","sup_id":null,"address1":"xcvx","address2":"SBC776 update 3","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 17:16:40', NULL, NULL, NULL),
(111, 'update', 'sample_table_1', 41, '{"cf_id":"41","supplierid":"","suburbid":"9450","company_name":"xcbzxcbnnn","sup_id":null,"address1":"cvbncn","address2":"cvn","suburb":"AGERY","state":"SA","postcode":"5558","phone":"cvn","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 17:19:38', NULL, NULL, NULL),
(112, 'update', 'sample_table_1', 41, '{"cf_id":"41","supplierid":"41","suburbid":"9451","company_name":"xcbzxcbnnn","sup_id":null,"address1":"cvbncn","address2":"cvn","suburb":"AGERY TEST","state":"SA TEST","postcode":"5559","phone":"cvn","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 17:19:50', NULL, NULL, NULL),
(113, 'update', 'sample_table_1', 44, '{"cf_id":"44","supplierid":"","suburbid":"9450","company_name":"cgsd","sup_id":null,"address1":"dsfgdsf","address2":"gdfg","suburb":"AGERY","state":"SA","postcode":"5558","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 17:25:34', NULL, NULL, NULL),
(114, 'update', 'sample_table_1', 45, '{"cf_id":"45","supplierid":"","suburbid":"9450","company_name":"cccc","sup_id":null,"address1":"ccc","address2":"cc","suburb":"AGERY","state":"SA","postcode":"5558","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 17:28:57', NULL, NULL, NULL),
(115, 'update', 'sample_table_1', 46, '{"cf_id":"46","supplierid":"","suburbid":"9450","company_name":"bcxvbcxvbvc","sup_id":null,"address1":"cxvbcvbcx","address2":"cvbcxvb","suburb":"AGERY","state":"SA","postcode":"5558","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 17:29:40', NULL, NULL, NULL),
(116, 'update', 'sample_table_1', 49, '{"cf_id":"49","supplierid":"","suburbid":"","company_name":"xcvzxcvvvv","sup_id":null,"address1":"zxcv","address2":"xcvzxcv","suburb":"","state":"","postcode":"","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 17:34:28', NULL, NULL, NULL),
(117, 'update', 'sample_table_1', 50, '{"cf_id":"50","supplierid":"","suburbid":"9450","company_name":"vvvvv","sup_id":null,"address1":"vvvv","address2":"","suburb":"AGERY","state":"SA","postcode":"5558","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 17:34:53', NULL, NULL, NULL),
(118, 'update', 'sample_table_1', 53, '{"cf_id":"53","supplierid":"","suburbid":"9450","company_name":"zxczxcccc","sup_id":null,"address1":"zxczxc","address2":"zxczxc","suburb":"AGERY","state":"SA","postcode":"5558","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":null}', 1, 10, '2019-06-15 17:59:15', NULL, NULL, NULL),
(119, 'update', 'sample_table_1', 34, '{"cf_id":"34","supplierid":"34","suburbid":"9450","company_name":"xvxczb","sup_id":null,"address1":"Final test","address2":"xcb","suburb":"AGERY","state":"SA","postcode":"5558","phone":"","fax":"","email":"","website":"","lastname":"","firstname":"","title":"","mobile":"","notes":"","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 18:04:30', NULL, NULL, NULL),
(120, 'update', 'sample_table_1', 34, '{"cf_id":"34","supplierid":"34","suburbid":"","company_name":"xvxczb","sup_id":null,"address1":"Final test","address2":"xcb","suburb":"AGERY","state":"SA","postcode":"5558","phone":"555","fax":"","email":"Testing@gmail.com","website":"55","lastname":"Test 123","firstname":"Final test 123","title":"mr","mobile":"555","notes":"testwqrt","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 18:04:39', NULL, NULL, NULL),
(121, 'update', 'sample_table_1', 34, '{"cf_id":"34","supplierid":"34","suburbid":"9449","company_name":"xvxczb","sup_id":null,"address1":"Final test","address2":"xcb","suburb":"AGERY ADELAIDE","state":"SA","postcode":"5000","phone":"555","fax":"","email":"Testing@gmail.com","website":"55","lastname":"Final test 123","firstname":"Test 123","title":"mr","mobile":"555","notes":"testwqrt","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 18:04:47', NULL, NULL, NULL),
(122, 'update', 'sample_table_1', 34, '{"cf_id":"34","supplierid":"34","suburbid":"","company_name":"xvxczb","sup_id":null,"address1":"Final test","address2":"xcb","suburb":"AGERY ADELAIDE","state":"SA","postcode":"5000","phone":"555","fax":"bvcb","email":"Testing@gmail.com","website":"55","lastname":"Test 123","firstname":"Final test 123","title":"mr","mobile":"555","notes":"testwqrt","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 18:04:54', NULL, NULL, NULL),
(123, 'update', 'sample_table_1', 34, '{"cf_id":"34","supplierid":"34","suburbid":"9449","company_name":"xvxczb","sup_id":null,"address1":"Final test","address2":"xcb","suburb":"AGERY ADELAIDE","state":"SA","postcode":"5000","phone":"555","fax":"bvcb","email":"Testing@gmail.com","website":"55","lastname":"Final test 123","firstname":"Test 123","title":"mr","mobile":"555","notes":"testwqrt","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 18:05:00', NULL, NULL, NULL),
(124, 'update', 'sample_table_1', 34, '{"cf_id":"34","supplierid":"34","suburbid":"9450","company_name":"xvxczb","sup_id":null,"address1":"Final test","address2":"xcb","suburb":"AGERY","state":"SA","postcode":"5558","phone":"555","fax":"bvcb","email":"Testing@gmail.com","website":"55","lastname":"Test 123","firstname":"Final test 123","title":"mr","mobile":"555","notes":"testwqrt","date_created":"2019-06-15","date_deleted":null,"date_modified":"2019-06-15"}', 1, 10, '2019-06-15 18:05:05', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ver_chronoforms_data_suburbs_vic`
--

CREATE TABLE IF NOT EXISTS `ver_chronoforms_data_suburbs_vic` (
`cf_id` int(11) NOT NULL,
  `suburb_district` varchar(255) NOT NULL,
  `suburb` varchar(255) NOT NULL,
  `suburb_state` varchar(255) NOT NULL,
  `suburb_postcode` varchar(255) NOT NULL,
  `old_id` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9452 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ver_chronoforms_data_suburbs_vic`
--

INSERT INTO `ver_chronoforms_data_suburbs_vic` (`cf_id`, `suburb_district`, `suburb`, `suburb_state`, `suburb_postcode`, `old_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9448, '', 'AGERY ABERFOYLE PARK', 'SA', '5159', '1', '2019-06-01 00:00:00', NULL, NULL),
(9449, '', 'AGERY ADELAIDE', 'SA', '5000', '2', '2019-06-01 00:00:00', NULL, NULL),
(9450, '', 'AGERY', 'SA', '5558', '3', '2019-06-01 00:00:00', NULL, NULL),
(9451, '', 'AGERY TEST', 'SA TEST', '5559', '4', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ver_chronoforms_data_supplier_vic`
--

CREATE TABLE IF NOT EXISTS `ver_chronoforms_data_supplier_vic` (
`cf_id` int(11) NOT NULL,
  `supplierid` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `suburbid` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sup_id` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `address1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `suburb` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date_created` date DEFAULT NULL,
  `date_deleted` date DEFAULT NULL,
  `date_modified` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ver_chronoforms_data_supplier_vic`
--

INSERT INTO `ver_chronoforms_data_supplier_vic` (`cf_id`, `supplierid`, `suburbid`, `company_name`, `sup_id`, `address1`, `address2`, `suburb`, `state`, `postcode`, `phone`, `fax`, `email`, `website`, `lastname`, `firstname`, `title`, `mobile`, `notes`, `date_created`, `date_deleted`, `date_modified`) VALUES
(1, '1', '', 'SBC776 update 1', NULL, 'SBC776 update 1', 'SBC776 update 1', 'AGERY TEST', 'SA TEST', '5559', '44 5555 5555', 'SBC776 update 1', 'Testing@gmail.com', 'SBC776 update 1', 'SBC776 update 1', 'SBC776 update 1', 'mr', '9999 999 999', 'SBC776 update 1SBC776 update 1SBC776 update 1SBC776 update 1SBC776 update 1SBC776 update 1SBC776 update 1', '2019-06-15', NULL, '2019-06-15'),
(2, '2', '9448', 'QWERTY', NULL, 'QWERTY', 'QWERTY', 'AGERY ABERFOYLE PARK', 'SA', '5159', '44 5555 5555', 'Final test', 'Testing@gmail.com', 'SBC776', 'Final test', 'Final test', 'ms', '5555 555 777', 'QWERTYQWERTYQWERTYQWERTYQWERTY', '2019-06-15', NULL, '2019-06-15'),
(3, '3', '9449', 'Final test 123', NULL, 'Final test 123', 'Final test 123', 'AGERY ADELAIDE', 'SA', '5000', '99 9999 9999', 'Final test 123', 'QWERTYesting@gmail.com', 'Final test 123', 'Final test 123', 'Final test 123', 'mr', '9999 999 999', 'Final test 123Final test 123Final test 123Final test 123Final test 123', '2019-06-15', NULL, '2019-06-15'),
(4, '4', '9451', 'Testing 123', NULL, 'Testing 123', 'Testing 123', 'AGERY TEST', 'SA TEST', '5559', '99 9999 9999', 'Testing 123', 'asdfesting@gmail.com', 'Final test', 'Final test', 'Final test', 'mr', '5555 555 777', 'Testing 123Testing 123Testing 123Testing 123Testing 123Testing 123Testing 123', '2019-06-15', NULL, '2019-06-15'),
(5, '', '', 'QWERTY 123', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', NULL),
(6, '', '', 'Testing 1111', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', NULL),
(7, '', '', 'Final test 123456', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', NULL),
(8, '', '', 'Final test 12345', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', NULL),
(9, '', '', 'SBC776 update 11111', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', NULL),
(10, '10', '9451', 'Testing 12399999', NULL, 'Final test', 'SBC776 update 3', 'AGERY TEST', 'SA TEST', '5559', '44 5555 5555', 'Final test', 'Testing@gmail.com', 'SBC776', 'Final test', 'Final test', 'ms', '9999 999 999', 'ver_chronoforms_data_supplier_vicver_chronoforms_data_supplier_vicver_chronoforms_data_supplier_vicver_chronoforms_data_supplier_vic', '2019-06-15', NULL, '2019-06-15'),
(11, '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', NULL),
(12, '', '', 'Testing 123333', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', NULL),
(13, '', '', 'dd', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', NULL),
(14, '', '', 'xxx', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', NULL),
(15, '', '9449', 'qqq', NULL, '', '', 'AGERY ADELAIDE', 'SA', '5000', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', NULL),
(16, '', '9450', 'sagasdg', NULL, 'sagasdg', 'sagasdg', 'AGERY', 'SA', '5558', '', 'sagasdg', '', 'sagasdg', 'sagasdg', 'sagasdg', 'ms', '', 'sagasdgsagasdg', '2019-06-15', '2019-06-15', NULL),
(17, '17', '9448', 'dddd', NULL, '', '', 'AGERY ABERFOYLE PARK', 'SA', '5159', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', '2019-06-15'),
(18, '18', '9450', 'asdf', NULL, '', '', 'AGERY', 'SA', '5558', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', '2019-06-15'),
(19, '19', '9449', 'dfbcb', NULL, 'xcvb', 'xcvbxcvb', 'AGERY ADELAIDE', 'SA', '5000', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', '2019-06-15'),
(20, '20', '9450', 'Final test', NULL, '', '', 'AGERY', 'SA', '5558', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', '2019-06-15'),
(21, '21', '9451', 'knowledgeplus', NULL, 'knowledgeplus.net.au', 'knowledgeplus.net.au', 'AGERY TEST', 'SA TEST', '5559', '55 5556 6666', 'knowledgeplus.net.au', 'wang@knowledgeplus.net.au', 'knowledgeplus.net.au', '', '', 'ms', '9999 999 999', 'knowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.auknowledgeplus.net.au', '2019-06-15', NULL, '2019-06-15'),
(22, '22', '9449', 'Test 123', NULL, 'Test 123', 'Test 123', 'AGERY ADELAIDE', 'SA', '5000', '55 5556 6666', 'Test 123', 'Testing@gmail.com', 'Test 123', 'Test 123', 'Final test', 'mr', '9999 999 999', 'Test 123Test 123Test 123Test 123Test 123', '2019-06-15', '2019-06-15', '2019-06-15'),
(23, '23', '9451', 'Final test', NULL, 'Final test', 'Final test', 'AGERY TEST', 'SA TEST', '5559', '44 5555 5555', 'Final test', 'wang@knowledgeplus.net.au', 'Final test', 'Test 123', 'Final test', 'ms', '9999 999 999', 'previous_supplier_record', '2019-06-15', '2019-06-15', '2019-06-15'),
(24, '24', '', 'xv', NULL, 'zxv', 'zxv', 'AGERY', 'SA', '5558', '44 5555 5555', '', '', '', '', '', '', '', '', '2019-06-15', NULL, '2019-06-15'),
(25, '25', '9450', 'xvbcvb', NULL, 'cvb', '', 'AGERY', 'SA', '5558', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', '2019-06-15'),
(26, '26', '', 'xcbzxcb', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', '2019-06-15'),
(27, '27', '9450', 'b', NULL, '', '', 'AGERY', 'SA', '5558', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', '2019-06-15'),
(28, '28', '9450', 'v', NULL, '', '', 'AGERY', 'SA', '5558', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', '2019-06-15'),
(29, '29', '9450', 'fcbcvb', NULL, '', '', 'AGERY', 'SA', '5558', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', '2019-06-15'),
(30, '30', '9451', 'sdfsd', NULL, '', '', 'AGERY TEST', 'SA TEST', '5559', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', '2019-06-15'),
(31, '31', '9450', 'nn', NULL, '', '', 'AGERY', 'SA', '5558', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', '2019-06-15'),
(32, '32', '9451', 'xcvxcv', NULL, 'xcv', 'xcv', 'AGERY TEST', 'SA TEST', '5559', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', '2019-06-15'),
(33, '33', '9449', 'fdxcb', NULL, '', '', 'AGERY ADELAIDE', 'SA', '5000', '', '', '', '', '', '', '', '', '', '2019-06-15', '2019-06-15', '2019-06-15'),
(34, '34', '9451', 'xvxczb', NULL, 'Final test', 'xcb', 'AGERY TEST', 'SA TEST', '5559', '555', 'bvcb', 'Testing@gmail.com', '55', 'Final test 123', 'Test 123', 'mr', '555', 'testwqrt', '2019-06-15', NULL, '2019-06-15'),
(35, '35', '9451', 'bvbb', NULL, 'Final test', 'vb', 'AGERY TEST', 'SA TEST', '5559', '', '', '', '', '', '', '', '', '', '2019-06-15', NULL, '2019-06-15'),
(36, '', '9450', 'zxvzxv', NULL, 'zxvzxv', 'zxv', 'AGERY', 'SA', '5558', '', '', '', '', '', '', '', '', '', '2019-06-15', NULL, NULL),
(37, '37', '9449', 'bcvbbbb', NULL, 'cvb', 'cvb', 'AGERY ADELAIDE', 'SA', '5000', '', '', '', '', '', '', '', '', '', '2019-06-15', NULL, '2019-06-15'),
(38, '38', '9451', 'Final test', NULL, 'bb', 'bb', 'AGERY TEST', 'SA TEST', '5559', '', '', '', '', '', '', '', '', '', '2019-06-15', NULL, '2019-06-15'),
(39, '39', '9450', 'xcvx', NULL, 'xcvx', 'SBC776 update 3', 'AGERY', 'SA', '5558', '', '', '', '', '', '', '', '', '', '2019-06-15', NULL, '2019-06-15'),
(40, '', '9449', 'xcvb', NULL, 'xcb', 'SBC776 update 3', 'AGERY ADELAIDE', 'SA', '5000', '', '', '', '', '', '', '', '', '', '2019-06-15', NULL, NULL),
(41, '41', '9449', 'xcbzxcbnnn', NULL, 'cvbncn', 'cvn', 'AGERY ADELAIDE', 'SA', '5000', 'cvn', '', '', '', '', '', '', '', '', '2019-06-15', NULL, '2019-06-15'),
(42, '', '9450', 'xcvbcxvb', NULL, 'cxvb', 'cvxb', 'AGERY', 'SA', '5558', '', '', '', '', '', '', '', '', '', '2019-06-15', NULL, NULL),
(43, '', '', 'fgdggg', NULL, 'dfg', 'dfg', '', '', '', '', '', '', '', '', '', '', '', '', '2019-06-15', NULL, NULL),
(44, '44', '9449', 'cgsd', NULL, 'dsfgdsf', 'gdfg', 'AGERY ADELAIDE', 'SA', '5000', '', '', '', '', '', '', '', '', '', '2019-06-15', NULL, '2019-06-15'),
(45, '45', '9451', 'cccc', NULL, 'ccc', 'cc', 'AGERY TEST', 'SA TEST', '5559', '', '', '', '', '', '', '', '', '', '2019-06-15', NULL, '2019-06-15'),
(46, '46', '9451', 'bcxvbcxvbvc', NULL, 'cxvbcvbcx', 'cvbcxvb', 'AGERY TEST', 'SA TEST', '5559', '', '', '', '', '', '', '', '', '', '2019-06-15', NULL, '2019-06-15'),
(47, '', '9449', 'xcvxc', NULL, 'xcvxcv', 'xcvxcv', 'AGERY ADELAIDE', 'SA', '5000', '', '', '', '', '', '', '', '', '', '2019-06-15', NULL, NULL),
(48, '', '9450', 'xcvxbbbb', NULL, 'xzcvzxcv', 'xzcv', 'AGERY', 'SA', '5558', '', '', '', '', '', '', '', '', '', '2019-06-15', NULL, NULL),
(49, '49', '9450', 'xcvzxcvvvv', NULL, 'zxcv', 'xcvzxcv', 'AGERY', 'SA', '5558', '', '', '', '', '', '', '', '', '', '2019-06-15', NULL, '2019-06-15'),
(50, '50', '9448', 'vvvvv', NULL, 'vvvv', 'vvvv', 'AGERY ABERFOYLE PARK', 'SA', '5159', '', 'vvvv', '', 'vvvv', 'vvv', 'vvv', 'mr', '5555 555 777', 'vvvvvv', '2019-06-15', NULL, '2019-06-15'),
(51, '', '9450', 'xcvxcvvvvv', NULL, 'xcv', 'xcv', 'AGERY', 'SA', '5558', '', '', '', '', '', '', '', '', '', '2019-06-15', NULL, NULL),
(52, '', '9450', 'vvvzzzz', NULL, 'zzzzz', '', 'AGERY', 'SA', '5558', '', '', '', '', '', '', '', '', '', '2019-06-15', NULL, NULL),
(53, '53', '9448', 'zxczxcccc', NULL, 'zxczxc', 'zxczxc', 'AGERY ABERFOYLE PARK', 'SA', '5159', '', '', '', '', '', '', '', '', '', '2019-06-15', NULL, '2019-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `ver_usergroups`
--

CREATE TABLE IF NOT EXISTS `ver_usergroups` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ver_usergroups`
--

INSERT INTO `ver_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(9, 2, 51, 52, 'Victoria Users'),
(10, 6, 17, 18, 'Victoria Admin');

-- --------------------------------------------------------

--
-- Table structure for table `ver_users`
--

CREATE TABLE IF NOT EXISTS `ver_users` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) DEFAULT '',
  `password` varchar(100) DEFAULT '',
  `usertype` varchar(25) DEFAULT 'Victoria Users',
  `block` tinyint(4) DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) DEFAULT '',
  `params` text,
  `lastResetTime` datetime DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `phone` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `abn` varchar(255) DEFAULT NULL,
  `RepID` varchar(255) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ver_users`
--

INSERT INTO `ver_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `phone`, `mobile`, `abn`, `RepID`, `first_name`, `last_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'John Cena', 'admin', 'admin@project_1.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Victoria Users', 0, 0, '2019-06-01 00:00:00', NULL, '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', '', 'REP1', 'John', 'Cena', NULL, NULL, NULL),
(2, 'Chris Pratt', 'user', 'user@project_1.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Victoria Users', 0, 0, '2019-06-01 00:00:00', NULL, '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', '', 'REP2', 'Chris', 'Pratt', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ver_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `ver_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to ver_users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to ver_usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ver_user_usergroup_map`
--

INSERT INTO `ver_user_usergroup_map` (`user_id`, `group_id`) VALUES
(1, 10),
(2, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sample_table_1`
--
ALTER TABLE `sample_table_1`
 ADD PRIMARY KEY (`id`), ADD KEY `ref_name` (`ref_name`), ADD KEY `description` (`description`(767)), ADD KEY `user_id` (`user_id`), ADD KEY `group_id` (`group_id`), ADD KEY `date_created` (`date_created`), ADD KEY `date_accessed` (`date_accessed`), ADD KEY `date_modified` (`date_modified`), ADD KEY `date_deleted` (`date_deleted`);

--
-- Indexes for table `table_activity_log`
--
ALTER TABLE `table_activity_log`
 ADD PRIMARY KEY (`id`), ADD KEY `activity_type` (`activity_type`), ADD KEY `target_table` (`target_table`), ADD KEY `target_id` (`target_id`), ADD KEY `user_id` (`user_id`), ADD KEY `group_id` (`group_id`), ADD KEY `date_created` (`date_created`), ADD KEY `date_accessed` (`date_accessed`), ADD KEY `date_modified` (`date_modified`), ADD KEY `date_deleted` (`date_deleted`);

--
-- Indexes for table `ver_chronoforms_data_suburbs_vic`
--
ALTER TABLE `ver_chronoforms_data_suburbs_vic`
 ADD PRIMARY KEY (`cf_id`), ADD KEY `suburb_district` (`suburb_district`), ADD KEY `suburb` (`suburb`), ADD KEY `suburb_state` (`suburb_state`), ADD KEY `suburb_postcode` (`suburb_postcode`), ADD KEY `old_id` (`old_id`), ADD KEY `created_at` (`created_at`), ADD KEY `updated_at` (`updated_at`), ADD KEY `deleted_at` (`deleted_at`);

--
-- Indexes for table `ver_chronoforms_data_supplier_vic`
--
ALTER TABLE `ver_chronoforms_data_supplier_vic`
 ADD PRIMARY KEY (`cf_id`), ADD KEY `supplierid` (`supplierid`), ADD KEY `suburbid` (`suburbid`), ADD KEY `company_name` (`company_name`), ADD KEY `sup_id` (`sup_id`), ADD KEY `address1` (`address1`), ADD KEY `address2` (`address2`), ADD KEY `suburb` (`suburb`), ADD KEY `state` (`state`), ADD KEY `postcode` (`postcode`), ADD KEY `phone` (`phone`), ADD KEY `fax` (`fax`), ADD KEY `email` (`email`), ADD KEY `website` (`website`), ADD KEY `lastname` (`lastname`), ADD KEY `firstname` (`firstname`), ADD KEY `title` (`title`), ADD KEY `mobile` (`mobile`);

--
-- Indexes for table `ver_usergroups`
--
ALTER TABLE `ver_usergroups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`), ADD KEY `idx_usergroup_title_lookup` (`title`), ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`), ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`);

--
-- Indexes for table `ver_users`
--
ALTER TABLE `ver_users`
 ADD PRIMARY KEY (`id`), ADD KEY `usertype` (`usertype`), ADD KEY `idx_name` (`name`), ADD KEY `idx_block` (`block`), ADD KEY `username` (`username`), ADD KEY `email` (`email`);

--
-- Indexes for table `ver_user_usergroup_map`
--
ALTER TABLE `ver_user_usergroup_map`
 ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sample_table_1`
--
ALTER TABLE `sample_table_1`
MODIFY `id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10363;
--
-- AUTO_INCREMENT for table `table_activity_log`
--
ALTER TABLE `table_activity_log`
MODIFY `id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `ver_chronoforms_data_suburbs_vic`
--
ALTER TABLE `ver_chronoforms_data_suburbs_vic`
MODIFY `cf_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9452;
--
-- AUTO_INCREMENT for table `ver_chronoforms_data_supplier_vic`
--
ALTER TABLE `ver_chronoforms_data_supplier_vic`
MODIFY `cf_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `ver_usergroups`
--
ALTER TABLE `ver_usergroups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ver_users`
--
ALTER TABLE `ver_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
