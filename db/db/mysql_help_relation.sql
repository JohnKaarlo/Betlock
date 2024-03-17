CREATE DATABASE  IF NOT EXISTS `mysql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mysql`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mysql
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
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int unsigned NOT NULL,
  `help_keyword_id` int unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_relation`
--

LOCK TABLES `help_relation` WRITE;
/*!40000 ALTER TABLE `help_relation` DISABLE KEYS */;
INSERT INTO `help_relation` VALUES (0,0),(1,1),(2,2),(485,2),(502,2),(503,2),(510,2),(513,2),(514,2),(522,2),(523,2),(547,2),(554,2),(592,2),(610,2),(612,2),(618,2),(620,2),(2,3),(522,3),(2,4),(547,4),(554,4),(608,4),(609,4),(3,5),(700,5),(4,6),(5,7),(6,8),(7,9),(8,10),(9,11),(10,12),(11,13),(12,14),(13,15),(14,15),(13,16),(14,16),(16,17),(17,17),(16,18),(240,18),(16,19),(16,20),(20,20),(22,20),(23,20),(25,20),(26,20),(242,20),(16,21),(20,21),(22,21),(23,21),(25,21),(26,21),(18,22),(19,23),(19,24),(20,25),(20,26),(242,26),(630,26),(22,27),(23,28),(23,29),(522,29),(23,30),(24,31),(242,31),(630,31),(25,32),(26,33),(26,34),(26,35),(630,35),(28,36),(129,36),(131,36),(242,36),(30,37),(165,37),(31,38),(163,38),(242,38),(33,39),(35,39),(502,39),(503,39),(510,39),(513,39),(514,39),(522,39),(551,39),(552,39),(555,39),(638,39),(639,39),(641,39),(645,39),(33,40),(35,40),(33,41),(34,42),(34,43),(184,43),(242,43),(35,44),(35,45),(35,46),(44,47),(44,48),(53,49),(510,49),(511,49),(524,49),(610,49),(53,50),(502,50),(503,50),(504,50),(505,50),(506,50),(507,50),(508,50),(509,50),(510,50),(511,50),(512,50),(610,50),(615,50),(621,50),(53,51),(513,51),(514,51),(515,51),(516,51),(517,51),(518,51),(519,51),(520,51),(521,51),(522,51),(524,51),(525,51),(526,51),(611,51),(612,51),(622,51),(630,51),(641,51),(649,51),(650,51),(651,51),(652,51),(653,51),(654,51),(656,51),(53,52),(510,52),(516,52),(522,52),(530,52),(557,52),(641,52),(667,52),(689,52),(692,52),(53,53),(510,53),(522,53),(523,53),(547,53),(53,54),(510,54),(522,54),(535,54),(539,54),(540,54),(546,54),(548,54),(558,54),(625,54),(626,54),(627,54),(628,54),(629,54),(641,54),(654,54),(683,54),(54,55),(79,55),(55,56),(56,57),(57,58),(58,59),(59,60),(60,61),(61,62),(75,62),(61,63),(62,63),(62,64),(66,64),(69,64),(71,64),(74,64),(232,64),(234,64),(513,64),(514,64),(515,64),(521,64),(611,64),(612,64),(63,65),(510,65),(64,66),(65,67),(66,67),(240,67),(555,67),(644,67),(647,67),(648,67),(667,67),(677,67),(67,68),(131,68),(515,68),(610,68),(612,68),(68,69),(69,69),(70,69),(71,69),(70,70),(71,70),(523,70),(72,71),(73,72),(76,73),(521,73),(77,74),(78,75),(80,76),(593,76),(80,77),(593,77),(80,78),(572,78),(590,78),(593,78),(594,78),(597,78),(598,78),(600,78),(80,79),(593,79),(594,79),(80,80),(593,80),(81,81),(513,81),(514,81),(515,81),(521,81),(527,81),(528,81),(529,81),(533,81),(534,81),(535,81),(538,81),(594,81),(610,81),(611,81),(612,81),(613,81),(614,81),(617,81),(631,81),(694,81),(82,82),(83,83),(84,84),(85,85),(86,85),(87,86),(88,87),(89,88),(90,89),(109,89),(91,90),(92,91),(93,92),(94,93),(95,94),(96,95),(97,96),(98,97),(99,98),(100,99),(101,100),(102,101),(103,102),(104,103),(105,104),(106,105),(107,106),(108,107),(109,108),(110,109),(111,110),(112,111),(113,112),(114,113),(115,114),(116,115),(117,116),(118,117),(119,118),(120,119),(510,119),(540,119),(121,120),(122,121),(123,122),(124,123),(125,124),(126,125),(127,126),(128,127),(130,128),(131,129),(131,130),(133,130),(131,131),(134,131),(610,131),(612,131),(131,132),(131,133),(131,134),(131,135),(143,135),(131,136),(131,137),(131,138),(150,138),(131,139),(131,140),(151,140),(131,141),(157,141),(131,142),(179,142),(242,142),(131,143),(132,144),(135,145),(136,146),(137,147),(138,148),(139,149),(140,150),(141,151),(142,152),(144,153),(145,154),(146,155),(147,156),(148,157),(149,158),(152,159),(153,160),(154,161),(155,162),(156,163),(158,164),(159,165),(160,166),(161,167),(162,168),(163,169),(165,169),(214,169),(505,169),(518,169),(519,169),(531,169),(532,169),(630,169),(631,169),(641,169),(652,169),(664,169),(665,169),(164,170),(166,171),(167,172),(168,173),(169,174),(170,175),(171,176),(172,177),(173,178),(174,179),(175,180),(176,181),(177,182),(178,183),(180,184),(181,185),(182,186),(183,187),(185,188),(186,189),(187,190),(188,191),(189,192),(190,193),(191,194),(192,195),(193,196),(697,196),(698,196),(699,196),(194,197),(195,198),(196,199),(547,199),(548,199),(549,199),(197,200),(198,201),(199,202),(557,202),(200,203),(201,204),(202,205),(203,206),(204,207),(205,208),(206,209),(207,210),(208,211),(209,212),(210,213),(211,214),(212,215),(213,216),(598,216),(214,217),(521,217),(551,217),(552,217),(554,217),(610,217),(619,217),(215,218),(216,219),(557,219),(217,220),(218,221),(219,222),(220,223),(232,223),(641,223),(647,223),(648,223),(220,224),(221,225),(222,226),(223,227),(224,228),(225,229),(226,230),(226,231),(542,231),(546,231),(555,231),(641,231),(644,231),(647,231),(648,231),(667,231),(677,231),(226,232),(226,233),(226,234),(227,235),(228,236),(229,237),(230,238),(231,239),(233,240),(234,241),(235,242),(236,243),(237,244),(238,245),(239,246),(240,247),(240,248),(240,249),(240,250),(555,250),(240,251),(691,251),(240,252),(510,252),(516,252),(522,252),(610,252),(612,252),(615,252),(690,252),(241,253),(242,253),(573,253),(574,253),(642,253),(643,253),(690,253),(242,254),(242,255),(242,256),(242,257),(697,257),(698,257),(699,257),(242,258),(242,259),(243,260),(244,261),(245,262),(246,263),(247,264),(248,265),(249,266),(250,267),(251,268),(252,269),(253,270),(254,271),(255,272),(256,273),(257,274),(258,275),(258,276),(259,277),(260,278),(261,279),(262,280),(263,281),(264,282),(265,283),(266,284),(267,285),(268,286),(269,287),(270,288),(271,289),(638,289),(639,289),(272,290),(273,291),(641,291),(646,291),(274,292),(275,293),(276,294),(504,294),(515,294),(277,295),(502,295),(503,295),(513,295),(514,295),(520,295),(527,295),(528,295),(641,295),(649,295),(650,295),(278,296),(279,297),(280,298),(281,299),(282,300),(607,300),(283,301),(502,301),(503,301),(513,301),(514,301),(527,301),(528,301),(641,301),(649,301),(650,301),(284,302),(285,303),(286,304),(520,304),(582,304),(583,304),(610,304),(612,304),(614,304),(616,304),(617,304),(622,304),(656,304),(287,305),(288,306),(288,307),(289,308),(289,309),(290,310),(290,311),(291,312),(291,313),(292,314),(292,315),(293,316),(293,317),(294,318),(295,319),(295,320),(296,321),(296,322),(297,323),(297,324),(298,325),(298,326),(299,327),(299,328),(300,329),(300,330),(301,331),(301,332),(302,333),(303,334),(303,335),(304,336),(305,337),(306,338),(307,339),(308,340),(309,341),(310,342),(311,343),(312,344),(312,345),(313,346),(313,347),(314,348),(315,349),(316,350),(317,351),(318,352),(319,353),(320,354),(321,355),(322,356),(323,357),(324,358),(325,359),(326,360),(327,361),(328,362),(329,363),(330,364),(331,365),(332,366),(333,367),(334,368),(335,369),(335,370),(336,371),(337,372),(338,373),(339,374),(340,375),(341,376),(342,377),(343,378),(344,379),(345,380),(346,381),(347,382),(348,383),(349,384),(350,385),(351,386),(352,387),(353,388),(354,389),(355,390),(356,391),(357,392),(358,393),(359,394),(360,395),(361,396),(362,397),(363,398),(364,399),(365,400),(366,401),(367,402),(368,403),(369,404),(370,405),(371,406),(372,407),(373,408),(374,409),(375,410),(376,411),(377,412),(378,413),(379,414),(380,415),(381,416),(382,417),(383,418),(384,419),(385,420),(386,421),(387,422),(388,422),(387,423),(387,424),(388,425),(388,426),(388,427),(389,428),(390,429),(391,430),(392,431),(393,432),(393,433),(394,434),(395,435),(396,436),(397,437),(398,438),(399,439),(400,440),(401,441),(402,442),(403,443),(404,444),(405,445),(406,446),(407,447),(408,448),(409,449),(410,450),(411,451),(412,452),(413,453),(414,454),(415,455),(416,456),(417,457),(418,458),(419,459),(420,460),(420,461),(425,461),(426,461),(429,461),(430,461),(435,461),(544,461),(550,461),(555,461),(560,461),(421,462),(422,463),(423,464),(424,465),(425,465),(662,465),(687,465),(426,466),(555,466),(426,467),(510,467),(522,467),(542,467),(551,467),(552,467),(553,467),(555,467),(559,467),(610,467),(612,467),(426,468),(555,468),(697,468),(698,468),(699,468),(426,469),(426,470),(510,470),(542,470),(553,470),(555,470),(558,470),(559,470),(561,470),(426,471),(427,472),(428,473),(429,474),(430,475),(431,476),(432,477),(433,478),(434,479),(435,480),(436,481),(437,482),(438,483),(439,484),(440,485),(441,486),(442,487),(443,488),(444,489),(445,490),(446,491),(447,492),(448,493),(449,494),(450,495),(451,496),(452,497),(453,498),(454,499),(455,500),(456,501),(457,502),(458,503),(459,504),(460,505),(461,506),(462,507),(463,508),(464,509),(465,510),(466,511),(467,512),(468,513),(469,514),(470,515),(471,516),(472,517),(473,518),(474,519),(475,520),(476,521),(477,522),(478,523),(479,524),(480,525),(481,526),(482,527),(483,528),(484,529),(486,530),(487,531),(488,532),(489,533),(490,534),(491,535),(492,536),(493,537),(494,538),(495,539),(496,540),(497,541),(498,542),(499,543),(500,544),(501,545),(547,545),(554,545),(561,545),(502,546),(503,546),(510,546),(513,546),(514,546),(522,546),(502,547),(503,547),(510,547),(513,547),(514,547),(522,547),(502,548),(503,548),(562,548),(563,548),(564,548),(565,548),(571,548),(572,548),(502,549),(503,549),(545,549),(562,549),(563,549),(564,549),(565,549),(570,549),(571,549),(572,549),(690,549),(502,550),(503,550),(510,550),(513,550),(514,550),(522,550),(523,550),(547,550),(551,550),(552,550),(554,550),(555,550),(559,550),(562,550),(563,550),(564,550),(565,550),(576,550),(608,550),(609,550),(610,550),(618,550),(619,550),(620,550),(624,550),(637,550),(638,550),(639,550),(640,550),(641,550),(645,550),(504,551),(510,551),(515,551),(516,551),(522,551),(524,551),(610,551),(612,551),(504,552),(515,552),(504,553),(515,553),(504,554),(510,554),(515,554),(621,554),(622,554),(504,555),(515,555),(543,555),(600,555),(504,556),(510,556),(515,556),(621,556),(622,556),(504,557),(515,557),(529,557),(651,557),(504,558),(506,558),(515,558),(523,558),(557,558),(504,559),(515,559),(504,560),(510,560),(511,560),(539,560),(616,560),(504,561),(515,561),(504,562),(515,562),(581,562),(583,562),(585,562),(679,562),(681,562),(693,562),(506,563),(644,563),(688,563),(506,564),(577,564),(579,564),(580,564),(581,564),(582,564),(583,564),(584,564),(585,564),(677,564),(680,564),(681,564),(690,564),(506,565),(690,565),(506,566),(555,566),(577,566),(579,566),(580,566),(581,566),(582,566),(583,566),(584,566),(585,566),(602,566),(605,566),(606,566),(619,566),(624,566),(641,566),(677,566),(680,566),(681,566),(690,566),(697,566),(698,566),(699,566),(506,567),(522,567),(641,567),(506,568),(569,568),(506,569),(506,570),(573,570),(574,570),(575,570),(577,570),(642,570),(643,570),(668,570),(693,570),(506,571),(522,571),(523,571),(506,572),(506,573),(615,573),(506,574),(562,574),(563,574),(564,574),(565,574),(566,574),(567,574),(568,574),(572,574),(506,575),(507,576),(517,576),(524,576),(555,576),(621,576),(622,576),(623,576),(624,576),(507,577),(517,577),(524,577),(508,578),(518,578),(519,578),(531,578),(532,578),(641,578),(653,578),(672,578),(673,578),(509,579),(520,579),(509,580),(520,580),(533,580),(510,581),(510,582),(510,583),(625,583),(697,583),(698,583),(699,583),(510,584),(511,584),(522,584),(524,584),(510,585),(510,586),(522,586),(510,587),(577,587),(578,587),(579,587),(510,588),(522,588),(626,588),(510,589),(522,589),(627,589),(510,590),(510,591),(522,591),(551,591),(641,591),(647,591),(648,591),(510,592),(522,592),(510,593),(522,593),(691,593),(697,593),(698,593),(699,593),(510,594),(522,594),(510,595),(520,595),(522,595),(551,595),(510,596),(522,596),(510,597),(522,597),(510,598),(610,598),(510,599),(511,599),(527,599),(528,599),(529,599),(530,599),(531,599),(532,599),(533,599),(534,599),(535,599),(536,599),(537,599),(538,599),(588,599),(589,599),(610,599),(613,599),(614,599),(623,599),(631,599),(510,600),(511,600),(522,600),(524,600),(536,600),(641,600),(660,600),(690,600),(510,601),(510,602),(522,602),(545,602),(510,603),(520,603),(522,603),(523,603),(510,604),(516,604),(522,604),(510,605),(546,605),(551,605),(510,606),(522,606),(510,607),(516,607),(522,607),(510,608),(641,608),(667,608),(510,609),(522,609),(510,610),(555,610),(569,610),(570,610),(610,610),(612,610),(690,610),(510,611),(522,611),(510,612),(522,612),(510,613),(610,613),(510,614),(628,614),(510,615),(522,615),(510,616),(516,616),(522,616),(510,617),(522,617),(542,617),(547,617),(551,617),(554,617),(555,617),(557,617),(689,617),(692,617),(510,618),(510,619),(520,619),(582,619),(583,619),(610,619),(612,619),(619,619),(510,620),(510,621),(510,622),(510,623),(510,624),(629,624),(510,625),(522,625),(510,626),(516,626),(521,626),(534,626),(510,627),(522,627),(510,628),(522,628),(510,629),(522,629),(510,630),(511,630),(524,630),(536,630),(510,631),(622,631),(510,632),(553,632),(560,632),(510,633),(510,634),(626,634),(510,635),(516,635),(522,635),(511,636),(524,636),(511,637),(524,637),(511,638),(566,638),(567,638),(568,638),(573,638),(574,638),(577,638),(579,638),(619,638),(511,639),(524,639),(536,639),(606,639),(511,640),(524,640),(512,641),(526,641),(538,641),(513,642),(514,642),(515,642),(521,642),(527,642),(528,642),(529,642),(533,642),(534,642),(535,642),(538,642),(610,642),(611,642),(612,642),(613,642),(614,642),(617,642),(631,642),(694,642),(515,643),(515,644),(515,645),(515,646),(516,647),(520,648),(520,649),(520,650),(520,651),(520,652),(521,653),(521,654),(521,655),(521,656),(521,657),(534,657),(521,658),(534,658),(622,658),(522,659),(523,659),(522,660),(522,661),(523,661),(535,661),(538,661),(522,662),(522,663),(522,664),(551,664),(522,665),(523,665),(542,665),(522,666),(522,667),(522,668),(641,668),(647,668),(648,668),(674,668),(684,668),(522,669),(522,670),(522,671),(522,672),(522,673),(522,674),(522,675),(522,676),(522,677),(523,677),(615,677),(522,678),(522,679),(523,680),(535,680),(538,680),(523,681),(547,681),(555,681),(559,681),(524,682),(524,683),(524,684),(524,685),(524,686),(557,686),(701,686),(525,687),(537,687),(641,687),(535,688),(541,689),(542,690),(545,690),(553,690),(555,690),(558,690),(559,690),(561,690),(644,690),(677,690),(542,691),(547,691),(551,691),(552,691),(554,691),(559,691),(570,691),(542,692),(626,692),(629,692),(542,693),(557,693),(587,693),(666,693),(542,694),(545,694),(559,694),(647,694),(648,694),(667,694),(544,695),(550,695),(555,695),(560,695),(580,695),(581,695),(610,695),(615,695),(617,695),(618,695),(620,695),(689,695),(692,695),(544,696),(553,696),(620,696),(545,697),(601,697),(545,698),(606,698),(545,699),(545,700),(545,701),(604,701),(641,701),(669,701),(545,702),(547,703),(549,703),(554,703),(547,704),(547,705),(555,705),(547,706),(551,706),(552,706),(555,706),(557,706),(559,706),(617,706),(692,706),(547,707),(553,707),(554,707),(555,707),(692,707),(547,708),(561,708),(547,709),(548,709),(553,709),(554,709),(555,709),(697,709),(698,709),(699,709),(550,710),(553,710),(551,711),(552,711),(551,712),(551,713),(551,714),(641,714),(647,714),(648,714),(551,715),(552,715),(551,716),(552,716),(551,717),(692,717),(551,718),(552,718),(570,718),(625,718),(628,718),(629,718),(690,718),(551,719),(551,720),(551,721),(552,722),(610,722),(612,722),(552,723),(555,724),(557,724),(570,724),(610,724),(612,724),(615,724),(555,725),(555,726),(555,727),(555,728),(557,728),(555,729),(555,730),(555,731),(555,732),(555,733),(555,734),(555,735),(555,736),(555,737),(555,738),(557,738),(556,739),(557,740),(557,741),(621,741),(623,741),(557,742),(557,743),(557,744),(562,745),(563,745),(564,745),(565,745),(562,746),(563,746),(564,746),(565,746),(572,746),(590,746),(562,747),(563,747),(564,747),(565,747),(562,748),(563,748),(564,748),(565,748),(572,748),(562,749),(563,749),(564,749),(565,749),(572,749),(562,750),(563,750),(564,750),(565,750),(566,750),(567,750),(568,750),(572,750),(562,751),(563,751),(564,751),(565,751),(572,751),(562,752),(563,752),(564,752),(565,752),(572,752),(582,752),(583,752),(562,753),(563,753),(564,753),(565,753),(571,753),(562,754),(563,754),(564,754),(565,754),(562,755),(563,755),(564,755),(565,755),(570,755),(571,755),(572,755),(566,756),(567,756),(568,756),(569,757),(569,758),(570,758),(610,758),(612,758),(570,759),(641,759),(669,759),(684,759),(690,759),(571,760),(571,761),(637,761),(682,761),(686,761),(571,762),(571,763),(571,764),(571,765),(571,766),(637,766),(682,766),(686,766),(571,767),(572,768),(586,768),(588,768),(589,768),(572,769),(572,770),(573,771),(574,771),(573,772),(574,772),(641,772),(642,772),(643,772),(690,772),(573,773),(574,773),(575,774),(580,774),(581,774),(693,774),(694,774),(576,775),(577,776),(579,776),(577,777),(579,777),(577,778),(577,779),(577,780),(577,781),(577,782),(577,783),(577,784),(577,785),(577,786),(577,787),(577,788),(577,789),(577,790),(577,791),(577,792),(577,793),(577,794),(577,795),(577,796),(577,797),(577,798),(577,799),(577,800),(577,801),(579,801),(577,802),(579,802),(577,803),(579,803),(577,804),(579,804),(578,805),(578,806),(578,807),(578,808),(578,809),(578,810),(578,811),(578,812),(578,813),(579,813),(615,813),(579,814),(579,815),(579,816),(579,817),(579,818),(579,819),(579,820),(579,821),(579,822),(579,823),(579,824),(579,825),(579,826),(579,827),(579,828),(579,829),(579,830),(579,831),(579,832),(579,833),(579,834),(579,835),(579,836),(579,837),(580,838),(582,838),(584,838),(680,838),(693,838),(582,839),(583,839),(582,840),(583,840),(584,840),(585,840),(582,841),(583,841),(582,842),(583,842),(582,843),(583,843),(582,844),(583,844),(582,845),(583,845),(584,845),(585,845),(584,846),(585,846),(587,847),(615,847),(588,848),(589,848),(592,849),(602,849),(605,849),(606,849),(594,850),(595,851),(596,852),(597,853),(598,854),(599,855),(600,856),(602,857),(603,858),(605,859),(606,860),(606,861),(607,862),(608,862),(609,862),(607,863),(608,863),(609,863),(607,864),(608,864),(609,864),(607,865),(608,865),(609,865),(607,866),(608,866),(609,866),(607,867),(608,867),(609,867),(607,868),(608,868),(609,868),(607,869),(607,870),(607,871),(608,871),(609,871),(607,872),(608,872),(609,872),(607,873),(607,874),(607,875),(608,875),(609,875),(607,876),(608,876),(609,876),(607,877),(608,877),(609,877),(608,878),(608,879),(609,879),(609,880),(610,881),(612,881),(610,882),(612,882),(610,883),(610,884),(612,884),(610,885),(612,885),(619,885),(610,886),(612,886),(610,887),(610,888),(612,888),(610,889),(610,890),(612,890),(610,891),(610,892),(612,892),(610,893),(612,893),(610,894),(612,894),(610,895),(612,895),(610,896),(612,896),(610,897),(612,897),(610,898),(615,898),(618,898),(620,898),(610,899),(610,900),(612,900),(610,901),(612,901),(610,902),(612,902),(619,902),(610,903),(610,904),(612,904),(610,905),(619,905),(610,906),(612,906),(610,907),(611,907),(612,907),(613,907),(615,907),(618,907),(620,907),(610,908),(612,908),(610,909),(612,909),(610,910),(612,910),(610,911),(610,912),(612,912),(612,913),(612,914),(615,915),(615,916),(615,917),(615,918),(617,918),(615,919),(617,919),(615,920),(617,920),(671,920),(690,920),(615,921),(615,922),(696,922),(615,923),(615,924),(617,925),(617,926),(617,927),(621,928),(622,928),(623,928),(624,928),(621,929),(622,929),(621,930),(622,930),(625,931),(628,931),(629,931),(690,931),(626,932),(626,933),(629,934),(647,934),(648,934),(667,934),(684,934),(629,935),(630,936),(630,937),(630,938),(630,939),(632,940),(634,940),(632,941),(633,941),(633,942),(635,942),(641,942),(634,943),(635,943),(636,944),(637,945),(694,945),(637,946),(637,947),(640,948),(641,949),(658,949),(659,949),(641,950),(661,950),(641,951),(662,951),(641,952),(666,952),(641,953),(679,953),(690,953),(641,954),(641,955),(660,955),(641,956),(674,956),(641,957),(658,957),(659,957),(641,958),(642,958),(643,958),(644,958),(645,958),(646,958),(647,958),(648,958),(649,958),(650,958),(651,958),(652,958),(653,958),(654,958),(656,958),(658,958),(659,958),(660,958),(661,958),(662,958),(663,958),(664,958),(665,958),(666,958),(667,958),(668,958),(669,958),(670,958),(671,958),(672,958),(673,958),(674,958),(675,958),(676,958),(677,958),(678,958),(679,958),(680,958),(681,958),(682,958),(683,958),(684,958),(685,958),(686,958),(687,958),(641,959),(660,959),(665,959),(668,959),(673,959),(680,959),(681,959),(682,959),(683,959),(690,959),(641,960),(685,960),(641,961),(686,961),(641,962),(687,962),(644,963),(663,963),(677,963),(661,964),(664,965),(672,965),(670,966),(675,967),(676,968),(677,969),(678,970),(689,971),(692,971),(690,972),(690,973),(690,974),(690,975),(690,976),(690,977),(690,978),(691,979),(692,980),(695,981),(697,982),(698,982),(699,982),(697,983),(698,983),(699,983),(697,984),(698,984),(699,984),(697,985),(698,985),(699,985);
/*!40000 ALTER TABLE `help_relation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 14:02:46