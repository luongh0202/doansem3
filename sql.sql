
CREATE TABLE `catalogs` (
  `id` int(11) NOT NULL,
  `catalogname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `catalogtype_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notes` text COLLATE utf8_unicode_ci,
  `catalogstatus` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `catalogtypes` (
  `id` int(11) NOT NULL,
  `catalogtypename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notes` text COLLATE utf8_unicode_ci,
  `catalogtypestatus` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `useravatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user.jpg',
  `userbirthday` date DEFAULT NULL,
  `usergender` int(1) NOT NULL DEFAULT '1',
  `useridcard` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `userphone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `useraddress` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notes` text COLLATE utf8_unicode_ci,
  `userlevel` int(11) NOT NULL DEFAULT '0',
  `userstatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `typeareas` (
  `id` int(11) NOT NULL,
  `typeareaname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `typeareastatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `provinces` (
  `id` int(11) NOT NULL,
  `provincename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `typearea_id` int(11) NOT NULL,
  `provincestatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `districtname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `typearea_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `districtstatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `wards` (
  `id` int(11) NOT NULL,
  `wardname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `typearea_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `wardstatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
