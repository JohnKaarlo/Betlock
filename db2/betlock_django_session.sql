CREATE DATABASE  IF NOT EXISTS `betlock` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `betlock`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: betlock
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0obk4hniohnkyyvfb77rlwy1pm7xlqjd','e30:1rimSV:3e-1wloGXCcj2uKrqKdo_3PMjiW9rToalMoFzJgaxn0','2024-03-23 02:29:11.812975'),('1rn6z79558wxicvfbg0diwrjy6lpv60q','.eJxVjDsOwyAQBe9CHSEMLJiU6X0GtMsnOIlAMnYV5e6xJRdJ-2bmvZnHbS1-62nxc2RXZtnldyMMz1QPEB9Y742HVtdlJn4o_KSdTy2m1-10_w4K9rLXUilw2jiKI1itSAQrxQBBGYNiIKdylklkCRYkptGSxYzZ6d2mBBDZ5wu44DdT:1r9HIc:OyUjw5nSmpvC1xTrRRiyb9G8LF3x1ZfAW5bQTaZUcZg','2023-12-16 04:08:14.525678'),('26oqp4qxu1rtwkqpodrdyqzfm2efqfi9','e30:1r4AJY:MMDmHHqhXCBQGRlf-v79JYrQwodXrwbcLouNnQQSpWQ','2023-12-02 01:40:04.979984'),('3h8u8y1tpmxdbupulp5jy8erpi9ag14m','.eJxVjDsOwjAQRO_iGln-YFhT0nMGa73exQHkSHFSIe5OIqWAZop5b-atEi5zTUvnKQ1FXZRz6vBbZqQnt42UB7b7qGls8zRkvSl6p13fxsKv6-7-HVTsdV2zGEdCFk1cE8CbfGQ0bD1gkUBngQgxcBHgCOQhZBslGBKTTyJefb4tPDkM:1rYLTY:ZFMj7xkVpIvlxgB9s1iIz1D2mx7xJEpb2qyKm431Lr0','2024-02-23 07:39:08.458749'),('4me38m4w15x1df2qug78vqgeyum2owqf','e30:1rimTG:zGmoSIOfLlHAC1Bj60HhIgU4inMgHZeYUwNzpZgfbbA','2024-03-23 02:29:58.494579'),('5z8h98kvyvhtek792cwredr6jmwzbz7p','.eJxVjDEOwyAQBP9CHSHbZzhImd5vQMBxwUkEkrGrKH-PLblImi12ZvctnN_W7LaWFjeTuAoUl98u-PhM5QD08OVeZaxlXeYgD0WetMmpUnrdTvfvIPuW97Ul4AHGpAwY1qQUjVZ3SF75bjAhWVTE3CNiDAB7Wow9m8gIWqEB8fkC2xE3fA:1qwGdZ:mZl4HlI2R7cbsZJ_AgcsxX1MDAruTUsock3EJzDIcT0','2023-11-10 06:48:05.704331'),('8ibnfprg1t5oxxpf04tzin80aq4jx4ps','.eJxVjDsOwjAQBe_iGlnZGP8o6TmDtbu2cQDZUpxUiLuTSCmgfTPz3iLgupSw9jSHKYqL8OL0uxHyM9UdxAfWe5Pc6jJPJHdFHrTLW4vpdT3cv4OCvWy1NRpzhgGTU94PZJNjTgygSWnIxll3NqwtERqijRGPQDgqBaSc0-LzBfY9ODU:1qy2jd:7m3nR52gpNYE-tVny7lao_lg8k0KbGjJqiBOZLbrU40','2023-11-15 04:21:41.237052'),('bi00e4qwqrwrzfqj0q8m33lcxnm7o6ah','.eJxVjDsOwjAQRO_iGln-YFhT0nMGa73exQHkSHFSIe5OIqWAZop5b-atEi5zTUvnKQ1FXZRz6vBbZqQnt42UB7b7qGls8zRkvSl6p13fxsKv6-7-HVTsdV2zGEdCFk1cE8CbfGQ0bD1gkUBngQgxcBHgCOQhZBslGBKTTyJefb4tPDkM:1rWUCf:B_kHioWC74bi40Ay2x6qjYmzP5GVUL4YpDUSTwGMO84','2024-02-18 04:34:01.169512'),('bjqsl0q61r93e693millxeopvjcf85lq','.eJxVjMsOwiAQRf-FtSGFKY9x6d5vIEMZpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJngeL0u0WaHlx3kO5Ub01Ora7LHOWuyIN2eW2Jn5fD_Tso1Mu35mw5IQ3aOZNJ48jZoAFFjiJaixnUAMYr7zyxhszAkcGP2iXPBCDeH-mAN8Y:1r4WGf:goW-0E_TgAOrF0bOyORDs-9CN-xMJz0yMYzMfiPOAs0','2023-12-03 01:06:33.636878'),('cnd01dav22xm3gqkqq71e9n75a9jbvc5','.eJxVjDsOwjAQRO_iGln-YFhT0nMGa73exQHkSHFSIe5OIqWAZop5b-atEi5zTUvnKQ1FXZRz6vBbZqQnt42UB7b7qGls8zRkvSl6p13fxsKv6-7-HVTsdV2zGEdCFk1cE8CbfGQ0bD1gkUBngQgxcBHgCOQhZBslGBKTTyJefb4tPDkM:1rXEZ7:_2H7BNACULdIq9DkueobgfZmvcFF_J6UqRjAWdLTnVY','2024-02-20 06:04:17.150922'),('d00kfj7neh62cb9ngod9nyjoeccqfk9m','.eJxVjDsOwjAQBe_iGlnZGP8o6TmDtbu2cQDZUpxUiLuTSCmgfTPz3iLgupSw9jSHKYqL8OL0uxHyM9UdxAfWe5Pc6jJPJHdFHrTLW4vpdT3cv4OCvWy1NRpzhgGTU94PZJNjTgygSWnIxll3NqwtERqijRGPQDgqBaSc0-LzBfY9ODU:1qy5Wn:8XOKbRzOUXvxDivS111bIe9vVf3JEeRRsenE6s_7SaM','2023-11-15 07:20:37.193632'),('dm1th9wty5dtlcrsvnxc275t2pe5rnr9','.eJxVjEEOwiAQRe_C2hCGDggu3fcMBJhBqoYmpV0Z765NutDtf-_9lwhxW2vYOi9hInERIE6_W4r5wW0HdI_tNss8t3WZktwVedAux5n4eT3cv4Mae_3WOWkDvoAho5EzkDuDR9SDckysU3HRsAVC5ewQi80KiwJltTa-IBjx_gDSlzcH:1r3nlS:a7abudh_jaOzyVKZgO-JRHgfj1V8e4Taq9URnse4J_M','2023-12-01 01:35:22.030676'),('e0mg352ycj601i335d9wdb24hrex9u8t','.eJxVjEEOwiAQRe_C2hBApqUu3fcMZGZgpGpoUtqV8e7apAvd_vfef6mI21ri1vISp6Quylp1-h0J-ZHrTtId623WPNd1mUjvij5o0-Oc8vN6uH8HBVv51j0gogNhPxhgQ-y9iEdCsEgCtsvWDc4wdJlt7h05b0gknFMwIQiq9wcgEziq:1qvCZI:FBT9vGSefXNmybUE3cxXnqnOnxRrEfrHC7ZnaAtpQ4I','2023-11-07 08:15:16.417484'),('e2vu571oq3hklypjdatyruu7ilioaing','.eJxVjDsOwjAQRO_iGln-YFhT0nMGa73exQHkSHFSIe5OIqWAZop5b-atEi5zTUvnKQ1FXZRz6vBbZqQnt42UB7b7qGls8zRkvSl6p13fxsKv6-7-HVTsdV2zGEdCFk1cE8CbfGQ0bD1gkUBngQgxcBHgCOQhZBslGBKTTyJefb4tPDkM:1rcQju:ugaSVHdGyOnoBedZwkdlUzdDQbNh0Eih_jL1_99w49E','2024-03-05 14:04:54.827273'),('elfzytiz6n8dfvx4fy6g2dwh9vpxslqi','e30:1qszhn:3F7aqFDHlZ45xpB4zQhjOkCVZc674jyhMlrE8ynfIp4','2023-11-01 06:06:55.707231'),('fgtsid1w8hzizrq9yxf3gxyk30zxz853','eyJlbWFpbCI6Impha2VtZWRpYW5hMDdAZ21haWwuY29tIiwib3RwIjoiOTM3NSJ9:1rkLMO:h1eW1fFoby0jqFDs_VkqzLyJAk499ASS4IC6-Qjaxc0','2024-03-27 09:57:20.721057'),('fhxbihublee4qeo4r01pgrxfhg9eq4wp','.eJxVjDsOwjAQBe_iGlnsxp-Ykj5nsHb9wQFkS3FSIe4OkVJA-2bmvYSnbS1-62nxcxQXAUacfkem8Eh1J_FO9dZkaHVdZpa7Ig_a5dRiel4P9--gUC_fWgfFlpRBGF0KQ0aTRkeEDkEZGxnPmNkMKVgYWAPorJk1MkQIWRkt3h_87zfJ:1r3882:mCsEy8ceIwa76y8FUuB-GN66-D9LA5EQG7sZ6Cl3SDA','2023-11-29 05:07:54.642156'),('hiz1gihmaymvkz8x6nnmtbkhcn5dy9ar','.eJxVjMsOwiAQRf-FtSGFKY9x6d5vIEMZpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJngeL0u0WaHlx3kO5Ub01Ora7LHOWuyIN2eW2Jn5fD_Tso1Mu35mw5IQ3aOZNJ48jZoAFFjiJaixnUAMYr7zyxhszAkcGP2iXPBCDeH-mAN8Y:1r4L9q:H1sFc92s7FUOnKJRSlcfkox121A0ZuXJeUZ33_ZX9bg','2023-12-02 13:14:46.604868'),('ia2cd2fxanhreonauocgngfq1jwafhr6','.eJxVjEEOwiAQRe_C2hBApqUu3fcMZGZgpGpoUtqV8e7apAvd_vfef6mI21ri1vISp6Quylp1-h0J-ZHrTtId623WPNd1mUjvij5o0-Oc8vN6uH8HBVv51j0gogNhPxhgQ-y9iEdCsEgCtsvWDc4wdJlt7h05b0gknFMwIQiq9wcgEziq:1qvuXV:29f_SI1z7L4Ub9NAn6_sekuBnSt7_JsSpl8DwWJrgZA','2023-11-09 07:12:21.345262'),('mp2hvcbpkylxfv6na8cj3b39ih1w6avm','.eJxVjDEOwyAQBP9CHSHbZzhImd5vQMBxwUkEkrGrKH-PLblImi12ZvctnN_W7LaWFjeTuAoUl98u-PhM5QD08OVeZaxlXeYgD0WetMmpUnrdTvfvIPuW97Ul4AHGpAwY1qQUjVZ3SF75bjAhWVTE3CNiDAB7Wow9m8gIWqEB8fkC2xE3fA:1qxdZN:_4QxvzjyAkr4eic_ehiLeFuyy_YJQA7QafOfa-Maa5A','2023-11-14 01:29:25.192901'),('n7b22d0dxbe4qfzqs4gv82csln7wn8o6','.eJxVjMsOwiAQRf-FtSGFKY9x6d5vIEMZpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJngeL0u0WaHlx3kO5Ub01Ora7LHOWuyIN2eW2Jn5fD_Tso1Mu35mw5IQ3aOZNJ48jZoAFFjiJaixnUAMYr7zyxhszAkcGP2iXPBCDeH-mAN8Y:1r7HTQ:5KYqyinhuGiTbWByKOCfPwgcrCOCCw4JH2GWx5yHv8w','2023-12-10 15:55:08.027660'),('p0dkyh6tf8zmc2sm1ti8fm9wsl1tdqcw','e30:1r4AJC:eJB8sOug0GYp5tSJ1urDsoiQCQOA0ujV0B9hpIBxjKY','2023-12-02 01:39:42.724375'),('pwxig1ja43405kuu58odqawmzyg83lff','.eJxVjDsOwjAQRO_iGln-YFhT0nMGa73exQHkSHFSIe5OIqWAZop5b-atEi5zTUvnKQ1FXZRz6vBbZqQnt42UB7b7qGls8zRkvSl6p13fxsKv6-7-HVTsdV2zGEdCFk1cE8CbfGQ0bD1gkUBngQgxcBHgCOQhZBslGBKTTyJefb4tPDkM:1rWUHI:JEPQ8xdLj5Tuzs5fqZzEEjHqyYjYbPPDsB6NGTBsOdQ','2024-02-18 04:38:48.663331'),('qp3mz7wfn4m69r2zshpm1imnd075fuf1','.eJxVjDsOwjAQRO_iGln-YFhT0nMGa73exQHkSHFSIe5OIqWAZop5b-atEi5zTUvnKQ1FXZRz6vBbZqQnt42UB7b7qGls8zRkvSl6p13fxsKv6-7-HVTsdV2zGEdCFk1cE8CbfGQ0bD1gkUBngQgxcBHgCOQhZBslGBKTTyJefb4tPDkM:1rZP4v:7eCpe6wFUQs1vDU4HzK6ypnexwecT6MmNkt6yJMxcfA','2024-02-26 05:42:05.063478'),('sbie2e9xu8srccs3i6nhj8rsfzmmppn5','e30:1r4AKh:EzJUnY8vujy415oBjJS8TL_hIDujTYWnai_iatPJ7H0','2023-12-02 01:41:15.661044'),('shekwpu280zjw3crxwd0i0u9fe6ds8yo','.eJxVjDsOwjAQRO_iGln-YFhT0nMGa73exQHkSHFSIe5OIqWAZop5b-atEi5zTUvnKQ1FXZRz6vBbZqQnt42UB7b7qGls8zRkvSl6p13fxsKv6-7-HVTsdV2zGEdCFk1cE8CbfGQ0bD1gkUBngQgxcBHgCOQhZBslGBKTTyJefb4tPDkM:1rXENy:gLFVTCPy83NvpwEXnbdhgNuaYphpSVXoLgXW-CldTVo','2024-02-20 05:52:46.028124'),('ta2z2ftqgj7gmepalfhtftacor9wjfqe','.eJxVjDsOwjAQRO_iGln-YFhT0nMGa73exQHkSHFSIe5OIqWAZop5b-atEi5zTUvnKQ1FXZRz6vBbZqQnt42UB7b7qGls8zRkvSl6p13fxsKv6-7-HVTsdV2zGEdCFk1cE8CbfGQ0bD1gkUBngQgxcBHgCOQhZBslGBKTTyJefb4tPDkM:1rXaiH:s5aXL_FcFaMbx-jG1WQ340mx1i5wBkn1AQYcUDiZWSE','2024-02-21 05:43:13.484575'),('tpgyhzmk1ja0tdv8rqkco6yhz00udx9j','e30:1r4AKy:d0I2nydsUfEL0qP_dxpWvPCl1eSZ0ekBeg4RvFztN5Q','2023-12-02 01:41:32.767923'),('uq0sn71gphoypxq0t321p6ei3dikucyj','.eJxVjDsOAjEMRO-SGkXOhoBDSc8ZVo5js8snkfZTIe5OVqKAZoqZN-9lelqXoV9nmfoxm5PpOrP7LRPxXcq25BuVa7VcyzKNyW6I_a6zvdQsj_OX_RMMNA_tLQodKzuC2BLRQ9oLgTiPlDXwUTFiDJIVJSJ7DMlFDcAK6aDqm5SedS1LczkA8_4ApfU9Hw:1rbAJA:51LdqZHxGscd0Xya3eLwd898qnsakmegpi37Rm2TSCA','2024-03-02 02:20:04.610136'),('vdrlonanqheu4ozql64h9p660p5pgvxs','.eJxVjDsOwjAQRO_iGln-YFhT0nMGa73exQHkSHFSIe5OIqWAZop5b-atEi5zTUvnKQ1FXZRz6vBbZqQnt42UB7b7qGls8zRkvSl6p13fxsKv6-7-HVTsdV2zGEdCFk1cE8CbfGQ0bD1gkUBngQgxcBHgCOQhZBslGBKTTyJefb4tPDkM:1rUeAr:VrZhIfL4RLNQgIWRz9sS1CRGnw9-vK_0kz4TqF-Y_g4','2024-02-13 02:48:33.352009'),('yndz4a1jb4trqkgb9l5wgjpp4bdi3ilf','.eJxVjEEOwiAQRe_C2pCBtkxw6d4zEIYZpGogKe3KeHdt0oVu_3vvv1SI21rC1mUJM6uzsur0u1FMD6k74Hust6ZTq-syk94VfdCur43leTncv4MSe_nWxnsUYTNMSADGMMYxZeeGjJkNgU8wgPc2j4QWJ7bCLllwgoDOUlTvD9LiN24:1qtLLP:_y7AzRhggHKzNjX4IKo0OkB-Yl6NPjl-DP6c_pl8gB4','2023-11-02 05:13:15.469562');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 14:18:56
