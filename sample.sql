-- MariaDB dump 10.19  Distrib 10.5.10-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sample
-- ------------------------------------------------------
-- Server version	10.5.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept` (
  `deptno` int(2) NOT NULL,
  `dname` varchar(14) DEFAULT NULL,
  `loc` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES (10,'ACCOUNTING','NEW YORK'),(20,'RESEARCH','DALLAS'),(30,'SALES','CHICAGO'),(40,'OPERATIONS','BOSTON');
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp` (
  `empno` int(4) NOT NULL,
  `ename` varchar(10) DEFAULT NULL,
  `job` varchar(9) DEFAULT NULL,
  `mgr` int(4) DEFAULT NULL,
  `hiredate` date DEFAULT NULL,
  `sal` decimal(7,2) DEFAULT NULL,
  `comm` decimal(7,2) DEFAULT NULL,
  `deptno` int(2) DEFAULT NULL,
  PRIMARY KEY (`empno`),
  KEY `idx_emp` (`deptno`),
  CONSTRAINT `fk_emp_dept` FOREIGN KEY (`deptno`) REFERENCES `dept` (`deptno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (7369,'SMITH','CLERK',7902,'2010-12-17',800.00,NULL,20),(7499,'ALLEN','SALESMAN',7698,'2011-02-20',1600.00,300.00,30),(7521,'WARD','SALESMAN',7698,'2011-02-22',1250.00,500.00,30),(7566,'JONES','MANAGER',7839,'2011-04-02',2975.00,NULL,20),(7654,'MARTIN','SALESMAN',7698,'2011-09-28',1250.00,1400.00,30),(7698,'BLAKE','MANAGER',7839,'2011-05-01',2850.00,NULL,30),(7782,'CLARK','MANAGER',7839,'2011-06-09',2450.00,NULL,10),(7788,'SCOTT','ANALYST',7566,'2017-07-13',3000.00,NULL,20),(7839,'KING','PRESIDENT',NULL,'2011-11-17',5000.00,NULL,10),(7844,'TURNER','SALESMAN',7698,'2011-09-08',1500.00,0.00,30),(7876,'ADAMS','CLERK',7788,'2017-07-13',1100.00,NULL,20),(7900,'JAMES','CLERK',7698,'2011-12-03',950.00,NULL,30),(7902,'FORD','ANALYST',7566,'2011-12-03',3000.00,NULL,20),(7934,'MILLER','CLERK',7782,'2012-01-23',1300.00,NULL,10);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `emp_dept`
--

DROP TABLE IF EXISTS `emp_dept`;
/*!50001 DROP VIEW IF EXISTS `emp_dept`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `emp_dept` (
  `empno` tinyint NOT NULL,
  `ename` tinyint NOT NULL,
  `deptno` tinyint NOT NULL,
  `dname` tinyint NOT NULL,
  `loc` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `emp_mgr`
--

DROP TABLE IF EXISTS `emp_mgr`;
/*!50001 DROP VIEW IF EXISTS `emp_mgr`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `emp_mgr` (
  `empno` tinyint NOT NULL,
  `ename` tinyint NOT NULL,
  `관리자` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `emp_salgrade`
--

DROP TABLE IF EXISTS `emp_salgrade`;
/*!50001 DROP VIEW IF EXISTS `emp_salgrade`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `emp_salgrade` (
  `empno` tinyint NOT NULL,
  `ename` tinyint NOT NULL,
  `sal` tinyint NOT NULL,
  `annsal` tinyint NOT NULL,
  `grade` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `emp_vu1`
--

DROP TABLE IF EXISTS `emp_vu1`;
/*!50001 DROP VIEW IF EXISTS `emp_vu1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `emp_vu1` (
  `empno` tinyint NOT NULL,
  `ename` tinyint NOT NULL,
  `job` tinyint NOT NULL,
  `mgr` tinyint NOT NULL,
  `hiredate` tinyint NOT NULL,
  `sal` tinyint NOT NULL,
  `comm` tinyint NOT NULL,
  `deptno` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `emp_vu_10`
--

DROP TABLE IF EXISTS `emp_vu_10`;
/*!50001 DROP VIEW IF EXISTS `emp_vu_10`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `emp_vu_10` (
  `empno` tinyint NOT NULL,
  `ename` tinyint NOT NULL,
  `job` tinyint NOT NULL,
  `mgr` tinyint NOT NULL,
  `hiredate` tinyint NOT NULL,
  `sal` tinyint NOT NULL,
  `comm` tinyint NOT NULL,
  `deptno` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `emp_vu_20`
--

DROP TABLE IF EXISTS `emp_vu_20`;
/*!50001 DROP VIEW IF EXISTS `emp_vu_20`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `emp_vu_20` (
  `no` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `manager` tinyint NOT NULL,
  `job` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `salgrade`
--

DROP TABLE IF EXISTS `salgrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salgrade` (
  `grade` int(1) DEFAULT NULL,
  `losal` decimal(7,2) DEFAULT NULL,
  `hisal` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salgrade`
--

LOCK TABLES `salgrade` WRITE;
/*!40000 ALTER TABLE `salgrade` DISABLE KEYS */;
INSERT INTO `salgrade` VALUES (1,700.00,1200.00),(2,1201.00,1400.00),(3,1401.00,2000.00),(4,2001.00,3000.00),(5,3001.00,9999.00);
/*!40000 ALTER TABLE `salgrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `emp_dept`
--

/*!50001 DROP TABLE IF EXISTS `emp_dept`*/;
/*!50001 DROP VIEW IF EXISTS `emp_dept`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `emp_dept` AS select `e`.`empno` AS `empno`,`e`.`ename` AS `ename`,`e`.`deptno` AS `deptno`,`d`.`dname` AS `dname`,`d`.`loc` AS `loc` from (`emp` `e` join `dept` `d` on(`e`.`deptno` = `d`.`deptno`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `emp_mgr`
--

/*!50001 DROP TABLE IF EXISTS `emp_mgr`*/;
/*!50001 DROP VIEW IF EXISTS `emp_mgr`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `emp_mgr` AS select `e`.`empno` AS `empno`,`e`.`ename` AS `ename`,ifnull(`m`.`ename`,'없음') AS `관리자` from (`emp` `e` left join `emp` `m` on(`e`.`mgr` = `m`.`empno`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `emp_salgrade`
--

/*!50001 DROP TABLE IF EXISTS `emp_salgrade`*/;
/*!50001 DROP VIEW IF EXISTS `emp_salgrade`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `emp_salgrade` AS select `e`.`empno` AS `empno`,`e`.`ename` AS `ename`,`e`.`sal` AS `sal`,`e`.`sal` * 12 + ifnull(`e`.`comm`,0) AS `annsal`,`s`.`grade` AS `grade` from (`emp` `e` join `salgrade` `s` on(`e`.`sal` between `s`.`losal` and `s`.`hisal`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `emp_vu1`
--

/*!50001 DROP TABLE IF EXISTS `emp_vu1`*/;
/*!50001 DROP VIEW IF EXISTS `emp_vu1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `emp_vu1` AS select `emp`.`empno` AS `empno`,`emp`.`ename` AS `ename`,`emp`.`job` AS `job`,`emp`.`mgr` AS `mgr`,`emp`.`hiredate` AS `hiredate`,`emp`.`sal` AS `sal`,`emp`.`comm` AS `comm`,`emp`.`deptno` AS `deptno` from `emp` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `emp_vu_10`
--

/*!50001 DROP TABLE IF EXISTS `emp_vu_10`*/;
/*!50001 DROP VIEW IF EXISTS `emp_vu_10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `emp_vu_10` AS select `emp`.`empno` AS `empno`,`emp`.`ename` AS `ename`,`emp`.`job` AS `job`,`emp`.`mgr` AS `mgr`,`emp`.`hiredate` AS `hiredate`,`emp`.`sal` AS `sal`,`emp`.`comm` AS `comm`,`emp`.`deptno` AS `deptno` from `emp` where `emp`.`deptno` = 20 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `emp_vu_20`
--

/*!50001 DROP TABLE IF EXISTS `emp_vu_20`*/;
/*!50001 DROP VIEW IF EXISTS `emp_vu_20`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `emp_vu_20` AS select `emp`.`empno` AS `no`,`emp`.`ename` AS `name`,`emp`.`mgr` AS `manager`,`emp`.`job` AS `job` from `emp` where `emp`.`deptno` = 20 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-21 14:17:37
