-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 21, 2015 at 08:43 PM
-- Server version: 5.5.25
-- PHP Version: 5.3.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `adamc5`
--

-- --------------------------------------------------------

--
-- Table structure for table `AreaPermissionAssignments`
--

CREATE TABLE `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AreaPermissionBlockTypeAccessList`
--

CREATE TABLE `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AreaPermissionBlockTypeAccessListCustom`
--

CREATE TABLE `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Areas`
--

CREATE TABLE `Areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `Areas`
--

INSERT INTO `Areas` (`arID`, `cID`, `arHandle`, `arOverrideCollectionPermissions`, `arInheritPermissionsFromAreaOnCID`, `arIsGlobal`) VALUES
(1, 106, 'Header', 0, 0, 0),
(2, 106, 'Column 1', 0, 0, 0),
(3, 106, 'Column 2', 0, 0, 0),
(4, 106, 'Column 3', 0, 0, 0),
(5, 106, 'Column 4', 0, 0, 0),
(6, 107, 'Primary', 0, 0, 0),
(7, 107, 'Secondary 1', 0, 0, 0),
(8, 107, 'Secondary 2', 0, 0, 0),
(9, 107, 'Secondary 3', 0, 0, 0),
(10, 107, 'Secondary 4', 0, 0, 0),
(11, 107, 'Secondary 5', 0, 0, 0),
(12, 1, 'Header Nav', 0, 0, 0),
(13, 1, 'Header', 0, 0, 0),
(14, 1, 'Sidebar', 0, 0, 0),
(15, 1, 'Main', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `atAddress`
--

CREATE TABLE `atAddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country` varchar(4) DEFAULT NULL,
  `postal_code` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atAddressCustomCountries`
--

CREATE TABLE `atAddressCustomCountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `atAddressSettings`
--

CREATE TABLE `atAddressSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` int(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atBoolean`
--

CREATE TABLE `atBoolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atBoolean`
--

INSERT INTO `atBoolean` (`avID`, `value`) VALUES
(20, 1),
(31, 1),
(34, 1),
(64, 1),
(65, 1),
(68, 1),
(69, 1),
(75, 1),
(109, 1),
(118, 1),
(119, 1),
(120, 1);

-- --------------------------------------------------------

--
-- Table structure for table `atBooleanSettings`
--

CREATE TABLE `atBooleanSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atBooleanSettings`
--

INSERT INTO `atBooleanSettings` (`akID`, `akCheckedByDefault`) VALUES
(5, 0),
(6, 0),
(8, 0),
(9, 0),
(10, 1),
(11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `atDateTime`
--

CREATE TABLE `atDateTime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atDateTimeSettings`
--

CREATE TABLE `atDateTimeSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atDefault`
--

CREATE TABLE `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atDefault`
--

INSERT INTO `atDefault` (`avID`, `value`) VALUES
(1, 'blog, blogging'),
(2, 'icon-book'),
(3, 'new blog, write blog, blogging'),
(4, 'icon-pencil'),
(5, 'blog drafts, composer'),
(6, 'icon-book'),
(7, 'pages, add page, delete page, copy, move, alias'),
(8, 'pages, add page, delete page, copy, move, alias'),
(9, 'icon-home'),
(10, 'pages, add page, delete page, copy, move, alias, bulk'),
(11, 'icon-road'),
(12, 'find page, search page, search, find, pages, sitemap'),
(13, 'icon-search'),
(14, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),
(15, 'icon-picture'),
(16, 'file, file attributes, title, attribute, description, rename'),
(17, 'icon-cog'),
(18, 'files, category, categories'),
(19, 'icon-list-alt'),
(21, 'new file set'),
(22, 'icon-plus-sign'),
(23, 'users, groups, people, find, delete user, remove user, change password, password'),
(24, 'find, search, people, delete user, remove user, change password, password'),
(25, 'icon-user'),
(26, 'user, group, people, permissions, access, expire'),
(27, 'icon-globe'),
(28, 'user attributes, user data, gather data, registration data'),
(29, 'icon-cog'),
(30, 'new user, create'),
(32, 'icon-plus-sign'),
(33, 'new user group, new group, group, create'),
(35, 'icon-plus'),
(36, 'group set'),
(37, 'icon-list'),
(38, 'forms, log, error, email, mysql, exception, survey'),
(39, 'hits, pageviews, visitors, activity'),
(40, 'icon-signal'),
(41, 'forms, questions, response, data'),
(42, 'icon-briefcase'),
(43, 'questions, quiz, response'),
(44, 'icon-tasks'),
(45, 'forms, log, error, email, mysql, exception, survey, history'),
(46, 'icon-time'),
(47, 'new theme, theme, active theme, change theme, template, css'),
(48, 'icon-font'),
(49, 'theme'),
(50, 'page types'),
(51, 'custom theme, change theme, custom css, css'),
(52, 'page type defaults, global block, global area, starter, template'),
(53, 'icon-file'),
(54, 'page attributes, custom'),
(55, 'icon-cog'),
(56, 'single, page, custom, application'),
(57, 'icon-wrench'),
(58, 'add workflow, remove workflow'),
(59, 'icon-list'),
(60, 'icon-user'),
(61, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),
(62, 'icon-th'),
(63, 'icon-lock'),
(66, 'block, refresh, custom'),
(67, 'icon-wrench'),
(70, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),
(71, 'update, upgrade'),
(72, 'concrete5.org, my account, marketplace'),
(73, 'buy theme, new theme, marketplace, template'),
(74, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),
(76, 'website name, title'),
(77, 'logo, favicon, iphone, icon, bookmark'),
(78, 'tinymce, content block, fonts, editor, content, overlay'),
(79, 'translate, translation, internationalization, multilingual'),
(80, 'timezone, profile, locale'),
(81, 'interface, quick nav, dashboard background, background image'),
(82, 'vanity, pretty url, seo, pageview, view'),
(83, 'bulk, seo, change keywords, engine, optimization, search'),
(84, 'traffic, statistics, google analytics, quant, pageviews, hits'),
(85, 'pretty, slug'),
(86, 'turn off statistics, tracking, statistics, pageviews, hits'),
(87, 'configure search, site search, search option'),
(88, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),
(89, 'cache option, turn off cache, no cache, page cache, caching'),
(90, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),
(91, 'editors, hide site, offline, private, public, access'),
(92, 'file options, file manager, upload, modify'),
(93, 'security, files, media, extension, manager, upload'),
(94, 'security, actions, administrator, admin, package, marketplace, search'),
(95, 'security, lock ip, lock out, block ip, address, restrict, access'),
(96, 'security, registration'),
(97, 'antispam, block spam, security'),
(98, 'lock site, under construction, hide, hidden'),
(99, 'profile, login, redirect, specific, dashboard, administrators'),
(100, 'member profile, member page, community, forums, social, avatar'),
(101, 'signup, new user, community'),
(102, 'smtp, mail settings'),
(103, 'email server, mail settings, mail configuration, external, internal'),
(104, 'test smtp, test mail'),
(105, 'email server, mail settings, mail configuration, private message, message system, import, email, message'),
(106, 'attribute configuration'),
(107, 'attributes, sets'),
(108, 'attributes, types'),
(110, 'overrides, system info, debug, support, help'),
(111, 'errors, exceptions, develop, support, help'),
(112, 'email, logging, logs, smtp, pop, errors, mysql, log'),
(113, 'security, alternate storage, hide files'),
(114, 'network, proxy server'),
(115, 'export, backup, database, sql, mysql, encryption, restore'),
(116, 'upgrade, new version, update'),
(117, 'export, database, xml, starting, points, schema, refresh, custom, tables');

-- --------------------------------------------------------

--
-- Table structure for table `atFile`
--

CREATE TABLE `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atNumber`
--

CREATE TABLE `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atSelectOptions`
--

CREATE TABLE `atSelectOptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `atSelectOptionsSelected`
--

CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atSelectSettings`
--

CREATE TABLE `atSelectSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atTextareaSettings`
--

CREATE TABLE `atTextareaSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atTextareaSettings`
--

INSERT INTO `atTextareaSettings` (`akID`, `akTextareaDisplayMode`) VALUES
(2, ''),
(3, ''),
(4, ''),
(7, '');

-- --------------------------------------------------------

--
-- Table structure for table `AttributeKeyCategories`
--

CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) NOT NULL,
  `akCategoryAllowSets` smallint(4) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `AttributeKeyCategories`
--

INSERT INTO `AttributeKeyCategories` (`akCategoryID`, `akCategoryHandle`, `akCategoryAllowSets`, `pkgID`) VALUES
(1, 'collection', 1, NULL),
(2, 'user', 1, NULL),
(3, 'file', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeKeys`
--

CREATE TABLE `AttributeKeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) NOT NULL,
  `akName` varchar(255) NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `AttributeKeys`
--

INSERT INTO `AttributeKeys` (`akID`, `akHandle`, `akName`, `akIsSearchable`, `akIsSearchableIndexed`, `akIsAutoCreated`, `akIsInternal`, `akIsColumnHeader`, `akIsEditable`, `atID`, `akCategoryID`, `pkgID`) VALUES
(1, 'meta_title', 'Meta Title', 1, 1, 0, 0, 0, 1, 1, 1, 0),
(2, 'meta_description', 'Meta Description', 1, 1, 0, 0, 0, 1, 2, 1, 0),
(3, 'meta_keywords', 'Meta Keywords', 1, 1, 0, 0, 0, 1, 2, 1, 0),
(4, 'icon_dashboard', 'Dashboard Icon', 1, 1, 0, 1, 0, 1, 2, 1, 0),
(5, 'exclude_nav', 'Exclude From Nav', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(6, 'exclude_page_list', 'Exclude From Page List', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(7, 'header_extra_content', 'Header Extra Content', 1, 1, 0, 0, 0, 1, 2, 1, 0),
(8, 'exclude_search_index', 'Exclude From Search Index', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(9, 'exclude_sitemapxml', 'Exclude From sitemap.xml', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(10, 'profile_private_messages_enabled', 'I would like to receive private messages.', 1, 1, 0, 0, 0, 1, 3, 2, 0),
(11, 'profile_private_messages_notification_enabled', 'Send me email notifications when I receive a private message.', 1, 1, 0, 0, 0, 1, 3, 2, 0),
(12, 'width', 'Width', 1, 1, 0, 0, 0, 1, 6, 3, 0),
(13, 'height', 'Height', 1, 1, 0, 0, 0, 1, 6, 3, 0),
(14, 'duration', 'Duration', 1, 1, 0, 0, 0, 1, 6, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeSetKeys`
--

CREATE TABLE `AttributeSetKeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AttributeSetKeys`
--

INSERT INTO `AttributeSetKeys` (`akID`, `asID`, `displayOrder`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(5, 2, 1),
(6, 2, 2),
(7, 1, 4),
(8, 2, 3),
(9, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeSets`
--

CREATE TABLE `AttributeSets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) DEFAULT NULL,
  `asHandle` varchar(255) NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` int(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `AttributeSets`
--

INSERT INTO `AttributeSets` (`asID`, `asName`, `asHandle`, `akCategoryID`, `pkgID`, `asIsLocked`, `asDisplayOrder`) VALUES
(1, 'Page Header', 'page_header', 1, 0, 0, 0),
(2, 'Navigation and Indexing', 'navigation', 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeTypeCategories`
--

CREATE TABLE `AttributeTypeCategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AttributeTypeCategories`
--

INSERT INTO `AttributeTypeCategories` (`atID`, `akCategoryID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 2),
(8, 3),
(9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeTypes`
--

CREATE TABLE `AttributeTypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) NOT NULL,
  `atName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`),
  UNIQUE KEY `atHandle` (`atHandle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `AttributeTypes`
--

INSERT INTO `AttributeTypes` (`atID`, `atHandle`, `atName`, `pkgID`) VALUES
(1, 'text', 'Text', 0),
(2, 'textarea', 'Text Area', 0),
(3, 'boolean', 'Checkbox', 0),
(4, 'date_time', 'Date/Time', 0),
(5, 'image_file', 'Image/File', 0),
(6, 'number', 'Number', 0),
(7, 'rating', 'Rating', 0),
(8, 'select', 'Select', 0),
(9, 'address', 'Address', 0);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeValues`
--

CREATE TABLE `AttributeValues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=121 ;

--
-- Dumping data for table `AttributeValues`
--

INSERT INTO `AttributeValues` (`avID`, `akID`, `avDateAdded`, `uID`, `atID`) VALUES
(1, 3, '2015-05-20 20:20:42', 1, 2),
(2, 4, '2015-05-20 20:20:42', 1, 2),
(3, 3, '2015-05-20 20:20:42', 1, 2),
(4, 4, '2015-05-20 20:20:42', 1, 2),
(5, 3, '2015-05-20 20:20:42', 1, 2),
(6, 4, '2015-05-20 20:20:42', 1, 2),
(7, 3, '2015-05-20 20:20:42', 1, 2),
(8, 3, '2015-05-20 20:20:42', 1, 2),
(9, 4, '2015-05-20 20:20:42', 1, 2),
(10, 3, '2015-05-20 20:20:42', 1, 2),
(11, 4, '2015-05-20 20:20:42', 1, 2),
(12, 3, '2015-05-20 20:20:42', 1, 2),
(13, 4, '2015-05-20 20:20:42', 1, 2),
(14, 3, '2015-05-20 20:20:42', 1, 2),
(15, 4, '2015-05-20 20:20:42', 1, 2),
(16, 3, '2015-05-20 20:20:42', 1, 2),
(17, 4, '2015-05-20 20:20:42', 1, 2),
(18, 3, '2015-05-20 20:20:42', 1, 2),
(19, 4, '2015-05-20 20:20:42', 1, 2),
(20, 5, '2015-05-20 20:20:42', 1, 3),
(21, 3, '2015-05-20 20:20:42', 1, 2),
(22, 4, '2015-05-20 20:20:42', 1, 2),
(23, 3, '2015-05-20 20:20:42', 1, 2),
(24, 3, '2015-05-20 20:20:42', 1, 2),
(25, 4, '2015-05-20 20:20:42', 1, 2),
(26, 3, '2015-05-20 20:20:42', 1, 2),
(27, 4, '2015-05-20 20:20:42', 1, 2),
(28, 3, '2015-05-20 20:20:42', 1, 2),
(29, 4, '2015-05-20 20:20:42', 1, 2),
(30, 3, '2015-05-20 20:20:42', 1, 2),
(31, 5, '2015-05-20 20:20:42', 1, 3),
(32, 4, '2015-05-20 20:20:42', 1, 2),
(33, 3, '2015-05-20 20:20:42', 1, 2),
(34, 5, '2015-05-20 20:20:42', 1, 3),
(35, 4, '2015-05-20 20:20:42', 1, 2),
(36, 3, '2015-05-20 20:20:43', 1, 2),
(37, 4, '2015-05-20 20:20:43', 1, 2),
(38, 3, '2015-05-20 20:20:43', 1, 2),
(39, 3, '2015-05-20 20:20:43', 1, 2),
(40, 4, '2015-05-20 20:20:43', 1, 2),
(41, 3, '2015-05-20 20:20:43', 1, 2),
(42, 4, '2015-05-20 20:20:43', 1, 2),
(43, 3, '2015-05-20 20:20:43', 1, 2),
(44, 4, '2015-05-20 20:20:43', 1, 2),
(45, 3, '2015-05-20 20:20:43', 1, 2),
(46, 4, '2015-05-20 20:20:43', 1, 2),
(47, 3, '2015-05-20 20:20:43', 1, 2),
(48, 4, '2015-05-20 20:20:43', 1, 2),
(49, 3, '2015-05-20 20:20:43', 1, 2),
(50, 3, '2015-05-20 20:20:43', 1, 2),
(51, 3, '2015-05-20 20:20:43', 1, 2),
(52, 3, '2015-05-20 20:20:43', 1, 2),
(53, 4, '2015-05-20 20:20:43', 1, 2),
(54, 3, '2015-05-20 20:20:43', 1, 2),
(55, 4, '2015-05-20 20:20:43', 1, 2),
(56, 3, '2015-05-20 20:20:43', 1, 2),
(57, 4, '2015-05-20 20:20:43', 1, 2),
(58, 3, '2015-05-20 20:20:43', 1, 2),
(59, 4, '2015-05-20 20:20:43', 1, 2),
(60, 4, '2015-05-20 20:20:43', 1, 2),
(61, 3, '2015-05-20 20:20:43', 1, 2),
(62, 4, '2015-05-20 20:20:43', 1, 2),
(63, 4, '2015-05-20 20:20:43', 1, 2),
(64, 5, '2015-05-20 20:20:43', 1, 3),
(65, 8, '2015-05-20 20:20:43', 1, 3),
(66, 3, '2015-05-20 20:20:43', 1, 2),
(67, 4, '2015-05-20 20:20:43', 1, 2),
(68, 5, '2015-05-20 20:20:43', 1, 3),
(69, 5, '2015-05-20 20:20:43', 1, 3),
(70, 3, '2015-05-20 20:20:43', 1, 2),
(71, 3, '2015-05-20 20:20:43', 1, 2),
(72, 3, '2015-05-20 20:20:43', 1, 2),
(73, 3, '2015-05-20 20:20:43', 1, 2),
(74, 3, '2015-05-20 20:20:43', 1, 2),
(75, 5, '2015-05-20 20:20:43', 1, 3),
(76, 3, '2015-05-20 20:20:43', 1, 2),
(77, 3, '2015-05-20 20:20:43', 1, 2),
(78, 3, '2015-05-20 20:20:43', 1, 2),
(79, 3, '2015-05-20 20:20:43', 1, 2),
(80, 3, '2015-05-20 20:20:43', 1, 2),
(81, 3, '2015-05-20 20:20:43', 1, 2),
(82, 3, '2015-05-20 20:20:43', 1, 2),
(83, 3, '2015-05-20 20:20:43', 1, 2),
(84, 3, '2015-05-20 20:20:43', 1, 2),
(85, 3, '2015-05-20 20:20:43', 1, 2),
(86, 3, '2015-05-20 20:20:43', 1, 2),
(87, 3, '2015-05-20 20:20:43', 1, 2),
(88, 3, '2015-05-20 20:20:43', 1, 2),
(89, 3, '2015-05-20 20:20:43', 1, 2),
(90, 3, '2015-05-20 20:20:43', 1, 2),
(91, 3, '2015-05-20 20:20:43', 1, 2),
(92, 3, '2015-05-20 20:20:43', 1, 2),
(93, 3, '2015-05-20 20:20:43', 1, 2),
(94, 3, '2015-05-20 20:20:43', 1, 2),
(95, 3, '2015-05-20 20:20:43', 1, 2),
(96, 3, '2015-05-20 20:20:43', 1, 2),
(97, 3, '2015-05-20 20:20:43', 1, 2),
(98, 3, '2015-05-20 20:20:43', 1, 2),
(99, 3, '2015-05-20 20:20:43', 1, 2),
(100, 3, '2015-05-20 20:20:43', 1, 2),
(101, 3, '2015-05-20 20:20:43', 1, 2),
(102, 3, '2015-05-20 20:20:43', 1, 2),
(103, 3, '2015-05-20 20:20:43', 1, 2),
(104, 3, '2015-05-20 20:20:43', 1, 2),
(105, 3, '2015-05-20 20:20:43', 1, 2),
(106, 3, '2015-05-20 20:20:43', 1, 2),
(107, 3, '2015-05-20 20:20:43', 1, 2),
(108, 3, '2015-05-20 20:20:43', 1, 2),
(109, 8, '2015-05-20 20:20:43', 1, 3),
(110, 3, '2015-05-20 20:20:43', 1, 2),
(111, 3, '2015-05-20 20:20:43', 1, 2),
(112, 3, '2015-05-20 20:20:43', 1, 2),
(113, 3, '2015-05-20 20:20:43', 1, 2),
(114, 3, '2015-05-20 20:20:43', 1, 2),
(115, 3, '2015-05-20 20:20:43', 1, 2),
(116, 3, '2015-05-20 20:20:44', 1, 2),
(117, 3, '2015-05-20 20:20:44', 1, 2),
(118, 5, '2015-05-20 20:20:44', 1, 3),
(119, 5, '2015-05-20 20:20:44', 1, 3),
(120, 8, '2015-05-20 20:20:44', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `BasicWorkflowPermissionAssignments`
--

CREATE TABLE `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BasicWorkflowProgressData`
--

CREATE TABLE `BasicWorkflowProgressData` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlockPermissionAssignments`
--

CREATE TABLE `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlockRelations`
--

CREATE TABLE `BlockRelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) NOT NULL,
  PRIMARY KEY (`brID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Blocks`
--

CREATE TABLE `Blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(255) DEFAULT NULL,
  `bIsActive` varchar(1) NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `Blocks`
--

INSERT INTO `Blocks` (`bID`, `bName`, `bDateAdded`, `bDateModified`, `bFilename`, `bIsActive`, `btID`, `uID`, `btCachedBlockRecord`) VALUES
(1, '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:5:"bID=1";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"1";i:1;s:161:"	<div id="newsflow-header-first-run"><h1>Welcome to concrete5.</h1>\n						<h2>It''s easy to edit content and add pages using in-context editing.</h2></div>\n						";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"1";s:7:"content";s:161:"	<div id="newsflow-header-first-run"><h1>Welcome to concrete5.</h1>\n						<h2>It''s easy to edit content and add pages using in-context editing.</h2></div>\n						";}'),
(2, '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:5:"bID=2";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"2";i:1;s:327:"<div class="newsflow-column-first-run">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/editors'')" class="btn primary">Editor''s Guide</a></p>\n							</div>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"2";s:7:"content";s:327:"<div class="newsflow-column-first-run">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/editors'')" class="btn primary">Editor''s Guide</a></p>\n							</div>";}'),
(3, '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:5:"bID=3";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"3";i:1;s:368:"<div class="newsflow-column-first-run">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/developers'')" class="btn primary">Developer''s Guide</a></p>\n							</div>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"3";s:7:"content";s:368:"<div class="newsflow-column-first-run">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/developers'')" class="btn primary">Developer''s Guide</a></p>\n							</div>";}'),
(4, '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:5:"bID=4";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"4";i:1;s:323:"<div class="newsflow-column-first-run">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/designers'')" class="btn primary">Designer''s Guide</a></p>\n							</div>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"4";s:7:"content";s:323:"<div class="newsflow-column-first-run">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/designers'')" class="btn primary">Designer''s Guide</a></p>\n							</div>";}'),
(5, '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:5:"bID=5";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"5";i:1;s:346:"\n						<div class="newsflow-column-first-run">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/executives'')" class="btn primary">Executive''s Guide</a></p>\n						</div>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"5";s:7:"content";s:346:"\n						<div class="newsflow-column-first-run">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/executives'')" class="btn primary">Executive''s Guide</a></p>\n						</div>";}'),
(6, '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', NULL, '1', 6, 1, NULL),
(7, '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', NULL, '1', 7, 1, NULL),
(8, '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', NULL, '1', 5, 1, NULL),
(9, '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', NULL, '1', 5, 1, NULL),
(10, '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', NULL, '1', 4, 1, NULL),
(11, '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', NULL, '1', 3, 1, NULL),
(12, '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', NULL, '1', 5, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessList`
--

CREATE TABLE `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessListCustom`
--

CREATE TABLE `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypes`
--

CREATE TABLE `BlockTypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(32) NOT NULL,
  `btName` varchar(128) NOT NULL,
  `btDescription` text,
  `btActiveWhenAdded` tinyint(1) NOT NULL DEFAULT '1',
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `BlockTypes`
--

INSERT INTO `BlockTypes` (`btID`, `btHandle`, `btName`, `btDescription`, `btActiveWhenAdded`, `btCopyWhenPropagate`, `btIncludeAll`, `btIsInternal`, `btDisplayOrder`, `btInterfaceWidth`, `btInterfaceHeight`, `pkgID`) VALUES
(1, 'core_scrapbook_display', 'Scrapbook Display (Core)', 'Proxy block for blocks pasted through the scrapbook.', 1, 0, 0, 1, 0, 400, 400, 0),
(2, 'core_stack_display', 'Stack Display (Core)', 'Proxy block for stacks added through the UI.', 1, 0, 0, 1, 0, 400, 400, 0),
(3, 'dashboard_featured_addon', 'Dashboard Featured Add-On', 'Features an add-on from concrete5.org.', 1, 0, 0, 1, 0, 300, 100, 0),
(4, 'dashboard_featured_theme', 'Dashboard Featured Theme', 'Features a theme from concrete5.org.', 1, 0, 0, 1, 0, 300, 100, 0),
(5, 'dashboard_newsflow_latest', 'Dashboard Newsflow Latest', 'Grabs the latest newsflow data from concrete5.org.', 1, 0, 0, 1, 0, 400, 400, 0),
(6, 'dashboard_app_status', 'Dashboard App Status', 'Displays update and welcome back information on your dashboard.', 1, 0, 0, 1, 0, 400, 400, 0),
(7, 'dashboard_site_activity', 'Dashboard Site Activity', 'Displays a summary of website activity.', 1, 0, 0, 1, 0, 400, 400, 0),
(8, 'autonav', 'Auto-Nav', 'Creates navigation trees and sitemaps.', 1, 0, 0, 0, 1, 500, 350, 0),
(9, 'content', 'Content', 'HTML/WYSIWYG Editor Content.', 1, 0, 0, 0, 2, 600, 465, 0),
(10, 'date_nav', 'Date Navigation', 'A collapsible date based navigation tree', 1, 0, 0, 0, 3, 500, 350, 0),
(11, 'external_form', 'External Form', 'Include external forms in the filesystem and place them on pages.', 1, 0, 0, 0, 4, 370, 100, 0),
(12, 'file', 'File', 'Link to files stored in the asset library.', 1, 0, 0, 0, 5, 300, 250, 0),
(13, 'flash_content', 'Flash Content', 'Embeds SWF files, including flash detection.', 1, 0, 0, 0, 6, 380, 200, 0),
(14, 'form', 'Form', 'Build simple forms and surveys.', 1, 0, 0, 0, 7, 420, 430, 0),
(15, 'google_map', 'Google Map', 'Enter an address and a Google Map of that location will be placed in your page.', 1, 0, 0, 0, 8, 750, 460, 0),
(16, 'guestbook', 'Guestbook / Comments', 'Adds blog-style comments (a guestbook) to your page.', 1, 0, 1, 0, 9, 370, 480, 0),
(17, 'html', 'HTML', 'For adding HTML by hand.', 1, 0, 0, 0, 10, 600, 465, 0),
(18, 'image', 'Image', 'Adds images and onstates from the library to pages.', 1, 0, 0, 0, 11, 400, 550, 0),
(19, 'next_previous', 'Next & Previous Nav', 'Navigate through sibling pages.', 1, 0, 0, 0, 12, 430, 400, 0),
(20, 'page_list', 'Page List', 'List pages based on type, area.', 1, 0, 0, 0, 13, 500, 350, 0),
(21, 'rss_displayer', 'RSS Displayer', 'Fetch, parse and display the contents of an RSS or Atom feed.', 1, 0, 0, 0, 14, 400, 330, 0),
(22, 'search', 'Search', 'Add a search box to your site.', 1, 0, 0, 0, 15, 400, 240, 0),
(23, 'slideshow', 'Slideshow', 'Display a running loop of images.', 1, 0, 0, 0, 16, 550, 400, 0),
(24, 'survey', 'Survey', 'Provide a simple survey, along with results in a pie chart format.', 1, 0, 0, 0, 17, 420, 300, 0),
(25, 'tags', 'Tags', 'List pages based on type, area.', 1, 0, 0, 0, 18, 450, 260, 0),
(26, 'video', 'Video Player', 'Embeds uploaded video into a web page. Supports AVI, WMV, Quicktime/MPEG4 and FLV formats.', 1, 0, 0, 0, 19, 320, 220, 0),
(27, 'youtube', 'YouTube Video', 'Embeds a YouTube Video in your web page.', 1, 0, 0, 0, 20, 400, 210, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btContentFile`
--

CREATE TABLE `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) DEFAULT NULL,
  `filePassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btContentImage`
--

CREATE TABLE `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `forceImageToMatchDimensions` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btContentLocal`
--

CREATE TABLE `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btContentLocal`
--

INSERT INTO `btContentLocal` (`bID`, `content`) VALUES
(1, '	<div id="newsflow-header-first-run"><h1>Welcome to concrete5.</h1>\n						<h2>It''s easy to edit content and add pages using in-context editing.</h2></div>\n						'),
(2, '<div class="newsflow-column-first-run">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/editors'')" class="btn primary">Editor''s Guide</a></p>\n							</div>'),
(3, '<div class="newsflow-column-first-run">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/developers'')" class="btn primary">Developer''s Guide</a></p>\n							</div>'),
(4, '<div class="newsflow-column-first-run">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/designers'')" class="btn primary">Designer''s Guide</a></p>\n							</div>'),
(5, '\n						<div class="newsflow-column-first-run">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/executives'')" class="btn primary">Executive''s Guide</a></p>\n						</div>');

-- --------------------------------------------------------

--
-- Table structure for table `btCoreScrapbookDisplay`
--

CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btCoreStackDisplay`
--

CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btDashboardNewsflowLatest`
--

CREATE TABLE `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btDashboardNewsflowLatest`
--

INSERT INTO `btDashboardNewsflowLatest` (`bID`, `slot`) VALUES
(8, 'A'),
(9, 'B'),
(12, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `btDateNav`
--

CREATE TABLE `btDateNav` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `flatDisplay` int(11) DEFAULT '0',
  `defaultNode` varchar(64) DEFAULT 'current_page',
  `truncateTitles` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  `truncateTitleChars` int(11) DEFAULT '128',
  `showDescriptions` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btExternalForm`
--

CREATE TABLE `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btFlashContent`
--

CREATE TABLE `btFlashContent` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `minVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btForm`
--

CREATE TABLE `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) DEFAULT NULL,
  `thankyouMsg` text,
  `notifyMeOnSubmission` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btFormAnswers`
--

CREATE TABLE `btFormAnswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) DEFAULT NULL,
  `answerLong` text,
  PRIMARY KEY (`aID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `btFormAnswerSet`
--

CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `btFormQuestions`
--

CREATE TABLE `btFormQuestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) DEFAULT NULL,
  `inputType` varchar(255) DEFAULT NULL,
  `options` text,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `btGoogleMap`
--

CREATE TABLE `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` int(8) DEFAULT NULL,
  `balloonShow` tinyint(4) DEFAULT NULL,
  `balloonContent` longtext,
  `balloonWithLinkToMaps` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btGuestBook`
--

CREATE TABLE `btGuestBook` (
  `bID` int(10) unsigned NOT NULL,
  `requireApproval` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT 'Comments',
  `dateFormat` varchar(100) DEFAULT NULL,
  `displayGuestBookForm` int(11) DEFAULT '1',
  `displayCaptcha` int(11) DEFAULT '1',
  `authenticationRequired` int(11) DEFAULT '0',
  `notifyEmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btGuestBookEntries`
--

CREATE TABLE `btGuestBookEntries` (
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT '1',
  `entryID` int(11) NOT NULL AUTO_INCREMENT,
  `uID` int(11) DEFAULT '0',
  `commentText` longtext,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `entryDate` datetime DEFAULT '0000-00-00 00:00:00',
  `approved` int(11) DEFAULT '1',
  PRIMARY KEY (`entryID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `btNavigation`
--

CREATE TABLE `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) DEFAULT 'alpha_asc',
  `displayPages` varchar(255) DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) DEFAULT 'none',
  `displaySubPageLevels` varchar(255) DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btNextPrevious`
--

CREATE TABLE `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `linkStyle` varchar(32) DEFAULT NULL,
  `nextLabel` varchar(128) DEFAULT NULL,
  `previousLabel` varchar(128) DEFAULT NULL,
  `parentLabel` varchar(128) DEFAULT NULL,
  `showArrows` int(11) DEFAULT '1',
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btPageList`
--

CREATE TABLE `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paginate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayAliases` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `rss` int(11) DEFAULT '0',
  `rssTitle` varchar(255) DEFAULT NULL,
  `rssDescription` longtext,
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btRssDisplay`
--

CREATE TABLE `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `dateFormat` varchar(100) DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btSearch`
--

CREATE TABLE `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buttonText` varchar(128) DEFAULT NULL,
  `baseSearchPath` varchar(255) DEFAULT NULL,
  `postTo_cID` varchar(255) DEFAULT NULL,
  `resultsURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btSlideshow`
--

CREATE TABLE `btSlideshow` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `playback` varchar(50) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btSlideshowImg`
--

CREATE TABLE `btSlideshowImg` (
  `slideshowImgId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  `groupSet` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `imgHeight` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`slideshowImgId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `btSurvey`
--

CREATE TABLE `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btSurveyOptions`
--

CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `btSurveyResults`
--

CREATE TABLE `btSurveyResults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `btTags`
--

CREATE TABLE `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btVideo`
--

CREATE TABLE `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btYouTube`
--

CREATE TABLE `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `vHeight` varchar(255) DEFAULT NULL,
  `vWidth` varchar(255) DEFAULT NULL,
  `vPlayer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionAttributeValues`
--

CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CollectionAttributeValues`
--

INSERT INTO `CollectionAttributeValues` (`cID`, `cvID`, `akID`, `avID`) VALUES
(3, 1, 3, 1),
(3, 1, 4, 2),
(4, 1, 3, 3),
(4, 1, 4, 4),
(5, 1, 3, 5),
(5, 1, 4, 6),
(6, 1, 3, 7),
(7, 1, 3, 8),
(7, 1, 4, 9),
(8, 1, 3, 10),
(8, 1, 4, 11),
(9, 1, 3, 12),
(9, 1, 4, 13),
(11, 1, 3, 14),
(11, 1, 4, 15),
(12, 1, 3, 16),
(12, 1, 4, 17),
(13, 1, 3, 18),
(13, 1, 4, 19),
(14, 1, 3, 21),
(14, 1, 4, 22),
(14, 1, 5, 20),
(15, 1, 3, 23),
(16, 1, 3, 24),
(16, 1, 4, 25),
(17, 1, 3, 26),
(17, 1, 4, 27),
(18, 1, 3, 28),
(18, 1, 4, 29),
(19, 1, 3, 30),
(19, 1, 4, 32),
(19, 1, 5, 31),
(20, 1, 3, 33),
(20, 1, 4, 35),
(20, 1, 5, 34),
(21, 1, 3, 36),
(21, 1, 4, 37),
(22, 1, 3, 38),
(23, 1, 3, 39),
(23, 1, 4, 40),
(24, 1, 3, 41),
(24, 1, 4, 42),
(25, 1, 3, 43),
(25, 1, 4, 44),
(26, 1, 3, 45),
(26, 1, 4, 46),
(28, 1, 3, 47),
(28, 1, 4, 48),
(29, 1, 3, 49),
(30, 1, 3, 50),
(31, 1, 3, 51),
(32, 1, 3, 52),
(32, 1, 4, 53),
(34, 1, 3, 54),
(34, 1, 4, 55),
(35, 1, 3, 56),
(35, 1, 4, 57),
(36, 1, 3, 58),
(37, 1, 4, 59),
(38, 1, 4, 60),
(40, 1, 3, 61),
(40, 1, 4, 62),
(41, 1, 4, 63),
(42, 1, 5, 64),
(42, 1, 8, 65),
(43, 1, 3, 66),
(43, 1, 4, 67),
(44, 1, 5, 68),
(45, 1, 5, 69),
(46, 1, 3, 70),
(47, 1, 3, 71),
(48, 1, 3, 72),
(49, 1, 3, 73),
(50, 1, 3, 74),
(51, 1, 5, 75),
(53, 1, 3, 76),
(54, 1, 3, 77),
(55, 1, 3, 78),
(56, 1, 3, 79),
(57, 1, 3, 80),
(58, 1, 3, 81),
(60, 1, 3, 82),
(61, 1, 3, 83),
(62, 1, 3, 84),
(63, 1, 3, 85),
(64, 1, 3, 86),
(65, 1, 3, 87),
(67, 1, 3, 88),
(68, 1, 3, 89),
(69, 1, 3, 90),
(71, 1, 3, 91),
(72, 1, 3, 92),
(73, 1, 3, 93),
(74, 1, 3, 94),
(77, 1, 3, 95),
(78, 1, 3, 96),
(79, 1, 3, 97),
(80, 1, 3, 98),
(82, 1, 3, 99),
(83, 1, 3, 100),
(84, 1, 3, 101),
(85, 1, 3, 102),
(86, 1, 3, 103),
(87, 1, 3, 104),
(88, 1, 3, 105),
(89, 1, 3, 106),
(90, 1, 3, 107),
(91, 1, 3, 108),
(92, 1, 8, 109),
(93, 1, 3, 110),
(94, 1, 3, 111),
(95, 1, 3, 112),
(96, 1, 3, 113),
(97, 1, 3, 114),
(98, 1, 3, 115),
(100, 1, 3, 116),
(101, 1, 3, 117),
(106, 1, 5, 118),
(107, 1, 5, 119),
(107, 1, 8, 120);

-- --------------------------------------------------------

--
-- Table structure for table `Collections`
--

CREATE TABLE `Collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=122 ;

--
-- Dumping data for table `Collections`
--

INSERT INTO `Collections` (`cID`, `cDateAdded`, `cDateModified`, `cHandle`) VALUES
(1, '2015-05-20 20:20:32', '2015-05-20 20:20:44', 'home'),
(2, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'dashboard'),
(3, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'composer'),
(4, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'write'),
(5, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'drafts'),
(6, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'sitemap'),
(7, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'full'),
(8, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'explore'),
(9, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'search'),
(10, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'files'),
(11, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'search'),
(12, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'attributes'),
(13, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'sets'),
(14, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'add_set'),
(15, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'users'),
(16, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'search'),
(17, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'groups'),
(18, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'attributes'),
(19, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'add'),
(20, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'add_group'),
(21, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'group_sets'),
(22, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'reports'),
(23, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'statistics'),
(24, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'forms'),
(25, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'surveys'),
(26, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'logs'),
(27, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'pages'),
(28, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'themes'),
(29, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'add'),
(30, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'inspect'),
(31, '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'customize'),
(32, '2015-05-20 20:20:40', '2015-05-20 20:20:41', 'types'),
(33, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'add'),
(34, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'attributes'),
(35, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'single'),
(36, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'workflow'),
(37, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'list'),
(38, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'me'),
(39, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'blocks'),
(40, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'stacks'),
(41, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'permissions'),
(42, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'list'),
(43, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'types'),
(44, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'extend'),
(45, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'news'),
(46, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'install'),
(47, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'update'),
(48, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'connect'),
(49, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'themes'),
(50, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'add-ons'),
(51, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'system'),
(52, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'basics'),
(53, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'site_name'),
(54, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'icons'),
(55, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'editor'),
(56, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'multilingual'),
(57, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'timezone'),
(58, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'interface'),
(59, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'seo'),
(60, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'urls'),
(61, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'bulk_seo_tool'),
(62, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'tracking_codes'),
(63, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'excluded'),
(64, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'statistics'),
(65, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'search_index'),
(66, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'optimization'),
(67, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'cache'),
(68, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'clear_cache'),
(69, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'jobs'),
(70, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'permissions'),
(71, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'site'),
(72, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'files'),
(73, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'file_types'),
(74, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'tasks'),
(75, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'users'),
(76, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'advanced'),
(77, '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'ip_blacklist'),
(78, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'captcha'),
(79, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'antispam'),
(80, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'maintenance_mode'),
(81, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'registration'),
(82, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'postlogin'),
(83, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'profiles'),
(84, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'public_registration'),
(85, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'mail'),
(86, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'method'),
(87, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'test_settings'),
(88, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'importers'),
(89, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'attributes'),
(90, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'sets'),
(91, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'types'),
(92, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'environment'),
(93, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'info'),
(94, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'debug'),
(95, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'logging'),
(96, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'file_storage_locations'),
(97, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'proxy'),
(98, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'backup_restore'),
(99, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'backup'),
(100, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'update'),
(101, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'database'),
(102, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'composer'),
(103, '2015-05-20 20:20:42', '2015-05-20 20:20:42', NULL),
(104, '2015-05-20 20:20:42', '2015-05-20 20:20:42', NULL),
(105, '2015-05-20 20:20:42', '2015-05-20 20:20:42', NULL),
(106, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'welcome'),
(107, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'home'),
(108, '2015-05-20 20:20:44', '2015-05-20 20:20:44', '!drafts'),
(109, '2015-05-20 20:20:44', '2015-05-20 20:20:44', '!trash'),
(110, '2015-05-20 20:20:44', '2015-05-20 20:20:44', '!stacks'),
(111, '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'login'),
(112, '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'register'),
(113, '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'profile'),
(114, '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'edit'),
(115, '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'avatar'),
(116, '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'messages'),
(117, '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'friends'),
(118, '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'page_not_found'),
(119, '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'page_forbidden'),
(120, '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'download_file'),
(121, '2015-05-20 20:20:44', '2015-05-20 20:20:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionSearchIndexAttributes`
--

CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` text,
  `ak_meta_description` text,
  `ak_meta_keywords` text,
  `ak_icon_dashboard` text,
  `ak_exclude_nav` tinyint(4) DEFAULT '0',
  `ak_exclude_page_list` tinyint(4) DEFAULT '0',
  `ak_header_extra_content` text,
  `ak_exclude_search_index` tinyint(4) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CollectionSearchIndexAttributes`
--

INSERT INTO `CollectionSearchIndexAttributes` (`cID`, `ak_meta_title`, `ak_meta_description`, `ak_meta_keywords`, `ak_icon_dashboard`, `ak_exclude_nav`, `ak_exclude_page_list`, `ak_header_extra_content`, `ak_exclude_search_index`, `ak_exclude_sitemapxml`) VALUES
(1, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0),
(3, NULL, NULL, 'blog, blogging', 'icon-book', 0, 0, NULL, 0, 0),
(4, NULL, NULL, 'new blog, write blog, blogging', 'icon-pencil', 0, 0, NULL, 0, 0),
(5, NULL, NULL, 'blog drafts, composer', 'icon-book', 0, 0, NULL, 0, 0),
(6, NULL, NULL, 'pages, add page, delete page, copy, move, alias', NULL, 0, 0, NULL, 0, 0),
(7, NULL, NULL, 'pages, add page, delete page, copy, move, alias', 'icon-home', 0, 0, NULL, 0, 0),
(8, NULL, NULL, 'pages, add page, delete page, copy, move, alias, bulk', 'icon-road', 0, 0, NULL, 0, 0),
(9, NULL, NULL, 'find page, search page, search, find, pages, sitemap', 'icon-search', 0, 0, NULL, 0, 0),
(11, NULL, NULL, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute', 'icon-picture', 0, 0, NULL, 0, 0),
(12, NULL, NULL, 'file, file attributes, title, attribute, description, rename', 'icon-cog', 0, 0, NULL, 0, 0),
(13, NULL, NULL, 'files, category, categories', 'icon-list-alt', 0, 0, NULL, 0, 0),
(14, NULL, NULL, 'new file set', 'icon-plus-sign', 1, 0, NULL, 0, 0),
(15, NULL, NULL, 'users, groups, people, find, delete user, remove user, change password, password', NULL, 0, 0, NULL, 0, 0),
(16, NULL, NULL, 'find, search, people, delete user, remove user, change password, password', 'icon-user', 0, 0, NULL, 0, 0),
(17, NULL, NULL, 'user, group, people, permissions, access, expire', 'icon-globe', 0, 0, NULL, 0, 0),
(18, NULL, NULL, 'user attributes, user data, gather data, registration data', 'icon-cog', 0, 0, NULL, 0, 0),
(19, NULL, NULL, 'new user, create', 'icon-plus-sign', 1, 0, NULL, 0, 0),
(20, NULL, NULL, 'new user group, new group, group, create', 'icon-plus', 1, 0, NULL, 0, 0),
(21, NULL, NULL, 'group set', 'icon-list', 0, 0, NULL, 0, 0),
(22, NULL, NULL, 'forms, log, error, email, mysql, exception, survey', NULL, 0, 0, NULL, 0, 0),
(23, NULL, NULL, 'hits, pageviews, visitors, activity', 'icon-signal', 0, 0, NULL, 0, 0),
(24, NULL, NULL, 'forms, questions, response, data', 'icon-briefcase', 0, 0, NULL, 0, 0),
(25, NULL, NULL, 'questions, quiz, response', 'icon-tasks', 0, 0, NULL, 0, 0),
(26, NULL, NULL, 'forms, log, error, email, mysql, exception, survey, history', 'icon-time', 0, 0, NULL, 0, 0),
(28, NULL, NULL, 'new theme, theme, active theme, change theme, template, css', 'icon-font', 0, 0, NULL, 0, 0),
(29, NULL, NULL, 'theme', NULL, 0, 0, NULL, 0, 0),
(30, NULL, NULL, 'page types', NULL, 0, 0, NULL, 0, 0),
(31, NULL, NULL, 'custom theme, change theme, custom css, css', NULL, 0, 0, NULL, 0, 0),
(32, NULL, NULL, 'page type defaults, global block, global area, starter, template', 'icon-file', 0, 0, NULL, 0, 0),
(34, NULL, NULL, 'page attributes, custom', 'icon-cog', 0, 0, NULL, 0, 0),
(35, NULL, NULL, 'single, page, custom, application', 'icon-wrench', 0, 0, NULL, 0, 0),
(36, NULL, NULL, 'add workflow, remove workflow', NULL, 0, 0, NULL, 0, 0),
(37, NULL, NULL, NULL, 'icon-list', 0, 0, NULL, 0, 0),
(38, NULL, NULL, NULL, 'icon-user', 0, 0, NULL, 0, 0),
(40, NULL, NULL, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo', 'icon-th', 0, 0, NULL, 0, 0),
(41, NULL, NULL, NULL, 'icon-lock', 0, 0, NULL, 0, 0),
(42, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0),
(43, NULL, NULL, 'block, refresh, custom', 'icon-wrench', 0, 0, NULL, 0, 0),
(44, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0),
(45, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0),
(46, NULL, NULL, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks', NULL, 0, 0, NULL, 0, 0),
(47, NULL, NULL, 'update, upgrade', NULL, 0, 0, NULL, 0, 0),
(48, NULL, NULL, 'concrete5.org, my account, marketplace', NULL, 0, 0, NULL, 0, 0),
(49, NULL, NULL, 'buy theme, new theme, marketplace, template', NULL, 0, 0, NULL, 0, 0),
(50, NULL, NULL, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace', NULL, 0, 0, NULL, 0, 0),
(51, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0),
(53, NULL, NULL, 'website name, title', NULL, 0, 0, NULL, 0, 0),
(54, NULL, NULL, 'logo, favicon, iphone, icon, bookmark', NULL, 0, 0, NULL, 0, 0),
(55, NULL, NULL, 'tinymce, content block, fonts, editor, content, overlay', NULL, 0, 0, NULL, 0, 0),
(56, NULL, NULL, 'translate, translation, internationalization, multilingual', NULL, 0, 0, NULL, 0, 0),
(57, NULL, NULL, 'timezone, profile, locale', NULL, 0, 0, NULL, 0, 0),
(58, NULL, NULL, 'interface, quick nav, dashboard background, background image', NULL, 0, 0, NULL, 0, 0),
(60, NULL, NULL, 'vanity, pretty url, seo, pageview, view', NULL, 0, 0, NULL, 0, 0),
(61, NULL, NULL, 'bulk, seo, change keywords, engine, optimization, search', NULL, 0, 0, NULL, 0, 0),
(62, NULL, NULL, 'traffic, statistics, google analytics, quant, pageviews, hits', NULL, 0, 0, NULL, 0, 0),
(63, NULL, NULL, 'pretty, slug', NULL, 0, 0, NULL, 0, 0),
(64, NULL, NULL, 'turn off statistics, tracking, statistics, pageviews, hits', NULL, 0, 0, NULL, 0, 0),
(65, NULL, NULL, 'configure search, site search, search option', NULL, 0, 0, NULL, 0, 0),
(67, NULL, NULL, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching', NULL, 0, 0, NULL, 0, 0),
(68, NULL, NULL, 'cache option, turn off cache, no cache, page cache, caching', NULL, 0, 0, NULL, 0, 0),
(69, NULL, NULL, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old', NULL, 0, 0, NULL, 0, 0),
(71, NULL, NULL, 'editors, hide site, offline, private, public, access', NULL, 0, 0, NULL, 0, 0),
(72, NULL, NULL, 'file options, file manager, upload, modify', NULL, 0, 0, NULL, 0, 0),
(73, NULL, NULL, 'security, files, media, extension, manager, upload', NULL, 0, 0, NULL, 0, 0),
(74, NULL, NULL, 'security, actions, administrator, admin, package, marketplace, search', NULL, 0, 0, NULL, 0, 0),
(77, NULL, NULL, 'security, lock ip, lock out, block ip, address, restrict, access', NULL, 0, 0, NULL, 0, 0),
(78, NULL, NULL, 'security, registration', NULL, 0, 0, NULL, 0, 0),
(79, NULL, NULL, 'antispam, block spam, security', NULL, 0, 0, NULL, 0, 0),
(80, NULL, NULL, 'lock site, under construction, hide, hidden', NULL, 0, 0, NULL, 0, 0),
(82, NULL, NULL, 'profile, login, redirect, specific, dashboard, administrators', NULL, 0, 0, NULL, 0, 0),
(83, NULL, NULL, 'member profile, member page, community, forums, social, avatar', NULL, 0, 0, NULL, 0, 0),
(84, NULL, NULL, 'signup, new user, community', NULL, 0, 0, NULL, 0, 0),
(85, NULL, NULL, 'smtp, mail settings', NULL, 0, 0, NULL, 0, 0),
(86, NULL, NULL, 'email server, mail settings, mail configuration, external, internal', NULL, 0, 0, NULL, 0, 0),
(87, NULL, NULL, 'test smtp, test mail', NULL, 0, 0, NULL, 0, 0),
(88, NULL, NULL, 'email server, mail settings, mail configuration, private message, message system, import, email, message', NULL, 0, 0, NULL, 0, 0),
(89, NULL, NULL, 'attribute configuration', NULL, 0, 0, NULL, 0, 0),
(90, NULL, NULL, 'attributes, sets', NULL, 0, 0, NULL, 0, 0),
(91, NULL, NULL, 'attributes, types', NULL, 0, 0, NULL, 0, 0),
(92, NULL, NULL, NULL, NULL, 0, 0, NULL, 1, 0),
(93, NULL, NULL, 'overrides, system info, debug, support, help', NULL, 0, 0, NULL, 0, 0),
(94, NULL, NULL, 'errors, exceptions, develop, support, help', NULL, 0, 0, NULL, 0, 0),
(95, NULL, NULL, 'email, logging, logs, smtp, pop, errors, mysql, log', NULL, 0, 0, NULL, 0, 0),
(96, NULL, NULL, 'security, alternate storage, hide files', NULL, 0, 0, NULL, 0, 0),
(97, NULL, NULL, 'network, proxy server', NULL, 0, 0, NULL, 0, 0),
(98, NULL, NULL, 'export, backup, database, sql, mysql, encryption, restore', NULL, 0, 0, NULL, 0, 0),
(100, NULL, NULL, 'upgrade, new version, update', NULL, 0, 0, NULL, 0, 0),
(101, NULL, NULL, 'export, database, xml, starting, points, schema, refresh, custom, tables', NULL, 0, 0, NULL, 0, 0),
(106, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0),
(107, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionAreaLayouts`
--

CREATE TABLE `CollectionVersionAreaLayouts` (
  `cvalID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cvID` int(10) unsigned DEFAULT '0',
  `arHandle` varchar(255) DEFAULT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) DEFAULT '1000',
  `areaNameNumber` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cvalID`),
  KEY `areaLayoutsIndex` (`cID`,`cvID`,`arHandle`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionAreaStyles`
--

CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlocks`
--

CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `cbIncludeAll` (`cbIncludeAll`),
  KEY `isOriginal` (`isOriginal`),
  KEY `bID` (`bID`),
  KEY `cIDcvID` (`cID`,`cvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CollectionVersionBlocks`
--

INSERT INTO `CollectionVersionBlocks` (`cID`, `cvID`, `bID`, `arHandle`, `cbDisplayOrder`, `isOriginal`, `cbOverrideAreaPermissions`, `cbIncludeAll`) VALUES
(106, 1, 1, 'Header', 0, 1, 0, 0),
(106, 1, 2, 'Column 1', 0, 1, 0, 0),
(106, 1, 3, 'Column 2', 0, 1, 0, 0),
(106, 1, 4, 'Column 3', 0, 1, 0, 0),
(106, 1, 5, 'Column 4', 0, 1, 0, 0),
(107, 1, 6, 'Primary', 0, 1, 0, 0),
(107, 1, 7, 'Primary', 1, 1, 0, 0),
(107, 1, 8, 'Secondary 1', 0, 1, 0, 0),
(107, 1, 9, 'Secondary 2', 0, 1, 0, 0),
(107, 1, 10, 'Secondary 3', 0, 1, 0, 0),
(107, 1, 11, 'Secondary 4', 0, 1, 0, 0),
(107, 1, 12, 'Secondary 5', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlocksOutputCache`
--

CREATE TABLE `CollectionVersionBlocksOutputCache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `btCachedBlockOutput` longtext,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CollectionVersionBlocksOutputCache`
--

INSERT INTO `CollectionVersionBlocksOutputCache` (`cID`, `cvID`, `bID`, `arHandle`, `btCachedBlockOutput`, `btCachedBlockOutputExpires`) VALUES
(106, 1, 1, 'Header', '	<div id="newsflow-header-first-run"><h1>Welcome to concrete5.</h1>\n						<h2>It''s easy to edit content and add pages using in-context editing.</h2></div>\n						', 1590020452),
(106, 1, 2, 'Column 1', '<div class="newsflow-column-first-run">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/editors'')" class="btn primary">Editor''s Guide</a></p>\n							</div>', 1590020452),
(106, 1, 3, 'Column 2', '<div class="newsflow-column-first-run">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/developers'')" class="btn primary">Developer''s Guide</a></p>\n							</div>', 1590020452),
(106, 1, 4, 'Column 3', '<div class="newsflow-column-first-run">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/designers'')" class="btn primary">Designer''s Guide</a></p>\n							</div>', 1590020452),
(106, 1, 5, 'Column 4', '\n						<div class="newsflow-column-first-run">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/executives'')" class="btn primary">Executive''s Guide</a></p>\n						</div>', 1590020452);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlockStyles`
--

CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionRelatedEdits`
--

CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersions`
--

CREATE TABLE `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text,
  `cvHandle` varchar(255) DEFAULT NULL,
  `cvDescription` text,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `ctID` (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CollectionVersions`
--

INSERT INTO `CollectionVersions` (`cID`, `cvID`, `cvName`, `cvHandle`, `cvDescription`, `cvDatePublic`, `cvDateCreated`, `cvComments`, `cvIsApproved`, `cvIsNew`, `cvAuthorUID`, `cvApproverUID`, `ptID`, `ctID`, `cvActivateDatetime`) VALUES
(1, 1, 'Home', 'home', '', '2015-05-20 20:20:32', '2015-05-20 20:20:32', 'Initial Version', 1, 0, 1, NULL, 1, 4, NULL),
(2, 1, 'Dashboard', 'dashboard', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(3, 1, 'Composer', 'composer', 'Write for your site.', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(4, 1, 'Write', 'write', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(5, 1, 'Drafts', 'drafts', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(6, 1, 'Sitemap', 'sitemap', 'Whole world at a glance.', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(7, 1, 'Full Sitemap', 'full', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(8, 1, 'Flat View', 'explore', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(9, 1, 'Page Search', 'search', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(10, 1, 'Files', 'files', 'All documents and images.', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(11, 1, 'File Manager', 'search', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(12, 1, 'Attributes', 'attributes', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(13, 1, 'File Sets', 'sets', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(14, 1, 'Add File Set', 'add_set', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(15, 1, 'Members', 'users', 'Add and manage the user accounts and groups on your website.', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(16, 1, 'Search Users', 'search', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(17, 1, 'User Groups', 'groups', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(18, 1, 'Attributes', 'attributes', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(19, 1, 'Add User', 'add', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(20, 1, 'Add Group', 'add_group', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(21, 1, 'Group Sets', 'group_sets', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(22, 1, 'Reports', 'reports', 'Get data from forms and logs.', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(23, 1, 'Statistics', 'statistics', 'View your site activity.', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(24, 1, 'Form Results', 'forms', 'Get submission data.', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(25, 1, 'Surveys', 'surveys', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(26, 1, 'Logs', 'logs', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(27, 1, 'Pages & Themes', 'pages', 'Reskin your site.', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(28, 1, 'Themes', 'themes', 'Reskin your site.', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(29, 1, 'Add', 'add', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(30, 1, 'Inspect', 'inspect', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(31, 1, 'Customize', 'customize', '', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(32, 1, 'Page Types', 'types', 'What goes in your site.', '2015-05-20 20:20:40', '2015-05-20 20:20:40', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(33, 1, 'Add Page Type', 'add', 'Add page types to your site.', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(34, 1, 'Attributes', 'attributes', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(35, 1, 'Single Pages', 'single', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(36, 1, 'Workflow', 'workflow', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(37, 1, 'Workflow List', 'list', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(38, 1, 'Waiting for Me', 'me', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(39, 1, 'Stacks & Blocks', 'blocks', 'Manage sitewide content and administer block types.', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(40, 1, 'Stacks', 'stacks', 'Share content across your site.', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(41, 1, 'Block & Stack Permissions', 'permissions', 'Control who can add blocks and stacks on your site.', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(42, 1, 'Stack List', 'list', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(43, 1, 'Block Types', 'types', 'Manage the installed block types in your site.', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(44, 1, 'Extend concrete5', 'extend', 'Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(45, 1, 'Dashboard', 'news', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(46, 1, 'Add Functionality', 'install', 'Install add-ons & themes.', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(47, 1, 'Update Add-Ons', 'update', 'Update your installed packages.', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(48, 1, 'Connect to the Community', 'connect', 'Connect to the concrete5 community.', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(49, 1, 'Get More Themes', 'themes', 'Download themes from concrete5.org.', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(50, 1, 'Get More Add-Ons', 'add-ons', 'Download add-ons from concrete5.org.', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(51, 1, 'System & Settings', 'system', 'Secure and setup your site.', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(52, 1, 'Basics', 'basics', 'Basic information about your website.', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(53, 1, 'Site Name', 'site_name', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(54, 1, 'Bookmark Icons', 'icons', 'Bookmark icon and mobile home screen icon setup.', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(55, 1, 'Rich Text Editor', 'editor', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(56, 1, 'Languages', 'multilingual', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(57, 1, 'Time Zone', 'timezone', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(58, 1, 'Interface Preferences', 'interface', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(59, 1, 'SEO & Statistics', 'seo', 'Enable pretty URLs, statistics and tracking codes.', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(60, 1, 'Pretty URLs', 'urls', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(61, 1, 'Bulk SEO Updater', 'bulk_seo_tool', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(62, 1, 'Tracking Codes', 'tracking_codes', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(63, 1, 'Excluded URL Word List', 'excluded', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(64, 1, 'Statistics', 'statistics', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(65, 1, 'Search Index', 'search_index', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(66, 1, 'Optimization', 'optimization', 'Keep your site running well.', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(67, 1, 'Cache & Speed Settings', 'cache', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(68, 1, 'Clear Cache', 'clear_cache', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(69, 1, 'Automated Jobs', 'jobs', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(70, 1, 'Permissions & Access', 'permissions', 'Control who sees and edits your site.', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(71, 1, 'Site Access', 'site', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(72, 1, 'File Manager Permissions', 'files', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(73, 1, 'Allowed File Types', 'file_types', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(74, 1, 'Task Permissions', 'tasks', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(75, 1, 'User Permissions', 'users', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(76, 1, 'Advanced Permissions', 'advanced', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(77, 1, 'IP Blacklist', 'ip_blacklist', '', '2015-05-20 20:20:41', '2015-05-20 20:20:41', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(78, 1, 'Captcha Setup', 'captcha', '', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(79, 1, 'Spam Control', 'antispam', '', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(80, 1, 'Maintenance Mode', 'maintenance_mode', '', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(81, 1, 'Login & Registration', 'registration', 'Change login behaviors and setup public profiles.', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(82, 1, 'Login Destination', 'postlogin', '', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(83, 1, 'Public Profiles', 'profiles', '', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(84, 1, 'Public Registration', 'public_registration', '', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(85, 1, 'Email', 'mail', 'Control how your site send and processes mail.', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(86, 1, 'SMTP Method', 'method', '', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(87, 1, 'Test Mail Settings', 'test_settings', '', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(88, 1, 'Email Importers', 'importers', '', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(89, 1, 'Attributes', 'attributes', 'Setup attributes for pages, users, files and more.', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(90, 1, 'Sets', 'sets', 'Group attributes into sets for easier organization', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(91, 1, 'Types', 'types', 'Choose which attribute types are available for different items.', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(92, 1, 'Environment', 'environment', 'Advanced settings for web developers.', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(93, 1, 'Environment Information', 'info', '', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(94, 1, 'Debug Settings', 'debug', '', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(95, 1, 'Logging Settings', 'logging', '', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(96, 1, 'File Storage Locations', 'file_storage_locations', '', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(97, 1, 'Proxy Server', 'proxy', '', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(98, 1, 'Backup & Restore', 'backup_restore', 'Backup or restore your website.', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(99, 1, 'Backup Database', 'backup', '', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(100, 1, 'Update concrete5', 'update', '', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(101, 1, 'Database XML', 'database', '', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(102, 1, 'Composer', 'composer', '', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(103, 1, '', NULL, NULL, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, NULL, NULL, 0, 1, NULL),
(104, 1, '', NULL, NULL, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, NULL, NULL, 0, 2, NULL),
(105, 1, '', NULL, NULL, '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, NULL, NULL, 0, 3, NULL),
(106, 1, 'Welcome to concrete5', 'welcome', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 3, NULL),
(107, 1, 'Customize Dashboard Home', 'home', '', '2015-05-20 20:20:42', '2015-05-20 20:20:42', 'Initial Version', 1, 0, 1, NULL, 1, 2, NULL),
(108, 1, 'Drafts', '!drafts', '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(109, 1, 'Trash', '!trash', '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(110, 1, 'Stacks', '!stacks', '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(111, 1, 'Login', 'login', '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(112, 1, 'Register', 'register', '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(113, 1, 'Profile', 'profile', '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(114, 1, 'Edit', 'edit', '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(115, 1, 'Avatar', 'avatar', '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(116, 1, 'Messages', 'messages', '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(117, 1, 'Friends', 'friends', '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(118, 1, 'Page Not Found', 'page_not_found', '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(119, 1, 'Page Forbidden', 'page_forbidden', '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(120, 1, 'Download File', 'download_file', '', '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'Initial Version', 1, 0, 1, NULL, 1, 0, NULL),
(121, 1, '', NULL, NULL, '2015-05-20 20:20:44', '2015-05-20 20:20:44', 'Initial Version', 1, 0, NULL, NULL, 0, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ComposerContentLayout`
--

CREATE TABLE `ComposerContentLayout` (
  `cclID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ccFilename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cclID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ComposerDrafts`
--

CREATE TABLE `ComposerDrafts` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cpPublishParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ComposerTypes`
--

CREATE TABLE `ComposerTypes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageMethod` varchar(64) NOT NULL DEFAULT 'CHOOSE',
  `ctComposerPublishPageTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Config`
--

CREATE TABLE `Config` (
  `cfKey` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cfValue` longtext,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Config`
--

INSERT INTO `Config` (`cfKey`, `timestamp`, `cfValue`, `uID`, `pkgID`) VALUES
('ACCESS_ENTITY_UPDATED', '2015-05-21 00:20:40', '1432167640', 0, 0),
('ANTISPAM_LOG_SPAM', '2015-05-21 00:20:44', '1', 0, 0),
('APP_VERSION_LATEST', '2015-05-21 00:20:45', '5.6.3.3', 0, 0),
('ENABLE_BLOCK_CACHE', '2015-05-21 00:20:44', '1', 0, 0),
('ENABLE_LOG_EMAILS', '2015-05-21 00:20:44', '1', 0, 0),
('ENABLE_LOG_ERRORS', '2015-05-21 00:20:44', '1', 0, 0),
('ENABLE_MARKETPLACE_SUPPORT', '2015-05-21 00:20:44', '1', 0, 0),
('ENABLE_OVERRIDE_CACHE', '2015-05-21 00:20:44', '1', 0, 0),
('FULL_PAGE_CACHE_GLOBAL', '2015-05-21 00:20:44', '0', 0, 0),
('NEWSFLOW_LAST_VIEWED', '2015-05-21 00:20:52', '1432167652', 1, 0),
('SECURITY_TOKEN_ENCRYPTION', '2015-05-21 00:20:45', 'kMxkBvee45psLDeY3BRzKg3QOPjycGPXwjOw5UtI6cByN8p4uOYzvUWK4Nsgomvh', 0, 0),
('SECURITY_TOKEN_JOBS', '2015-05-21 00:20:45', 'Qt5NXe2zffv3Pr8ScX5sZvi7tC26Q1b3ikUwcihL9Vmuy3e1y2NYCMEBxzq9ZN7J', 0, 0),
('SECURITY_TOKEN_VALIDATION', '2015-05-21 00:20:45', 'xJPlun9RfEJZQzBywxpusGYUX3Dy8BvntCmHjOZeYb5hCmHL5BBhZjBkCcGONVhb', 0, 0),
('SEEN_INTRODUCTION', '2015-05-21 00:20:52', '1', 0, 0),
('SITE', '2015-05-21 00:20:44', 'Calling Chaos', 0, 0),
('SITE_APP_VERSION', '2015-05-21 00:20:44', '5.6.3.3', 0, 0),
('SITE_DEBUG_LEVEL', '2015-05-21 00:20:44', '1', 0, 0),
('SITE_INSTALLED_APP_VERSION', '2015-05-21 00:20:44', '5.6.3.3', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `CustomStylePresets`
--

CREATE TABLE `CustomStylePresets` (
  `cspID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cspName` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cspID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `CustomStyleRules`
--

CREATE TABLE `CustomStyleRules` (
  `csrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `css_id` varchar(128) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `css_serialized` text,
  `css_custom` text,
  PRIMARY KEY (`csrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `DownloadStatistics`
--

CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `FileAttributeValues`
--

CREATE TABLE `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `FilePermissionAssignments`
--

CREATE TABLE `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`paID`,`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `FilePermissionFileTypes`
--

CREATE TABLE `FilePermissionFileTypes` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL,
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Files`
--

CREATE TABLE `Files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` int(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `FileSearchIndexAttributes`
--

CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `FileSetFiles`
--

CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `FileSetPermissionAssignments`
--

CREATE TABLE `FileSetPermissionAssignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`paID`,`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `FileSetPermissionAssignments`
--

INSERT INTO `FileSetPermissionAssignments` (`fsID`, `paID`, `pkID`) VALUES
(0, 44, 35),
(0, 45, 36),
(0, 46, 37),
(0, 47, 38),
(0, 48, 39),
(0, 49, 40),
(0, 50, 42),
(0, 51, 41),
(0, 52, 43);

-- --------------------------------------------------------

--
-- Table structure for table `FileSetPermissionFileTypeAccessList`
--

CREATE TABLE `FileSetPermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `FileSetPermissionFileTypeAccessListCustom`
--

CREATE TABLE `FileSetPermissionFileTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(64) NOT NULL,
  PRIMARY KEY (`paID`,`peID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `FileSets`
--

CREATE TABLE `FileSets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` int(4) NOT NULL,
  `fsOverrideGlobalPermissions` int(4) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `fsOverrideGlobalPermissions` (`fsOverrideGlobalPermissions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `FileSetSavedSearches`
--

CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text,
  `fsResultColumns` text,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `FileStorageLocations`
--

CREATE TABLE `FileStorageLocations` (
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslName` varchar(255) NOT NULL,
  `fslDirectory` varchar(255) NOT NULL,
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `FileVersionLog`
--

CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `FileVersions`
--

CREATE TABLE `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) NOT NULL,
  `fvPrefix` varchar(12) DEFAULT NULL,
  `fvGenericType` int(3) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(20) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) DEFAULT NULL,
  `fvDescription` text,
  `fvTags` varchar(255) DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasThumbnail1` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail2` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail3` int(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvType`),
  KEY `fvTitle` (`fvTitle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Groups`
--

CREATE TABLE `Groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) NOT NULL,
  `gDescription` varchar(255) NOT NULL,
  `gUserExpirationIsEnabled` int(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gID`),
  UNIQUE KEY `gName` (`gName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Groups`
--

INSERT INTO `Groups` (`gID`, `gName`, `gDescription`, `gUserExpirationIsEnabled`, `gUserExpirationMethod`, `gUserExpirationSetDateTime`, `gUserExpirationInterval`, `gUserExpirationAction`) VALUES
(1, 'Guest', 'The guest group represents unregistered visitors to your site.', 0, NULL, NULL, 0, NULL),
(2, 'Registered Users', 'The registered users group represents all user accounts.', 0, NULL, NULL, 0, NULL),
(3, 'Administrators', '', 0, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `GroupSetGroups`
--

CREATE TABLE `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `GroupSets`
--

CREATE TABLE `GroupSets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Jobs`
--

CREATE TABLE `Jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) NOT NULL,
  `jDescription` varchar(255) NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` longtext,
  `jLastStatusCode` smallint(4) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) NOT NULL,
  `jNotUninstallable` smallint(4) NOT NULL DEFAULT '0',
  `isScheduled` smallint(1) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) NOT NULL DEFAULT 'days',
  `scheduledValue` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Jobs`
--

INSERT INTO `Jobs` (`jID`, `jName`, `jDescription`, `jDateInstalled`, `jDateLastRun`, `pkgID`, `jLastStatusText`, `jLastStatusCode`, `jStatus`, `jHandle`, `jNotUninstallable`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Index Search Engine - Updates', 'Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.', '2015-05-20 20:20:40', NULL, 0, NULL, 0, 'ENABLED', 'index_search', 1, 0, 'days', 0),
(2, 'Index Search Engine - All', 'Empties the page search index and reindexes all pages.', '2015-05-20 20:20:40', NULL, 0, NULL, 0, 'ENABLED', 'index_search_all', 1, 0, 'days', 0),
(3, 'Generate the sitemap.xml file', 'Generate the sitemap.xml file that search engines use to crawl your site.', '2015-05-20 20:20:40', NULL, 0, NULL, 0, 'ENABLED', 'generate_sitemap', 0, 0, 'days', 0),
(4, 'Process Email Posts', 'Polls an email account and grabs private messages/postings that are sent there..', '2015-05-20 20:20:40', NULL, 0, NULL, 0, 'ENABLED', 'process_email', 0, 0, 'days', 0),
(5, 'Remove Old Page Versions', 'Removes all except the 10 most recent page versions for each page.', '2015-05-20 20:20:40', NULL, 0, NULL, 0, 'ENABLED', 'remove_old_page_versions', 0, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Table structure for table `JobSetJobs`
--

CREATE TABLE `JobSetJobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`,`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `JobSetJobs`
--

INSERT INTO `JobSetJobs` (`jsID`, `jID`, `jRunOrder`) VALUES
(1, 1, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `JobSets`
--

CREATE TABLE `JobSets` (
  `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jsName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(1) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) NOT NULL DEFAULT 'days',
  `scheduledValue` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `JobSets`
--

INSERT INTO `JobSets` (`jsID`, `jsName`, `pkgID`, `jDateLastRun`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Default', 0, NULL, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Table structure for table `JobsLog`
--

CREATE TABLE `JobsLog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` longtext,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jlError` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `LayoutPresets`
--

CREATE TABLE `LayoutPresets` (
  `lpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lpName` varchar(128) NOT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lpID`),
  UNIQUE KEY `layoutID` (`layoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Layouts`
--

CREATE TABLE `Layouts` (
  `layoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `layout_rows` int(5) NOT NULL DEFAULT '3',
  `layout_columns` int(3) NOT NULL DEFAULT '3',
  `spacing` int(3) NOT NULL DEFAULT '3',
  `breakpoints` varchar(255) NOT NULL DEFAULT '',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Logs`
--

CREATE TABLE `Logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logType` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logText` longtext,
  `logUserID` int(10) unsigned DEFAULT NULL,
  `logIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logID`),
  KEY `logType` (`logType`),
  KEY `logIsInternal` (`logIsInternal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `MailImporters`
--

CREATE TABLE `MailImporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) NOT NULL,
  `miServer` varchar(255) DEFAULT NULL,
  `miUsername` varchar(255) DEFAULT NULL,
  `miPassword` varchar(255) DEFAULT NULL,
  `miEncryption` varchar(32) DEFAULT NULL,
  `miIsEnabled` int(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) DEFAULT 'POP',
  PRIMARY KEY (`miID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `MailImporters`
--

INSERT INTO `MailImporters` (`miID`, `miHandle`, `miServer`, `miUsername`, `miPassword`, `miEncryption`, `miIsEnabled`, `miEmail`, `miPort`, `pkgID`, `miConnectionMethod`) VALUES
(1, 'private_message', '', NULL, NULL, NULL, 0, '', 0, 0, 'POP');

-- --------------------------------------------------------

--
-- Table structure for table `MailValidationHashes`
--

CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `mHash` varchar(128) NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`mvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Packages`
--

CREATE TABLE `Packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) NOT NULL,
  `pkgHandle` varchar(64) NOT NULL,
  `pkgDescription` text,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `PagePaths`
--

CREATE TABLE `PagePaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text,
  `ppIsCanonical` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=117 ;

--
-- Dumping data for table `PagePaths`
--

INSERT INTO `PagePaths` (`ppID`, `cID`, `cPath`, `ppIsCanonical`) VALUES
(1, 2, '/dashboard', '1'),
(2, 3, '/dashboard/composer', '1'),
(3, 4, '/dashboard/composer/write', '1'),
(4, 5, '/dashboard/composer/drafts', '1'),
(5, 6, '/dashboard/sitemap', '1'),
(6, 7, '/dashboard/sitemap/full', '1'),
(7, 8, '/dashboard/sitemap/explore', '1'),
(8, 9, '/dashboard/sitemap/search', '1'),
(9, 10, '/dashboard/files', '1'),
(10, 11, '/dashboard/files/search', '1'),
(11, 12, '/dashboard/files/attributes', '1'),
(12, 13, '/dashboard/files/sets', '1'),
(13, 14, '/dashboard/files/add_set', '1'),
(14, 15, '/dashboard/users', '1'),
(15, 16, '/dashboard/users/search', '1'),
(16, 17, '/dashboard/users/groups', '1'),
(17, 18, '/dashboard/users/attributes', '1'),
(18, 19, '/dashboard/users/add', '1'),
(19, 20, '/dashboard/users/add_group', '1'),
(20, 21, '/dashboard/users/group_sets', '1'),
(21, 22, '/dashboard/reports', '1'),
(22, 23, '/dashboard/reports/statistics', '1'),
(23, 24, '/dashboard/reports/forms', '1'),
(24, 25, '/dashboard/reports/surveys', '1'),
(25, 26, '/dashboard/reports/logs', '1'),
(26, 27, '/dashboard/pages', '1'),
(27, 28, '/dashboard/pages/themes', '1'),
(28, 29, '/dashboard/pages/themes/add', '1'),
(29, 30, '/dashboard/pages/themes/inspect', '1'),
(30, 31, '/dashboard/pages/themes/customize', '1'),
(31, 32, '/dashboard/pages/types', '1'),
(32, 33, '/dashboard/pages/types/add', '1'),
(33, 34, '/dashboard/pages/attributes', '1'),
(34, 35, '/dashboard/pages/single', '1'),
(35, 36, '/dashboard/workflow', '1'),
(36, 37, '/dashboard/workflow/list', '1'),
(37, 38, '/dashboard/workflow/me', '1'),
(38, 39, '/dashboard/blocks', '1'),
(39, 40, '/dashboard/blocks/stacks', '1'),
(40, 41, '/dashboard/blocks/permissions', '1'),
(41, 42, '/dashboard/blocks/stacks/list', '1'),
(42, 43, '/dashboard/blocks/types', '1'),
(43, 44, '/dashboard/extend', '1'),
(44, 45, '/dashboard/news', '1'),
(45, 46, '/dashboard/extend/install', '1'),
(46, 47, '/dashboard/extend/update', '1'),
(47, 48, '/dashboard/extend/connect', '1'),
(48, 49, '/dashboard/extend/themes', '1'),
(49, 50, '/dashboard/extend/add-ons', '1'),
(50, 51, '/dashboard/system', '1'),
(51, 52, '/dashboard/system/basics', '1'),
(52, 53, '/dashboard/system/basics/site_name', '1'),
(53, 54, '/dashboard/system/basics/icons', '1'),
(54, 55, '/dashboard/system/basics/editor', '1'),
(55, 56, '/dashboard/system/basics/multilingual', '1'),
(56, 57, '/dashboard/system/basics/timezone', '1'),
(57, 58, '/dashboard/system/basics/interface', '1'),
(58, 59, '/dashboard/system/seo', '1'),
(59, 60, '/dashboard/system/seo/urls', '1'),
(60, 61, '/dashboard/system/seo/bulk_seo_tool', '1'),
(61, 62, '/dashboard/system/seo/tracking_codes', '1'),
(62, 63, '/dashboard/system/seo/excluded', '1'),
(63, 64, '/dashboard/system/seo/statistics', '1'),
(64, 65, '/dashboard/system/seo/search_index', '1'),
(65, 66, '/dashboard/system/optimization', '1'),
(66, 67, '/dashboard/system/optimization/cache', '1'),
(67, 68, '/dashboard/system/optimization/clear_cache', '1'),
(68, 69, '/dashboard/system/optimization/jobs', '1'),
(69, 70, '/dashboard/system/permissions', '1'),
(70, 71, '/dashboard/system/permissions/site', '1'),
(71, 72, '/dashboard/system/permissions/files', '1'),
(72, 73, '/dashboard/system/permissions/file_types', '1'),
(73, 74, '/dashboard/system/permissions/tasks', '1'),
(74, 75, '/dashboard/system/permissions/users', '1'),
(75, 76, '/dashboard/system/permissions/advanced', '1'),
(76, 77, '/dashboard/system/permissions/ip_blacklist', '1'),
(77, 78, '/dashboard/system/permissions/captcha', '1'),
(78, 79, '/dashboard/system/permissions/antispam', '1'),
(79, 80, '/dashboard/system/permissions/maintenance_mode', '1'),
(80, 81, '/dashboard/system/registration', '1'),
(81, 82, '/dashboard/system/registration/postlogin', '1'),
(82, 83, '/dashboard/system/registration/profiles', '1'),
(83, 84, '/dashboard/system/registration/public_registration', '1'),
(84, 85, '/dashboard/system/mail', '1'),
(85, 86, '/dashboard/system/mail/method', '1'),
(86, 87, '/dashboard/system/mail/method/test_settings', '1'),
(87, 88, '/dashboard/system/mail/importers', '1'),
(88, 89, '/dashboard/system/attributes', '1'),
(89, 90, '/dashboard/system/attributes/sets', '1'),
(90, 91, '/dashboard/system/attributes/types', '1'),
(91, 92, '/dashboard/system/environment', '1'),
(92, 93, '/dashboard/system/environment/info', '1'),
(93, 94, '/dashboard/system/environment/debug', '1'),
(94, 95, '/dashboard/system/environment/logging', '1'),
(95, 96, '/dashboard/system/environment/file_storage_locations', '1'),
(96, 97, '/dashboard/system/environment/proxy', '1'),
(97, 98, '/dashboard/system/backup_restore', '1'),
(98, 99, '/dashboard/system/backup_restore/backup', '1'),
(99, 100, '/dashboard/system/backup_restore/update', '1'),
(100, 101, '/dashboard/system/backup_restore/database', '1'),
(101, 102, '/dashboard/pages/types/composer', '1'),
(102, 106, '/dashboard/welcome', '1'),
(103, 107, '/dashboard/home', '1'),
(104, 108, '/!drafts', '1'),
(105, 109, '/!trash', '1'),
(106, 110, '/!stacks', '1'),
(107, 111, '/login', '1'),
(108, 112, '/register', '1'),
(109, 113, '/profile', '1'),
(110, 114, '/profile/edit', '1'),
(111, 115, '/profile/avatar', '1'),
(112, 116, '/profile/messages', '1'),
(113, 117, '/profile/friends', '1'),
(114, 118, '/page_not_found', '1'),
(115, 119, '/page_forbidden', '1'),
(116, 120, '/download_file', '1');

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionAssignments`
--

CREATE TABLE `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PagePermissionAssignments`
--

INSERT INTO `PagePermissionAssignments` (`cID`, `pkID`, `paID`) VALUES
(1, 1, 53),
(1, 2, 54),
(1, 3, 55),
(1, 4, 56),
(1, 5, 57),
(1, 6, 58),
(1, 7, 59),
(1, 8, 60),
(1, 9, 61),
(1, 10, 62),
(1, 11, 63),
(1, 12, 64),
(1, 13, 65),
(1, 14, 66),
(1, 15, 67),
(1, 16, 68),
(2, 1, 19),
(2, 2, 21),
(2, 3, 20),
(2, 4, 26),
(2, 5, 22),
(2, 6, 23),
(2, 7, 28),
(2, 8, 30),
(2, 9, 32),
(2, 10, 29),
(2, 11, 33),
(2, 12, 34),
(2, 13, 24),
(2, 14, 27),
(2, 15, 25),
(2, 16, 31),
(42, 1, 35),
(42, 3, 36),
(111, 1, 39),
(111, 3, 40),
(112, 1, 41),
(112, 3, 42);

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPageTypeAccessList`
--

CREATE TABLE `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPageTypeAccessListCustom`
--

CREATE TABLE `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPropertyAccessList`
--

CREATE TABLE `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` int(1) unsigned DEFAULT '0',
  `publicDateTime` int(1) unsigned DEFAULT '0',
  `uID` int(1) unsigned DEFAULT '0',
  `description` int(1) unsigned DEFAULT '0',
  `paths` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPropertyAttributeAccessListCustom`
--

CREATE TABLE `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionThemeAccessList`
--

CREATE TABLE `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionThemeAccessListCustom`
--

CREATE TABLE `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Pages`
--

CREATE TABLE `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` int(1) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` int(4) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`),
  KEY `cPointerID` (`cPointerID`),
  KEY `cIsTemplate` (`cIsTemplate`),
  KEY `cIsSystemPage` (`cIsSystemPage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Pages`
--

INSERT INTO `Pages` (`cID`, `cIsTemplate`, `uID`, `cIsCheckedOut`, `cCheckedOutUID`, `cCheckedOutDatetime`, `cCheckedOutDatetimeLastEdit`, `cOverrideTemplatePermissions`, `cInheritPermissionsFromCID`, `cInheritPermissionsFrom`, `cFilename`, `cPointerID`, `cPointerExternalLink`, `cPointerExternalLinkNewWindow`, `cIsActive`, `cChildren`, `cDisplayOrder`, `cParentID`, `pkgID`, `cCacheFullPageContent`, `cCacheFullPageContentOverrideLifetime`, `cCacheFullPageContentLifetimeCustom`, `cIsSystemPage`) VALUES
(1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'OVERRIDE', NULL, 0, NULL, 0, 1, 10, 0, 0, 0, -1, '0', 0, 0),
(2, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'OVERRIDE', '/dashboard/view.php', 0, NULL, 0, 1, 13, 0, 0, 0, -1, '0', 0, 1),
(3, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/composer/view.php', 0, NULL, 0, 1, 2, 0, 2, 0, -1, '0', 0, 1),
(4, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/composer/write.php', 0, NULL, 0, 1, 0, 0, 3, 0, -1, '0', 0, 1),
(5, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/composer/drafts.php', 0, NULL, 0, 1, 0, 1, 3, 0, -1, '0', 0, 1),
(6, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/view.php', 0, NULL, 0, 1, 3, 1, 2, 0, -1, '0', 0, 1),
(7, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/full.php', 0, NULL, 0, 1, 0, 0, 6, 0, -1, '0', 0, 1),
(8, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/explore.php', 0, NULL, 0, 1, 0, 1, 6, 0, -1, '0', 0, 1),
(9, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/search.php', 0, NULL, 0, 1, 0, 2, 6, 0, -1, '0', 0, 1),
(10, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/view.php', 0, NULL, 0, 1, 4, 2, 2, 0, -1, '0', 0, 1),
(11, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/search.php', 0, NULL, 0, 1, 0, 0, 10, 0, -1, '0', 0, 1),
(12, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/attributes.php', 0, NULL, 0, 1, 0, 1, 10, 0, -1, '0', 0, 1),
(13, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/sets.php', 0, NULL, 0, 1, 0, 2, 10, 0, -1, '0', 0, 1),
(14, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/add_set.php', 0, NULL, 0, 1, 0, 3, 10, 0, -1, '0', 0, 1),
(15, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/view.php', 0, NULL, 0, 1, 6, 3, 2, 0, -1, '0', 0, 1),
(16, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/search.php', 0, NULL, 0, 1, 0, 0, 15, 0, -1, '0', 0, 1),
(17, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups.php', 0, NULL, 0, 1, 0, 1, 15, 0, -1, '0', 0, 1),
(18, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/attributes.php', 0, NULL, 0, 1, 0, 2, 15, 0, -1, '0', 0, 1),
(19, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add.php', 0, NULL, 0, 1, 0, 3, 15, 0, -1, '0', 0, 1),
(20, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add_group.php', 0, NULL, 0, 1, 0, 4, 15, 0, -1, '0', 0, 1),
(21, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/group_sets.php', 0, NULL, 0, 1, 0, 5, 15, 0, -1, '0', 0, 1),
(22, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports.php', 0, NULL, 0, 1, 4, 4, 2, 0, -1, '0', 0, 1),
(23, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/statistics.php', 0, NULL, 0, 1, 0, 0, 22, 0, -1, '0', 0, 1),
(24, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/forms.php', 0, NULL, 0, 1, 0, 1, 22, 0, -1, '0', 0, 1),
(25, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/surveys.php', 0, NULL, 0, 1, 0, 2, 22, 0, -1, '0', 0, 1),
(26, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/logs.php', 0, NULL, 0, 1, 0, 3, 22, 0, -1, '0', 0, 1),
(27, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/view.php', 0, NULL, 0, 1, 4, 5, 2, 0, -1, '0', 0, 1),
(28, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/view.php', 0, NULL, 0, 1, 3, 0, 27, 0, -1, '0', 0, 1),
(29, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/add.php', 0, NULL, 0, 1, 0, 0, 28, 0, -1, '0', 0, 1),
(30, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/inspect.php', 0, NULL, 0, 1, 0, 1, 28, 0, -1, '0', 0, 1),
(31, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/customize.php', 0, NULL, 0, 1, 0, 2, 28, 0, -1, '0', 0, 1),
(32, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/view.php', 0, NULL, 0, 1, 2, 1, 27, 0, -1, '0', 0, 1),
(33, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/add.php', 0, NULL, 0, 1, 0, 0, 32, 0, -1, '0', 0, 1),
(34, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/attributes.php', 0, NULL, 0, 1, 0, 2, 27, 0, -1, '0', 0, 1),
(35, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/single.php', 0, NULL, 0, 1, 0, 3, 27, 0, -1, '0', 0, 1),
(36, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/view.php', 0, NULL, 0, 1, 2, 6, 2, 0, -1, '0', 0, 1),
(37, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/list.php', 0, NULL, 0, 1, 0, 0, 36, 0, -1, '0', 0, 1),
(38, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/me.php', 0, NULL, 0, 1, 0, 1, 36, 0, -1, '0', 0, 1),
(39, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/view.php', 0, NULL, 0, 1, 3, 7, 2, 0, -1, '0', 0, 1),
(40, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/stacks/view.php', 0, NULL, 0, 1, 1, 0, 39, 0, -1, '0', 0, 1),
(41, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/permissions.php', 0, NULL, 0, 1, 0, 1, 39, 0, -1, '0', 0, 1),
(42, 0, 1, 0, NULL, NULL, NULL, 1, 42, 'OVERRIDE', '/dashboard/blocks/stacks/list/view.php', 0, NULL, 0, 1, 0, 0, 40, 0, -1, '0', 0, 1),
(43, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/types/view.php', 0, NULL, 0, 1, 0, 2, 39, 0, -1, '0', 0, 1),
(44, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/view.php', 0, NULL, 0, 1, 5, 8, 2, 0, -1, '0', 0, 1),
(45, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/news.php', 0, NULL, 0, 1, 0, 9, 2, 0, -1, '0', 0, 1),
(46, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/install.php', 0, NULL, 0, 1, 0, 0, 44, 0, -1, '0', 0, 1),
(47, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/update.php', 0, NULL, 0, 1, 0, 1, 44, 0, -1, '0', 0, 1),
(48, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/connect.php', 0, NULL, 0, 1, 0, 2, 44, 0, -1, '0', 0, 1),
(49, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/themes.php', 0, NULL, 0, 1, 0, 3, 44, 0, -1, '0', 0, 1),
(50, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/add-ons.php', 0, NULL, 0, 1, 0, 4, 44, 0, -1, '0', 0, 1),
(51, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/view.php', 0, NULL, 0, 1, 9, 10, 2, 0, -1, '0', 0, 1),
(52, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/view.php', 0, NULL, 0, 1, 6, 0, 51, 0, -1, '0', 0, 1),
(53, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/site_name.php', 0, NULL, 0, 1, 0, 0, 52, 0, -1, '0', 0, 1),
(54, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/icons.php', 0, NULL, 0, 1, 0, 1, 52, 0, -1, '0', 0, 1),
(55, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/editor.php', 0, NULL, 0, 1, 0, 2, 52, 0, -1, '0', 0, 1),
(56, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/multilingual/view.php', 0, NULL, 0, 1, 0, 3, 52, 0, -1, '0', 0, 1),
(57, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/timezone.php', 0, NULL, 0, 1, 0, 4, 52, 0, -1, '0', 0, 1),
(58, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/interface.php', 0, NULL, 0, 1, 0, 5, 52, 0, -1, '0', 0, 1),
(59, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/view.php', 0, NULL, 0, 1, 6, 1, 51, 0, -1, '0', 0, 1),
(60, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/urls.php', 0, NULL, 0, 1, 0, 0, 59, 0, -1, '0', 0, 1),
(61, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/bulk_seo_tool.php', 0, NULL, 0, 1, 0, 1, 59, 0, -1, '0', 0, 1),
(62, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/tracking_codes.php', 0, NULL, 0, 1, 0, 2, 59, 0, -1, '0', 0, 1),
(63, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/excluded.php', 0, NULL, 0, 1, 0, 3, 59, 0, -1, '0', 0, 1),
(64, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/statistics.php', 0, NULL, 0, 1, 0, 4, 59, 0, -1, '0', 0, 1),
(65, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/search_index.php', 0, NULL, 0, 1, 0, 5, 59, 0, -1, '0', 0, 1),
(66, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/view.php', 0, NULL, 0, 1, 3, 2, 51, 0, -1, '0', 0, 1),
(67, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/cache.php', 0, NULL, 0, 1, 0, 0, 66, 0, -1, '0', 0, 1),
(68, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/clear_cache.php', 0, NULL, 0, 1, 0, 1, 66, 0, -1, '0', 0, 1),
(69, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/jobs.php', 0, NULL, 0, 1, 0, 2, 66, 0, -1, '0', 0, 1),
(70, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/view.php', 0, NULL, 0, 1, 10, 3, 51, 0, -1, '0', 0, 1),
(71, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/site.php', 0, NULL, 0, 1, 0, 0, 70, 0, -1, '0', 0, 1),
(72, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/files.php', 0, NULL, 0, 1, 0, 1, 70, 0, -1, '0', 0, 1),
(73, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/file_types.php', 0, NULL, 0, 1, 0, 2, 70, 0, -1, '0', 0, 1),
(74, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/tasks.php', 0, NULL, 0, 1, 0, 3, 70, 0, -1, '0', 0, 1),
(75, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/users.php', 0, NULL, 0, 1, 0, 4, 70, 0, -1, '0', 0, 1),
(76, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/advanced.php', 0, NULL, 0, 1, 0, 5, 70, 0, -1, '0', 0, 1),
(77, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/ip_blacklist.php', 0, NULL, 0, 1, 0, 6, 70, 0, -1, '0', 0, 1),
(78, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/captcha.php', 0, NULL, 0, 1, 0, 7, 70, 0, -1, '0', 0, 1),
(79, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/antispam.php', 0, NULL, 0, 1, 0, 8, 70, 0, -1, '0', 0, 1),
(80, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/maintenance_mode.php', 0, NULL, 0, 1, 0, 9, 70, 0, -1, '0', 0, 1),
(81, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/view.php', 0, NULL, 0, 1, 3, 4, 51, 0, -1, '0', 0, 1),
(82, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/postlogin.php', 0, NULL, 0, 1, 0, 0, 81, 0, -1, '0', 0, 1),
(83, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/profiles.php', 0, NULL, 0, 1, 0, 1, 81, 0, -1, '0', 0, 1),
(84, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/public_registration.php', 0, NULL, 0, 1, 0, 2, 81, 0, -1, '0', 0, 1),
(85, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/view.php', 0, NULL, 0, 1, 2, 5, 51, 0, -1, '0', 0, 1),
(86, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method.php', 0, NULL, 0, 1, 1, 0, 85, 0, -1, '0', 0, 1),
(87, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method/test_settings.php', 0, NULL, 0, 1, 0, 0, 86, 0, -1, '0', 0, 1),
(88, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/importers.php', 0, NULL, 0, 1, 0, 1, 85, 0, -1, '0', 0, 1),
(89, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/view.php', 0, NULL, 0, 1, 2, 6, 51, 0, -1, '0', 0, 1),
(90, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/sets.php', 0, NULL, 0, 1, 0, 0, 89, 0, -1, '0', 0, 1),
(91, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/types.php', 0, NULL, 0, 1, 0, 1, 89, 0, -1, '0', 0, 1),
(92, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/view.php', 0, NULL, 0, 1, 5, 7, 51, 0, -1, '0', 0, 1),
(93, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/info.php', 0, NULL, 0, 1, 0, 0, 92, 0, -1, '0', 0, 1),
(94, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/debug.php', 0, NULL, 0, 1, 0, 1, 92, 0, -1, '0', 0, 1),
(95, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/logging.php', 0, NULL, 0, 1, 0, 2, 92, 0, -1, '0', 0, 1),
(96, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/file_storage_locations.php', 0, NULL, 0, 1, 0, 3, 92, 0, -1, '0', 0, 1),
(97, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/proxy.php', 0, NULL, 0, 1, 0, 4, 92, 0, -1, '0', 0, 1),
(98, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/view.php', 0, NULL, 0, 1, 3, 8, 51, 0, -1, '0', 0, 1),
(99, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/backup.php', 0, NULL, 0, 1, 0, 0, 98, 0, -1, '0', 0, 1),
(100, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/update.php', 0, NULL, 0, 1, 0, 1, 98, 0, -1, '0', 0, 1),
(101, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/database.php', 0, NULL, 0, 1, 0, 2, 98, 0, -1, '0', 0, 1),
(102, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/composer.php', 0, NULL, 0, 1, 0, 1, 32, 0, -1, '0', 0, 1),
(103, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(104, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(105, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(106, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 11, 2, 0, -1, '0', 0, 1),
(107, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 12, 2, 0, -1, '0', 0, 1),
(108, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!drafts/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(109, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!trash/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(110, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!stacks/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(111, 0, 1, 0, NULL, NULL, NULL, 1, 111, 'OVERRIDE', '/login.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(112, 0, 1, 0, NULL, NULL, NULL, 1, 112, 'OVERRIDE', '/register.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(113, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/view.php', 0, NULL, 0, 1, 4, 0, 1, 0, -1, '0', 0, 1),
(114, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/edit.php', 0, NULL, 0, 1, 0, 0, 113, 0, -1, '0', 0, 1),
(115, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/avatar.php', 0, NULL, 0, 1, 0, 1, 113, 0, -1, '0', 0, 1),
(116, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/messages.php', 0, NULL, 0, 1, 0, 2, 113, 0, -1, '0', 0, 1),
(117, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/friends.php', 0, NULL, 0, 1, 0, 3, 113, 0, -1, '0', 0, 1),
(118, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_not_found.php', 0, NULL, 0, 1, 0, 1, 0, 0, -1, '0', 0, 1),
(119, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_forbidden.php', 0, NULL, 0, 1, 0, 1, 0, 0, -1, '0', 0, 1),
(120, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/download_file.php', 0, NULL, 0, 1, 0, 1, 1, 0, -1, '0', 0, 1),
(121, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageSearchIndex`
--

CREATE TABLE `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longtext,
  `cName` varchar(255) DEFAULT NULL,
  `cDescription` text,
  `cPath` text,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PageSearchIndex`
--

INSERT INTO `PageSearchIndex` (`cID`, `content`, `cName`, `cDescription`, `cPath`, `cDatePublic`, `cDateLastIndexed`, `cDateLastSitemapped`, `cRequiresReindex`) VALUES
(3, '', 'Composer', 'Write for your site.', '/dashboard/composer', '2015-05-20 20:20:40', '2015-05-20 20:20:42', NULL, 0),
(4, '', 'Write', '', '/dashboard/composer/write', '2015-05-20 20:20:40', '2015-05-20 20:20:42', NULL, 0),
(5, '', 'Drafts', '', '/dashboard/composer/drafts', '2015-05-20 20:20:40', '2015-05-20 20:20:42', NULL, 0),
(6, '', 'Sitemap', 'Whole world at a glance.', '/dashboard/sitemap', '2015-05-20 20:20:40', '2015-05-20 20:20:42', NULL, 0),
(7, '', 'Full Sitemap', '', '/dashboard/sitemap/full', '2015-05-20 20:20:40', '2015-05-20 20:20:42', NULL, 0),
(8, '', 'Flat View', '', '/dashboard/sitemap/explore', '2015-05-20 20:20:40', '2015-05-20 20:20:42', NULL, 0),
(9, '', 'Page Search', '', '/dashboard/sitemap/search', '2015-05-20 20:20:40', '2015-05-20 20:20:42', NULL, 0),
(11, '', 'File Manager', '', '/dashboard/files/search', '2015-05-20 20:20:40', '2015-05-20 20:20:42', NULL, 0),
(12, '', 'Attributes', '', '/dashboard/files/attributes', '2015-05-20 20:20:40', '2015-05-20 20:20:42', NULL, 0),
(13, '', 'File Sets', '', '/dashboard/files/sets', '2015-05-20 20:20:40', '2015-05-20 20:20:42', NULL, 0),
(14, '', 'Add File Set', '', '/dashboard/files/add_set', '2015-05-20 20:20:40', '2015-05-20 20:20:42', NULL, 0),
(15, '', 'Members', 'Add and manage the user accounts and groups on your website.', '/dashboard/users', '2015-05-20 20:20:40', '2015-05-20 20:20:42', NULL, 0),
(16, '', 'Search Users', '', '/dashboard/users/search', '2015-05-20 20:20:40', '2015-05-20 20:20:42', NULL, 0),
(17, '', 'User Groups', '', '/dashboard/users/groups', '2015-05-20 20:20:40', '2015-05-20 20:20:42', NULL, 0),
(18, '', 'Attributes', '', '/dashboard/users/attributes', '2015-05-20 20:20:40', '2015-05-20 20:20:42', NULL, 0),
(19, '', 'Add User', '', '/dashboard/users/add', '2015-05-20 20:20:40', '2015-05-20 20:20:42', NULL, 0),
(20, '', 'Add Group', '', '/dashboard/users/add_group', '2015-05-20 20:20:40', '2015-05-20 20:20:43', NULL, 0),
(21, '', 'Group Sets', '', '/dashboard/users/group_sets', '2015-05-20 20:20:40', '2015-05-20 20:20:43', NULL, 0),
(22, '', 'Reports', 'Get data from forms and logs.', '/dashboard/reports', '2015-05-20 20:20:40', '2015-05-20 20:20:43', NULL, 0),
(23, '', 'Statistics', 'View your site activity.', '/dashboard/reports/statistics', '2015-05-20 20:20:40', '2015-05-20 20:20:43', NULL, 0),
(24, '', 'Form Results', 'Get submission data.', '/dashboard/reports/forms', '2015-05-20 20:20:40', '2015-05-20 20:20:43', NULL, 0),
(25, '', 'Surveys', '', '/dashboard/reports/surveys', '2015-05-20 20:20:40', '2015-05-20 20:20:43', NULL, 0),
(26, '', 'Logs', '', '/dashboard/reports/logs', '2015-05-20 20:20:40', '2015-05-20 20:20:43', NULL, 0),
(28, '', 'Themes', 'Reskin your site.', '/dashboard/pages/themes', '2015-05-20 20:20:40', '2015-05-20 20:20:43', NULL, 0),
(29, '', 'Add', '', '/dashboard/pages/themes/add', '2015-05-20 20:20:40', '2015-05-20 20:20:43', NULL, 0),
(30, '', 'Inspect', '', '/dashboard/pages/themes/inspect', '2015-05-20 20:20:40', '2015-05-20 20:20:43', NULL, 0),
(31, '', 'Customize', '', '/dashboard/pages/themes/customize', '2015-05-20 20:20:40', '2015-05-20 20:20:43', NULL, 0),
(32, '', 'Page Types', 'What goes in your site.', '/dashboard/pages/types', '2015-05-20 20:20:40', '2015-05-20 20:20:43', NULL, 0),
(34, '', 'Attributes', '', '/dashboard/pages/attributes', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(35, '', 'Single Pages', '', '/dashboard/pages/single', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(36, '', 'Workflow', '', '/dashboard/workflow', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(37, '', 'Workflow List', '', '/dashboard/workflow/list', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(38, '', 'Waiting for Me', '', '/dashboard/workflow/me', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(40, '', 'Stacks', 'Share content across your site.', '/dashboard/blocks/stacks', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(41, '', 'Block & Stack Permissions', 'Control who can add blocks and stacks on your site.', '/dashboard/blocks/permissions', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(42, '', 'Stack List', '', '/dashboard/blocks/stacks/list', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(43, '', 'Block Types', 'Manage the installed block types in your site.', '/dashboard/blocks/types', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(44, '', 'Extend concrete5', 'Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.', '/dashboard/extend', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(45, '', 'Dashboard', '', '/dashboard/news', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(46, '', 'Add Functionality', 'Install add-ons & themes.', '/dashboard/extend/install', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(47, '', 'Update Add-Ons', 'Update your installed packages.', '/dashboard/extend/update', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(48, '', 'Connect to the Community', 'Connect to the concrete5 community.', '/dashboard/extend/connect', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(49, '', 'Get More Themes', 'Download themes from concrete5.org.', '/dashboard/extend/themes', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(50, '', 'Get More Add-Ons', 'Download add-ons from concrete5.org.', '/dashboard/extend/add-ons', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(51, '', 'System & Settings', 'Secure and setup your site.', '/dashboard/system', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(53, '', 'Site Name', '', '/dashboard/system/basics/site_name', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(54, '', 'Bookmark Icons', 'Bookmark icon and mobile home screen icon setup.', '/dashboard/system/basics/icons', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(55, '', 'Rich Text Editor', '', '/dashboard/system/basics/editor', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(56, '', 'Languages', '', '/dashboard/system/basics/multilingual', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(57, '', 'Time Zone', '', '/dashboard/system/basics/timezone', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(58, '', 'Interface Preferences', '', '/dashboard/system/basics/interface', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(60, '', 'Pretty URLs', '', '/dashboard/system/seo/urls', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(61, '', 'Bulk SEO Updater', '', '/dashboard/system/seo/bulk_seo_tool', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(62, '', 'Tracking Codes', '', '/dashboard/system/seo/tracking_codes', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(63, '', 'Excluded URL Word List', '', '/dashboard/system/seo/excluded', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(64, '', 'Statistics', '', '/dashboard/system/seo/statistics', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(65, '', 'Search Index', '', '/dashboard/system/seo/search_index', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(67, '', 'Cache & Speed Settings', '', '/dashboard/system/optimization/cache', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(68, '', 'Clear Cache', '', '/dashboard/system/optimization/clear_cache', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(69, '', 'Automated Jobs', '', '/dashboard/system/optimization/jobs', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(71, '', 'Site Access', '', '/dashboard/system/permissions/site', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(72, '', 'File Manager Permissions', '', '/dashboard/system/permissions/files', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(73, '', 'Allowed File Types', '', '/dashboard/system/permissions/file_types', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(74, '', 'Task Permissions', '', '/dashboard/system/permissions/tasks', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(77, '', 'IP Blacklist', '', '/dashboard/system/permissions/ip_blacklist', '2015-05-20 20:20:41', '2015-05-20 20:20:43', NULL, 0),
(78, '', 'Captcha Setup', '', '/dashboard/system/permissions/captcha', '2015-05-20 20:20:42', '2015-05-20 20:20:43', NULL, 0),
(79, '', 'Spam Control', '', '/dashboard/system/permissions/antispam', '2015-05-20 20:20:42', '2015-05-20 20:20:43', NULL, 0),
(80, '', 'Maintenance Mode', '', '/dashboard/system/permissions/maintenance_mode', '2015-05-20 20:20:42', '2015-05-20 20:20:43', NULL, 0),
(82, '', 'Login Destination', '', '/dashboard/system/registration/postlogin', '2015-05-20 20:20:42', '2015-05-20 20:20:43', NULL, 0),
(83, '', 'Public Profiles', '', '/dashboard/system/registration/profiles', '2015-05-20 20:20:42', '2015-05-20 20:20:43', NULL, 0),
(84, '', 'Public Registration', '', '/dashboard/system/registration/public_registration', '2015-05-20 20:20:42', '2015-05-20 20:20:43', NULL, 0),
(85, '', 'Email', 'Control how your site send and processes mail.', '/dashboard/system/mail', '2015-05-20 20:20:42', '2015-05-20 20:20:43', NULL, 0),
(86, '', 'SMTP Method', '', '/dashboard/system/mail/method', '2015-05-20 20:20:42', '2015-05-20 20:20:43', NULL, 0),
(87, '', 'Test Mail Settings', '', '/dashboard/system/mail/method/test_settings', '2015-05-20 20:20:42', '2015-05-20 20:20:43', NULL, 0),
(88, '', 'Email Importers', '', '/dashboard/system/mail/importers', '2015-05-20 20:20:42', '2015-05-20 20:20:43', NULL, 0),
(89, '', 'Attributes', 'Setup attributes for pages, users, files and more.', '/dashboard/system/attributes', '2015-05-20 20:20:42', '2015-05-20 20:20:43', NULL, 0),
(90, '', 'Sets', 'Group attributes into sets for easier organization', '/dashboard/system/attributes/sets', '2015-05-20 20:20:42', '2015-05-20 20:20:43', NULL, 0),
(91, '', 'Types', 'Choose which attribute types are available for different items.', '/dashboard/system/attributes/types', '2015-05-20 20:20:42', '2015-05-20 20:20:43', NULL, 0),
(92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(93, '', 'Environment Information', '', '/dashboard/system/environment/info', '2015-05-20 20:20:42', '2015-05-20 20:20:43', NULL, 0),
(94, '', 'Debug Settings', '', '/dashboard/system/environment/debug', '2015-05-20 20:20:42', '2015-05-20 20:20:43', NULL, 0),
(95, '', 'Logging Settings', '', '/dashboard/system/environment/logging', '2015-05-20 20:20:42', '2015-05-20 20:20:43', NULL, 0),
(96, '', 'File Storage Locations', '', '/dashboard/system/environment/file_storage_locations', '2015-05-20 20:20:42', '2015-05-20 20:20:43', NULL, 0),
(97, '', 'Proxy Server', '', '/dashboard/system/environment/proxy', '2015-05-20 20:20:42', '2015-05-20 20:20:43', NULL, 0),
(98, '', 'Backup & Restore', 'Backup or restore your website.', '/dashboard/system/backup_restore', '2015-05-20 20:20:42', '2015-05-20 20:20:43', NULL, 0),
(100, '', 'Update concrete5', '', '/dashboard/system/backup_restore/update', '2015-05-20 20:20:42', '2015-05-20 20:20:44', NULL, 0),
(101, '', 'Database XML', '', '/dashboard/system/backup_restore/database', '2015-05-20 20:20:42', '2015-05-20 20:20:44', NULL, 0),
(106, '	Welcome to concrete5.\n						It''s easy to edit content and add pages using in-context editing. \n						 \n							Building Your Own Site\n							 Editing with concrete5 is a breeze. Just point and click to make changes. \n							 \n							 Editor''s Guide \n							  \n							Developing Applications\n							 If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture. \n							 Developer''s Guide \n							  \n							Designing Websites\n							 Good with CSS and HTML? You can easily theme anything with concrete5. \n							 \n							 Designer''s Guide \n							  \n						\n						Business Background\n						 Worried about license structures, white-labeling or why concrete5 is a good choice for your agency? \n						 Executive''s Guide \n						  ', 'Welcome to concrete5', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '/dashboard/welcome', '2015-05-20 20:20:42', '2015-05-20 20:20:44', NULL, 0),
(107, '', 'Customize Dashboard Home', '', '/dashboard/home', '2015-05-20 20:20:42', '2015-05-20 20:20:44', NULL, 0),
(1, '', 'Home', '', NULL, '2015-05-20 20:20:32', '2015-05-20 20:20:44', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageStatistics`
--

CREATE TABLE `PageStatistics` (
  `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pstID`),
  KEY `cID` (`cID`),
  KEY `date` (`date`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `PageStatistics`
--

INSERT INTO `PageStatistics` (`pstID`, `cID`, `date`, `timestamp`, `uID`) VALUES
(1, 1, '2015-05-20', '2015-05-21 00:20:51', 1),
(2, 106, '2015-05-20', '2015-05-21 00:20:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `PageThemes`
--

CREATE TABLE `PageThemes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptHandle` varchar(64) NOT NULL,
  `ptName` varchar(255) DEFAULT NULL,
  `ptDescription` text,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `PageThemes`
--

INSERT INTO `PageThemes` (`ptID`, `ptHandle`, `ptName`, `ptDescription`, `pkgID`) VALUES
(1, 'default', 'Plain Yogurt', 'Plain Yogurt is concrete5''s default theme.', 0),
(2, 'greensalad', 'Green Salad Theme', 'This is concrete5''s Green Salad site theme.', 0),
(3, 'dark_chocolate', 'Dark Chocolate', 'Dark Chocolate is concrete5''s default theme in black.', 0),
(4, 'greek_yogurt', 'Greek Yogurt', 'An elegant theme for concrete5.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageThemeStyles`
--

CREATE TABLE `PageThemeStyles` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptsHandle` varchar(128) NOT NULL,
  `ptsValue` longtext,
  `ptsType` varchar(32) NOT NULL,
  PRIMARY KEY (`ptID`,`ptsHandle`,`ptsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeAttributes`
--

CREATE TABLE `PageTypeAttributes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PageTypes`
--

CREATE TABLE `PageTypes` (
  `ctID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctHandle` varchar(32) NOT NULL,
  `ctIcon` varchar(128) DEFAULT NULL,
  `ctName` varchar(90) NOT NULL,
  `ctIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`),
  UNIQUE KEY `ctHandle` (`ctHandle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `PageTypes`
--

INSERT INTO `PageTypes` (`ctID`, `ctHandle`, `ctIcon`, `ctName`, `ctIsInternal`, `pkgID`) VALUES
(1, 'core_stack', 'main.png', 'Stack', 1, 0),
(2, 'dashboard_primary_five', 'main.png', 'Dashboard Primary + Five', 1, 0),
(3, 'dashboard_header_four_col', 'main.png', 'Dashboard Header + Four Column', 1, 0),
(4, 'right_sidebar', 'right_sidebar.png', 'Right Sidebar', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageWorkflowProgress`
--

CREATE TABLE `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccess`
--

CREATE TABLE `PermissionAccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `PermissionAccess`
--

INSERT INTO `PermissionAccess` (`paID`, `paIsInUse`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntities`
--

CREATE TABLE `PermissionAccessEntities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `PermissionAccessEntities`
--

INSERT INTO `PermissionAccessEntities` (`peID`, `petID`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityGroups`
--

CREATE TABLE `PermissionAccessEntityGroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `PermissionAccessEntityGroups`
--

INSERT INTO `PermissionAccessEntityGroups` (`pegID`, `peID`, `gID`) VALUES
(1, 1, 3),
(2, 2, 1),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityGroupSets`
--

CREATE TABLE `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityTypeCategories`
--

CREATE TABLE `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PermissionAccessEntityTypeCategories`
--

INSERT INTO `PermissionAccessEntityTypeCategories` (`petID`, `pkCategoryID`) VALUES
(1, 1),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(2, 1),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(3, 1),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(4, 1),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(5, 1),
(6, 6),
(6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityTypes`
--

CREATE TABLE `PermissionAccessEntityTypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) NOT NULL,
  `petName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `PermissionAccessEntityTypes`
--

INSERT INTO `PermissionAccessEntityTypes` (`petID`, `petHandle`, `petName`, `pkgID`) VALUES
(1, 'group', 'Group', 0),
(2, 'user', 'User', 0),
(3, 'group_set', 'Group Set', 0),
(4, 'group_combination', 'Group Combination', 0),
(5, 'page_owner', 'Page Owner', 0),
(6, 'file_uploader', 'File Uploader', 0);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityUsers`
--

CREATE TABLE `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessList`
--

CREATE TABLE `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PermissionAccessList`
--

INSERT INTO `PermissionAccessList` (`paID`, `peID`, `pdID`, `accessType`) VALUES
(1, 1, 0, 10),
(2, 1, 0, 10),
(3, 1, 0, 10),
(4, 1, 0, 10),
(5, 1, 0, 10),
(6, 1, 0, 10),
(7, 1, 0, 10),
(8, 1, 0, 10),
(9, 1, 0, 10),
(10, 1, 0, 10),
(11, 1, 0, 10),
(12, 1, 0, 10),
(13, 1, 0, 10),
(14, 1, 0, 10),
(15, 1, 0, 10),
(16, 1, 0, 10),
(17, 1, 0, 10),
(18, 1, 0, 10),
(19, 1, 0, 10),
(20, 1, 0, 10),
(21, 1, 0, 10),
(22, 1, 0, 10),
(23, 1, 0, 10),
(24, 1, 0, 10),
(25, 1, 0, 10),
(26, 1, 0, 10),
(27, 1, 0, 10),
(28, 1, 0, 10),
(29, 1, 0, 10),
(30, 1, 0, 10),
(31, 1, 0, 10),
(32, 1, 0, 10),
(33, 1, 0, 10),
(34, 1, 0, 10),
(35, 2, 0, 10),
(36, 2, 0, 10),
(37, 2, 0, 10),
(38, 2, 0, 10),
(39, 2, 0, 10),
(39, 3, 0, 10),
(40, 2, 0, 10),
(40, 3, 0, 10),
(41, 2, 0, 10),
(42, 2, 0, 10),
(43, 2, 0, 10),
(44, 1, 0, 10),
(44, 2, 0, 10),
(45, 1, 0, 10),
(46, 1, 0, 10),
(47, 1, 0, 10),
(48, 1, 0, 10),
(49, 1, 0, 10),
(50, 1, 0, 10),
(51, 1, 0, 10),
(52, 1, 0, 10),
(53, 2, 0, 10),
(54, 1, 0, 10),
(55, 1, 0, 10),
(56, 1, 0, 10),
(57, 1, 0, 10),
(58, 1, 0, 10),
(59, 1, 0, 10),
(60, 1, 0, 10),
(61, 1, 0, 10),
(62, 1, 0, 10),
(63, 1, 0, 10),
(64, 1, 0, 10),
(65, 1, 0, 10),
(66, 1, 0, 10),
(67, 1, 0, 10),
(68, 1, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessWorkflows`
--

CREATE TABLE `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAssignments`
--

CREATE TABLE `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PermissionAssignments`
--

INSERT INTO `PermissionAssignments` (`paID`, `pkID`) VALUES
(1, 17),
(2, 18),
(3, 55),
(4, 56),
(5, 57),
(6, 58),
(7, 60),
(8, 61),
(9, 62),
(10, 63),
(11, 64),
(12, 66),
(13, 67),
(14, 68),
(15, 69),
(16, 70),
(17, 71),
(18, 72);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionDurationObjects`
--

CREATE TABLE `PermissionDurationObjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionKeyCategories`
--

CREATE TABLE `PermissionKeyCategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `PermissionKeyCategories`
--

INSERT INTO `PermissionKeyCategories` (`pkCategoryID`, `pkCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'single_page', NULL),
(3, 'stack', NULL),
(4, 'composer_page', NULL),
(5, 'user', NULL),
(6, 'file_set', NULL),
(7, 'file', NULL),
(8, 'area', NULL),
(9, 'block_type', NULL),
(10, 'block', NULL),
(11, 'admin', NULL),
(12, 'sitemap', NULL),
(13, 'marketplace_newsflow', NULL),
(14, 'basic_workflow', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionKeys`
--

CREATE TABLE `PermissionKeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) NOT NULL,
  `pkName` varchar(255) NOT NULL,
  `pkCanTriggerWorkflow` int(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` int(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `PermissionKeys`
--

INSERT INTO `PermissionKeys` (`pkID`, `pkHandle`, `pkName`, `pkCanTriggerWorkflow`, `pkHasCustomClass`, `pkDescription`, `pkCategoryID`, `pkgID`) VALUES
(1, 'view_page', 'View', 0, 0, 'Can see a page exists and read its content.', 1, 0),
(2, 'view_page_versions', 'View Versions', 0, 0, 'Can view the page versions dialog and read past versions of a page.', 1, 0),
(3, 'view_page_in_sitemap', 'View Page in Sitemap', 0, 0, 'Controls whether a user can see a page in the sitemap or intelligent search.', 1, 0),
(4, 'preview_page_as_user', 'Preview Page As User', 0, 0, 'Ability to see what this page will look like at a specific time in the future as a specific user.', 1, 0),
(5, 'edit_page_properties', 'Edit Properties', 0, 1, 'Ability to change anything in the Page Properties menu.', 1, 0),
(6, 'edit_page_contents', 'Edit Contents', 0, 0, 'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ', 1, 0),
(7, 'edit_page_speed_settings', 'Edit Speed Settings', 0, 0, 'Ability to change caching settings.', 1, 0),
(8, 'edit_page_theme', 'Change Theme', 0, 1, 'Ability to change just the theme for this page.', 1, 0),
(9, 'edit_page_type', 'Change Page Type', 0, 0, 'Ability to change just the page type for this page, also check out Theme permissions.', 1, 0),
(10, 'edit_page_permissions', 'Edit Permissions', 1, 0, 'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.', 1, 0),
(11, 'delete_page', 'Delete', 1, 0, 'Ability to move this page to the site''s Trash.', 1, 0),
(12, 'delete_page_versions', 'Delete Versions', 1, 0, 'Ability to remove old versions of this page.', 1, 0),
(13, 'approve_page_versions', 'Approve Changes', 1, 0, 'Can publish an unapproved version of the page.', 1, 0),
(14, 'add_subpage', 'Add Sub-Page', 0, 1, 'Can add a page beneath the current page.', 1, 0),
(15, 'move_or_copy_page', 'Move or Copy Page', 1, 0, 'Can move or copy this page to another location.', 1, 0),
(16, 'schedule_page_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Can control scheduled guest access to this page.', 1, 0),
(17, 'add_block', 'Add Block', 0, 1, 'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)', 9, 0),
(18, 'add_stack', 'Add Stack', 0, 0, 'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)', 9, 0),
(19, 'view_area', 'View Area', 0, 0, 'Can view the area and its contents.', 8, 0),
(20, 'edit_area_contents', 'Edit Area Contents', 0, 0, 'Can edit blocks within this area.', 8, 0),
(21, 'add_block_to_area', 'Add Block to Area', 0, 1, 'Can add blocks to this area. This setting overrides the global Add Block permission for this area.', 8, 0),
(22, 'add_stack_to_area', 'Add Stack to Area', 0, 0, 'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.', 8, 0),
(23, 'add_layout_to_area', 'Add Layouts to Area', 0, 0, 'Controls whether users get the ability to add layouts to a particular area.', 8, 0),
(24, 'edit_area_design', 'Edit Area Design', 0, 0, 'Controls whether users see design controls and can modify an area''s custom CSS.', 8, 0),
(25, 'edit_area_permissions', 'Edit Area Permissions', 0, 0, 'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.', 8, 0),
(26, 'delete_area_contents', 'Delete Area Contents', 0, 0, 'Controls whether users can delete blocks from this area.', 8, 0),
(27, 'schedule_area_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.', 8, 0),
(28, 'view_block', 'View Block', 0, 0, 'Controls whether users can view this block in the page.', 10, 0),
(29, 'edit_block', 'Edit Block', 0, 0, 'Controls whether users can edit this block. This overrides any area or page permissions.', 10, 0),
(30, 'edit_block_custom_template', 'Change Custom Template', 0, 0, 'Controls whether users can change the custom template on this block. This overrides any area or page permissions.', 10, 0),
(31, 'delete_block', 'Delete Block', 0, 0, 'Controls whether users can delete this block. This overrides any area or page permissions.', 10, 0),
(32, 'edit_block_design', 'Edit Design', 0, 0, 'Controls whether users can set custom design properties or CSS on this block.', 10, 0),
(33, 'edit_block_permissions', 'Edit Permissions', 0, 0, 'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.', 10, 0),
(34, 'schedule_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.', 10, 0),
(35, 'view_file_set_file', 'View Files', 0, 0, 'Can view and download files in the site.', 6, 0),
(36, 'search_file_set', 'Search Files in File Manager', 0, 0, 'Can access the file manager', 6, 0),
(37, 'edit_file_set_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file''s properties.', 6, 0),
(38, 'edit_file_set_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files in set.', 6, 0),
(39, 'copy_file_set_files', 'Copy File', 0, 0, 'Can copy files in file set.', 6, 0),
(40, 'edit_file_set_permissions', 'Edit File Access', 0, 0, 'Can edit access to file sets.', 6, 0),
(41, 'delete_file_set', 'Delete File Set', 0, 0, 'Can delete file set.', 6, 0),
(42, 'delete_file_set_files', 'Delete File', 0, 0, 'Can delete files in set.', 6, 0),
(43, 'add_file', 'Add File', 0, 1, 'Can add files to set.', 6, 0),
(44, 'view_file', 'View Files', 0, 0, 'Can view and download files.', 7, 0),
(45, 'view_file_in_file_manager', 'View File in File Manager', 0, 0, 'Can access the File Manager.', 7, 0),
(46, 'edit_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file''s properties.', 7, 0),
(47, 'edit_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files.', 7, 0),
(48, 'copy_file', 'Copy File', 0, 0, 'Can copy file.', 7, 0),
(49, 'edit_file_permissions', 'Edit File Access', 0, 0, 'Can edit access to file.', 7, 0),
(50, 'delete_file', 'Delete File', 0, 0, 'Can delete file.', 7, 0),
(51, 'approve_basic_workflow_action', 'Approve or Deny', 0, 0, 'Grant ability to approve workflow.', 14, 0),
(52, 'notify_on_basic_workflow_entry', 'Notify on Entry', 0, 0, 'Notify approvers that a change has entered the workflow.', 14, 0),
(53, 'notify_on_basic_workflow_approve', 'Notify on Approve', 0, 0, 'Notify approvers that a change has been approved.', 14, 0),
(54, 'notify_on_basic_workflow_deny', 'Notify on Deny', 0, 0, 'Notify approvers that a change has been denied.', 14, 0),
(55, 'access_user_search', 'Access User Search', 0, 1, '', 5, 0),
(56, 'edit_user_properties', 'Edit User Details', 0, 1, NULL, 5, 0),
(57, 'view_user_attributes', 'View User Attributes', 0, 1, NULL, 5, 0),
(58, 'activate_user', 'Activate/Deactivate User', 0, 0, NULL, 5, 0),
(59, 'sudo', 'Sign in as User', 0, 0, NULL, 5, 0),
(60, 'delete_user', 'Delete User', 0, 0, NULL, 5, 0),
(61, 'access_group_search', 'Access Group Search', 0, 0, '', 5, 0),
(62, 'edit_groups', 'Edit Groups', 0, 0, '', 5, 0),
(63, 'assign_user_groups', 'Assign Groups to User', 0, 1, '', 5, 0),
(64, 'backup', 'Perform Backups', 0, 0, NULL, 11, 0),
(65, 'access_task_permissions', 'Access Task Permissions', 0, 0, NULL, 11, 0),
(66, 'access_sitemap', 'Access Sitemap', 0, 0, NULL, 12, 0),
(67, 'access_page_defaults', 'Access Page Type Defaults', 0, 0, NULL, 11, 0),
(68, 'empty_trash', 'Empty Trash', 0, 0, NULL, 11, 0),
(69, 'uninstall_packages', 'Uninstall Packages', 0, 0, NULL, 13, 0),
(70, 'install_packages', 'Install Packages', 0, 0, NULL, 13, 0),
(71, 'view_newsflow', 'View Newsflow', 0, 0, NULL, 13, 0),
(72, 'access_user_search_export', 'Export Site Users', 0, 0, 'Controls whether a user can export site users or not', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PileContents`
--

CREATE TABLE `PileContents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Piles`
--

CREATE TABLE `Piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(64) NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `QueueMessages`
--

CREATE TABLE `QueueMessages` (
  `message_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) DEFAULT NULL,
  `body` longtext,
  `md5` varchar(32) NOT NULL,
  `timeout` decimal(14,0) unsigned DEFAULT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_handle` (`handle`),
  KEY `message_queueid` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `QueuePageDuplicationRelations`
--

CREATE TABLE `QueuePageDuplicationRelations` (
  `queue_name` varchar(255) NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`originalCID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Queues`
--

CREATE TABLE `Queues` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(100) NOT NULL,
  `timeout` int(5) unsigned NOT NULL DEFAULT '30',
  PRIMARY KEY (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SignupRequests`
--

CREATE TABLE `SignupRequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_ipFrom` (`ipFrom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Stacks`
--

CREATE TABLE `Stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) NOT NULL,
  `stType` int(1) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SystemAntispamLibraries`
--

CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) NOT NULL,
  `saslName` varchar(255) DEFAULT NULL,
  `saslIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SystemCaptchaLibraries`
--

CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) NOT NULL,
  `sclName` varchar(255) DEFAULT NULL,
  `sclIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SystemCaptchaLibraries`
--

INSERT INTO `SystemCaptchaLibraries` (`sclHandle`, `sclName`, `sclIsActive`, `pkgID`) VALUES
('securimage', 'SecurImage (Default)', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SystemNotifications`
--

CREATE TABLE `SystemNotifications` (
  `snID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `snTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `snURL` text,
  `snURL2` text,
  `snDateTime` datetime NOT NULL,
  `snIsArchived` int(1) NOT NULL DEFAULT '0',
  `snIsNew` int(1) NOT NULL DEFAULT '0',
  `snTitle` varchar(255) DEFAULT NULL,
  `snDescription` text,
  `snBody` text,
  PRIMARY KEY (`snID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `UserAttributeKeys`
--

CREATE TABLE `UserAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `UserAttributeKeys`
--

INSERT INTO `UserAttributeKeys` (`akID`, `uakProfileDisplay`, `uakMemberListDisplay`, `uakProfileEdit`, `uakProfileEditRequired`, `uakRegisterEdit`, `uakRegisterEditRequired`, `displayOrder`, `uakIsActive`) VALUES
(10, 0, 0, 1, 0, 1, 0, 1, 1),
(11, 0, 0, 1, 0, 1, 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `UserAttributeValues`
--

CREATE TABLE `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserBannedIPs`
--

CREATE TABLE `UserBannedIPs` (
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `ipTo` int(10) unsigned NOT NULL DEFAULT '0',
  `banCode` int(1) unsigned NOT NULL DEFAULT '1',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `isManual` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ipFrom`,`ipTo`),
  KEY `ipFrom` (`ipFrom`),
  KEY `ipTo` (`ipTo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserGroups`
--

CREATE TABLE `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserOpenIDs`
--

CREATE TABLE `UserOpenIDs` (
  `uID` int(10) unsigned NOT NULL,
  `uOpenID` varchar(255) NOT NULL,
  PRIMARY KEY (`uOpenID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionAssignGroupAccessList`
--

CREATE TABLE `UserPermissionAssignGroupAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionAssignGroupAccessListCustom`
--

CREATE TABLE `UserPermissionAssignGroupAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionEditPropertyAccessList`
--

CREATE TABLE `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` int(1) unsigned DEFAULT '0',
  `uEmail` int(1) unsigned DEFAULT '0',
  `uPassword` int(1) unsigned DEFAULT '0',
  `uAvatar` int(1) unsigned DEFAULT '0',
  `uTimezone` int(1) unsigned DEFAULT '0',
  `uDefaultLanguage` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

CREATE TABLE `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionUserSearchAccessList`
--

CREATE TABLE `UserPermissionUserSearchAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionUserSearchAccessListCustom`
--

CREATE TABLE `UserPermissionUserSearchAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionViewAttributeAccessList`
--

CREATE TABLE `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionViewAttributeAccessListCustom`
--

CREATE TABLE `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UserPointHistory`
--

CREATE TABLE `UserPointHistory` (
  `upID` int(11) NOT NULL AUTO_INCREMENT,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`upID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `UserPrivateMessages`
--

CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) NOT NULL,
  `msgBody` text,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `UserPrivateMessagesTo`
--

CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` int(1) NOT NULL DEFAULT '0',
  `msgIsUnread` int(1) NOT NULL DEFAULT '0',
  `msgIsReplied` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) NOT NULL,
  `uEmail` varchar(255) NOT NULL,
  `uPassword` varchar(255) NOT NULL,
  `uIsActive` varchar(1) NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(4) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` bigint(10) NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) DEFAULT NULL,
  `uDefaultLanguage` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`uID`, `uName`, `uEmail`, `uPassword`, `uIsActive`, `uIsValidated`, `uIsFullRecord`, `uDateAdded`, `uHasAvatar`, `uLastOnline`, `uLastLogin`, `uLastIP`, `uPreviousLogin`, `uNumLogins`, `uTimezone`, `uDefaultLanguage`) VALUES
(1, 'admin', 'admin@callingchaos.com', '$2a$12$TMWk3UiG9nVd7ymHksxfJusql9jNYZP0jZaJY1X7g2PniG3ALM3Bm', '1', -1, 1, '2015-05-20 20:20:31', 0, 1432167651, 1432167631, 2130706433, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `UserSearchIndexAttributes`
--

CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(4) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UsersFriends`
--

CREATE TABLE `UsersFriends` (
  `ufID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `friendUID` int(10) unsigned DEFAULT NULL,
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ufID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `UserValidationHashes`
--

CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) NOT NULL,
  `type` int(4) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgress`
--

CREATE TABLE `WorkflowProgress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(10) NOT NULL DEFAULT '0',
  `wrID` int(1) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wrID` (`wrID`),
  KEY `wpIsCompleted` (`wpIsCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgressCategories`
--

CREATE TABLE `WorkflowProgressCategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `WorkflowProgressCategories`
--

INSERT INTO `WorkflowProgressCategories` (`wpCategoryID`, `wpCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'file', NULL),
(3, 'user', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgressHistory`
--

CREATE TABLE `WorkflowProgressHistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `object` text,
  PRIMARY KEY (`wphID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowRequestObjects`
--

CREATE TABLE `WorkflowRequestObjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Workflows`
--

CREATE TABLE `Workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowTypes`
--

CREATE TABLE `WorkflowTypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) NOT NULL,
  `wftName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `WorkflowTypes`
--

INSERT INTO `WorkflowTypes` (`wftID`, `wftHandle`, `wftName`, `pkgID`) VALUES
(1, 'basic', 'Basic Workflow', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
