-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: schema1
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `playerID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avatar` blob,
  `statistics` text,
  `points` int DEFAULT NULL,
  PRIMARY KEY (`playerID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'aaa','test',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0\n\Z\Z\Z\Z ,$+ %6%)/0333\Z\"9>92=,2@0;)$);;424202;;2228222222222244222222222242222222222222ÿÀ\0\0\Ù\0\è\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0C\0\n\0\0\0!1AQ\"2aqB‘#Rbr‚’¡±ÁSs¢$3c²³\ÑðCt“´\Âÿ\Ä\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0)\0\0\0\0\0\0\0\0!1A\"Q‘±Baq¡ð#ÿ\Ú\0\0\0?\0û4D@\0J\ç¦^’.†ü5–eiO6\ÆK·\ê(äŸˆHû,\n¥˜€ª	$ð\0$™ù·\Ó\ßI_WsYœ)\ÊÔ¿¡P>\ÏÕ½\ãôò€}òM\â\ïmº¤²\ÆsfÛ½£œ±%\\Ûœ:O¨\Ï\Ïÿ\0‘\í^\ßU\'‹i±~£c\ä¦~€€\"\"\0ˆˆ\" ˆ€\"\"\0ˆˆ\" ˆ€\"\"\0ˆˆ\" ˆ€\"\"Eü«xÏ©Ñš”\áµYF\Ç_Tlþ!\ì~üø?‡x]ú\ëöiÐ»u=•\é1<*\í>•\éÎ–\ßñV\Ò\Óì¦™\Ï(Šqc¿Ä’Ê¡{”2ó\à>	NŽ¡NvŽ¬Ç—±¿M\Ïsð\è;LÚJ\Å\Â\ìœ \äTýô\ì\Z%­q²ÆµÑ‚®Ú°h¸\àg\Ú\'#¯)õ©W\Õ¿\Ñÿ\0žÿ\0ý{¥¢y¥\É,¹‘I\Ò&\"&¢\" ˆ€\"\"\0ˆˆ\'‚À“€;ž&¾/§_zú—\çb\Þ¿ƒ¨ô¿C_¿ª¨|‚”¥ú+]k¯P…\Ü\íU9`2 øˆ€\"&+mTR\ÎÁUFIc€\0\îI€dœÚ¼j†¿\ì\Ë`kB3\í\0‘µJ«{XÛ¸\\®r3\Òj=¶jOªÓš\Û÷®¿õ7\ê\íkø\Õ+®\Ú\Ô)\ÑØŽ¡}•Ÿ\ÍÚ¼}\ßV\ìq\æ¢Væ®‰mueš\'s\È\ï\Â\'¨ˆ€\'‡`\'€O\ÈOsG\Ænž\æé¶§?‚{Àtˆ•z\Õ\\>¬MÕ™\í%À\'\ÉU‚\ÐbtHžtõl®´ý\n\Ñ…i’|þin›f\Ø*Š5J\î\Õi—ºlú*z¿\ëh–Y^\ÑW»Xü\Zú\Ú\ãûU,3¯¤U‰²?s&\"&’±ˆœ_ª’•+j,m¯Tÿ\0Ä°û~s\äŒ¤¢­„¬\ë\ÎN·\Ç\è­\Í{Í–ŽµR­u\Ã=\"P|[\ã4€ºÁþ\Ñ`û”J\×\à\\\áŸ\çì„>+]•¢Ö¿¢€(ùœu?1O]\ÄU—G}™Ïˆ\êý\Ý+Pý+\Üþ\nóü\ØN_\Ýbi®º\Í]Šj©\ßªT…‚¸\Èg÷±÷§G2ùZñ‘^tª}½I\Ü\Üô­›`}”«§&I¨¢RÆ£>Q‰\ê-\æ\Û\í°žNû]¿©šÊ œ‘™	‘+\çŽK`\09$ž€ó¨g:\Z4p£Ë¹þs\ê?“/EY\Ýu·µ§4«]±]û\0Ï“\ÓÁ\è\äÝ›f£\\6§¼•yüŸ¢½öõ=ð8?^U\0\0\0\àÀ\á\0õ4¼C^´€[–sµywo\ÑQýú§\Æ\ë–‰\ëÒ„\ßa8\ÈU\n;³p¨Š9f\' –4\ïs‹5 \0‡5ÓQg·Yg—\Ý^\Ù<\ÌuV\î\âÛ±\ëB(9JTðU\Þr=\ç\ï\Ð`Môiƒ&§s¨ô]u\Ë6wLvÖ®¬Ê¸*\Ã\à\Ãú\Èf\ÌÀ\Ï\ÚS,»y&¡fÇ\\^„\Ý\ï&\ê\Ûöªf­\â™ú\Ä\Óð\Ûvª²}\çK\Ôy-¨€øo®\Ãû\Ò\'O·\ÅH\Î\Õ3¿g‚qý+$hµÿ\0	¿ÿ\0\Êv&ŒT_OrK\Õb™B0iX}£0ju)Z±Ö´^¬\ä*ü²{ü&/\n\Õ-õ£¡.6&_B\ÅF@=Ïž8o\ìu\ï[\n†tVoh¦z\ì\Ï\nNH\ä\àN\Æ\å\'|7R\à\æøoˆ87Y^š\ë\rŽª¥€¥J\"*†\Â\Ò\Å\Èã¡o¶\êÏ©¬#iþ¡&l\æA›#™\Æ*+ÁK‚nÙƒÿ\0\èjZªúZºO\Æmþ•þieOøÀ\È\ÔÞ©Ë² ób~&B8# †¸ \ÄJ^³\"$ý(³kMã”»,\Õ;tK‘ªf>K¸\0ÿ\0ºL\É\âž)^TÙ–kmhƒu–?]¨½ø\É\' \0“4\\R¬)\ê¬)ùƒÁši\á\Õ\ÖÞ±\r·`ö™‚¦A(€’I c8Õ¯\ã•\ÉCž\Éqv£Czº\ÈâŠ˜Œüm±p\Í\Ó\ÝB’\éµZPU\èª¨ùÀžEƒ\ÎNñ\æ&,™g7m—F\n=ó\'3ñ\æ$=Ê£$\àyœ*þ&WDlÀX\à($žÀIŸ}(ñs«\Õ[y\Î\Öl \ÎBÖž\Ê(òù“>Á\é0\Õkª:_L­¾\Í×±)B§zÕˆË“\ÆJ‚1ó\ã\'£?’­.Ÿª?k°s†i_’gŸ™?A:º<.	\Ê^L\Ùgn‘òoEý\Õk›ó\ípV•óö¾ñýU\Éó\Äûg¡þ€i´ X@\Ôj;\Ø\ã…øV½|zŸ9o­€ª€0\0\0€\Âd›ŠDˆœÿ\0ñBgi±\Ü\í­\ìs\ÑFx¹cÀ\0“<m%lñ¡FAgs¶¤_~\Ç\Æv \0$“À\0“Àœ>”\ï7\ÜE—0\Ú÷*CÏª¨v\Æ[«3À\04´°&Ë˜=\Î0\ì¾\â/_UVy~¬FO`6³9:SŸ¶=~MXñW,œ\Ï`\à|\æ\ë3]´d/\ÄðDf3\r¶(\Ö\Òû\Z\Ú\Ïø\Ô:N,_ú¯øD[„³N\ç\î\Üü­V@?ˆ¬‰\×\Òdÿ\0’2d\\–ˆˆ›\nÈ•ûµ/©}¨v\éÔ•b=û\ØpQOÝ¬s“Õº\0wcô\Ó\ÄÖªX•RŒö²ð\ËJ\ãxS‘‡rUž¯ž\Ó\ç>\é^–ý;zÁ»_m‚½5jŽV…Ü¢¡Kµpˆ;‰9\âQ’\åj.¾Y(\Ò\åŸWD\n\0\0\0\0\0 ;I3Y1-¡½\Ò8>G\ç1\äK£J‰•Ÿ§R\Z\Æ÷QK·ždÿ\0I&x²°\Ê\È\Ã*\à©`Œ\ë*y%´ z/\éî“S~¼\\\Î\Û+e\ßù‚\Êj\Ò\Ý\æNOiQüœx»Õ¬UC²M†¶¯,\ê¡÷2•\Ï\ÞRn\î3™—\Åÿ\0\'úšl+]©¯>Å•m\'nxWRAV\è{pô7Ð³C¥ú„TjÁõU†\Ê\ì0l±‡³¸@PH\É>]<™qzTº®š*[‹\Î$8\âj\êüVŠ‰ZˆGPNX|\Âä¬Èš”tŽ®Œ2¬Œ|\à\ÎF\×Ù²\Ì.?ðô\Ï\Ç\á54W½€…¦\ÃegeŠ6\ìGÀ$b7)@\ä7ÄšQ}v\ç\ÚV›|cŠlþ2Ÿ\'„Ñ‚1””e\ä†G$­5øN¢Á\í2iAp®ú3‹ü-7´\ÞBÌ¦\ç\ë¾\âml\ã¸O’€>¯­P‡H\É)\Ê]°˜‰i55úÄ¦¶²Ã…_ Y‰<P9f\'€$˜~¹i]\ÍÜ…U³¹\èŠ;“\Ï\Ð\ÐNa‹µ¶\Ö?kZvª¿‡r\ÝXŸ \0Æ…\ìo]p\ÛaD\àú„=PÁs\Æ\æXsNN«Q»\Û¿&¬X\ë–f\ß$<Á\'3™÷@3i\ë1@\Êõ1«E·*.\ç`‹\Ó\'\Ï\È¤ü1DM_\Z8¤·z\ìªÁñ)mg^’fu\Ð>¤b\Å4\Ò\ØÊ·X\Î\î\Ô\àq\ïc®\Ó&t°\é\æ£ÉšsM–H‰¢R|ó\Óº\Ý6£\Õ\r\ìnUE¯Nøeœn.,>Gh•¯@}\nzµi½\n\n³ê…€+»°\Æò¿uT×©?	\Öð\r]´VŽö=•–uµ_ÿ\0Lz\ÇQec\Î\Ó\ï\ãq\ê9º=`‚`ƒÊ{|D\ä\æ\Ï8\\|6jôª¬õ°Ž\Æi\é\î\ÓÖ»kzQA\'Õª\ç¹\àõš\Z\ÏE´öVõ\â\Ô¬«ù\ëŠ!a€Ê…\ÊðpqŒq>{ö%_bÊ«WOa­8eöHt\ã#\ç!ƒr\Ú\Ýý·gÒµ~?¦¬Ö«‘÷k\"\Ë\ÉVOj\Þú\Í\ìp¶±õi\Ç\æ\Ñ	]¬~ó’	nÃ€3ŒŸœ¢…Py(\n?.ž‚\êQexÁ¦\×÷´0ø{d}³>•b…§c\Ê,³“ãš¶]•!\Ú\Ö\î,Àá’¥Àf_\Ö$ª-\Äö\\Ê·¤7\í\Õ*÷j	_°\ç\æ\É2aÈ»T¦“\"´\n0 (òù\Ì\Ððû\ÍW¦\Þ+½ý]Š8P\î=‹qØ†O˜€™S•\ÇC5”e\ê\\à½µ¨=NC‡þˆf·\Êvt2Á8;ð[Ážu-ˆÕ¾vØ¥N8 \àö#‚˜\ÓõÏœ2#šv<X\ÖÒ¥ÿ\0\Þ&k³ö\Ð\ícõ\Æ~³§+>w«Ô•ûš¥\Ü08[ª\0>~/^\Â?\Ëif¼S\ß\ÌŽ\×D\ÄD´‰Ž\Ç\n1\0’O\0\ÔÊ˜Ô¶¥½sŒ\"“öt=—§\ÚõÛ£\î®;“;þ7¤7i\í¨u±@=	Çº~¡ø_\ÒjE•­Š0r?E”\ízÏ‘V~“²rŒR]2\ì1Mògˆ\Ý#3–k&$Iž%~§R•®ûjôfnÈŠ9w=”L\Ø\Ñø]—×ƒMMÒ°qm‹ÿ\0‡¸ÂžÜž\Ò\ìX%‘ñ÷+žE\ÌT\Ø\Öºp, \\\ç\Ô!\Ì9r9öW¸Á+:ú	ZÈ±Éº\ÐõŒ³ž«ZŽx\è>¤\ÍúiTP¨¡@TP@\0\à	–u1iã®þL²›‘14\0ù¿ˆ\é½M·\Ô\Ý\ZÇµ>){aôs`ùbtýÔ—Óª¹\ÜÔ³T\ÄòN\Ìlcñ(Pþ3©\éO„\Ð=Xõµd¨<-Š}\ê˜ö\Î±\0ô\ÎjÞ‰\ØKjUg©F\àU…ˆ„X¤\ë”\ã9º¼t›:1\Ë\âKõ.>…ºQ=1ðó]\Â\å›\Ô\á\\¹rŒ)?P|\Ó\å¿yó˜5u-µµve‘\ÆAø#À\àƒØ‰GŠIhùÖš¶°¹\n‡i+\Ë;ª½‚ƒÁ=I\Èr\Û\èmb¿´.Ò»š¶\îrJ8\ÎIýY£UF‚§®\ÇD\ám©\à\ã$ƒ`@Yžr0I\È>]­¶½Œ¬ž¹”ª¸+`­½O*I.pyÁ£ª\Éa\áö{\Å#­e¤ô\âq¼wFö*½cs\ÒK$X¬0Õ‚z7F\\ñ¹\0=r:¦@™µ\Ú$›N\ÑI:\Ú\ÇÆ²8+bµož˜\ÚÃŸ¦D\ìø?‡±u¹Ô ¬V¬0Å˜m6yP\ç\Ú\'Œ\Ø7\ÉeµIOQ)\Çk<™\Þ\Þý‡S\Ø|I\í0W}lp–#‘\Ù˜Ree\'^\à»\Ðe\êaj2™%~ª]z[t×­ˆ–!Ü¶*º‘Ð«\0Aü­/_Œ\Úôr\í…ô\Ìx\\\ÙVO>©\É%?q‰_\Ù\Ù7\è²r\àÿ\0“6xþ¢\Å¢g\"V<KN*\Ô\0\Õrp1‹\Ð`’]\0:þ2\Ï9\Þ7\áþ¾—¬¬y­º\ì±}¤£*\Ë8´J\Ú\ì\â÷#\ÊcW\É?M°º\ïe\Ø\ÇÙ±Z\ì_e\ë?\"\ÓlÔ­hKŽ€³ÁUG,ÄŽIœ]Ž\è\Û~NŠ\Ìu´•\Ó(~\Æ\ÇÏ¨O>G60ý\ãÍ„\Ø\Òx3\Ü\Ôfº\Î©ÿ\0\ç2öýE8\ìÅ‡È•…T\0`\00\0ò´Ý‡G\æbŒ™|D\æxƒ%DX\Ä\Ýn1\ë†z„„_‚ýs:\Ñ ’J‘»&\"\' DD\"ik¼NšJ‹­J·\çnö:ò~cñšzH*\ÜRÚ—\0´\á‚\ç¦÷\Î\ÄÏ‘ \ÏK–\Ì\áøŸ„\äµ\Ôa]€,®J\Õf;¾\Ø\Ø\ãx\é@˜\í·W`>\Úiôõ`]wñ8Ø§÷ZkŸ¬œ\Ø_PÇ©ºÆ°}Š\×\è¢dË©\ÅTù-„%v-/ˆWc²¶\Ä÷\ëb¥‡C•*Jºò9Só\ÄÚ™n\ÐVÁ\0³[¬ U(GŒ`©*Gp\Æ{²Ÿ/\Âr\å(·Á¦7\äÀ­\n\É\ÂdD˜\ÍOÔµj‚°eÖ­u­ŽQ0f%Š‚pI\à\Ók3ˆõõJ\Ö8«\ìO½+\ÚZ\ÛAx9\Ú+l	Á ’$\à“vü›\ãƒ]ü.\Ë]nÔ£»\ÐËŠm\Úi·u­]hJ\ãdœ’œõQ©¯\Ö\ì\Ô\ÑEÜ›ªÊ¨l‡j´\ãh°\ï¬\í¹\íÉ‹-\Ú2rv\àu\É<õ˜¼B°õº7!Xó°³\'#\ã9\ë-õTúýŠ\Ü+“º\Ô/Lcqý&‡\Þtôý©Ag\ÓpWVeG¯÷•¾„)\í:\Ìy?9¯¬\Ó-µY[ð¶#!=À`F\áñ\Ï\Òg\Ç7\'ðJJ\ãGoK¨[]U€#þ\Ç\È\Ìó\çÞŠø\Ã\énû¯\ÙõŒ}[…6~©\èQðXy6\àz‰ôß„”•£T\èDòN9<*1\éZ\rzG(‡†\Ô\0	#¸ þ¹Gl‘\ÂRQVÂ‹n‘¯\ã[WYb\ÖCX\á~å‹„\Ãü]v‘þYóšz•.…U¶?\r[~ŠC#†\à3ð\Ì\ÃRPˆ0£\âX“Ü³Yry3\×\'\ÎËœ·Or\à\×Q¦^|Ä†¦„´\r¥†OT±N\×CñúN„¨ú\ìZýž\Õ,Áƒ}\ß]\ÊÚ¨z0öT’>ñinH;ŠfI*tLDIˆ€\"\"O\Õ_c\Ú\ì½,\Ê*T\È\Ø\à®\Û\\Ÿh0\nÀŒŽø\×\Ó\ê\êR\ãx\ÙZ5Š\ÅX-c\Ú\ÆAö˜ã¸ž5Pº\\õ‹\Í\ëE¥\Ë`\á°P€¸Û’\0\Æ\Ú\ÑøpVõ»FöÜ½\Çl‘\Ã}gS\'ºWô5A*Tm\îóž§’!f2\Ó\ÔDð,Šg\ÚPŽ\à6p~^\Éü @z\ÌOA\í\ÌØ‰\íƒH©D‰»  ò‹=³Ni\ÞBj)±€*Áô\ä\ÃaVCž 3&\Ï,¸\Ì\ëz±\å1j´U\Ù[\Ö\ã*\ãk`|ÁR9\Ä%S#.Q\Ïño\Þ\ÖÁZ»\Ä\rœer\nœv*\Ì>\ÌÈ”×Ÿ\é64\ÉfÂ–\ì˜\Ú\ã\Ö\Ì\Ë÷_ô‡Lò:\àDn}¯’k³ú\ÍÉ¢D\ÝY\ZšV\Äjß”q‚?ý\">`MŸ\×3†ª\Óù\êWòu>\å\Ëú®¼ü0\í1\ÍWRºŠF\ëh•\àzÚº½\\÷Ç´§³Ø™«I›d©ôÊ²\ÂÕ£›\é-ö[c\Óp\ÛRŠ\Æqj\à~r\Ã÷“9:q\Îx\Ç??ùý¥¿S§§_§K*~£}6/U$yw¡S\ÖT,VVd±vXœ²u€\è~òp~‡‘5\ê#+¿‚8äªƒ\ØeŽ8\ÄþŠ¨\å›\à9Ÿôu\íöõ \×Y\éP?œqÿ\0‡º:û\nOÄœ9þ	­®›…Ž¥€.ó\ËRx\0$b\ï#‚x\'B“ÁŽ-n\ìŽI´\è\ÇMJŠ\"¨\0*€@\è\02\ÄMe\"\" ˆ€\"\"¥¨ð\êl`öU]Ž¼tW`<#\"j?£ºRrµ\n%´\ç>d\ÖW?YØ‘<i>ÁÅ³ÁW©¹1Ù½]£ýhOó˜\ìð½P÷/©¿Ì¤\çýò\è•<\ßiS’òpI«Ý¢\ÃûVV?£NV¡5)©ª\ÛjT­ƒP\å-õŠ}aV¬UHÃ®3úò\é9\Þ;¦6i\ìU8m¥õÃ¯´§ñU-&:t¹%\ê?&¬L:]@²´±zXŠ\ã\ä\êû\ÌÓÑ¨D‰0z\"$f\r<2\×ñ™òD\ÂV\ÏY\ìÀ‰N\àò\äx2$Á¡\èn±´\Z\á÷\åR\Þ*-\Â\ï^!\Î\Ëg•qƒ\ïK¤¾]•owZœ²\\\Ä¯=C’Fkl\0Ëž~`\ÉñªÃ€\ÆGºž¡Ç‘ô”}F¾\ëûMc\ÖÌŒ\Ô\à\íE\ár0\Ý\Î¬\ëcÔ©CÜ¹3¼Ow}©›w³°>w ;”YI\Ù=G ò%¯Ð¿HŠ•\Ò\Þ\ÙSMŒyü=ÿ\0U»ô<šˆRX(º*‚\Î~!G8ø\Ë‡Ð­E\ãó„iQº“\íß\ÕPv\Ö{†%ˆ qwn´¸\'“mS>Ÿ5\íU\\–\Ú\0\Ë±À\ÆI\îfY¸\Ê\"\"\0ˆˆ\" ˆ€\"\"\0ˆˆOÀø«\Õÿ\0m\Ôý+±\Õ?Ñ²t&-8Åº¥\Æ1p?\ÇE$Ÿ\Çt\ÊÓƒž57_&\Ìn\âˆ3\Îg¹JI ˆ\ÌA“<À0	Ä˜ˆ’\"zž[ŽL—\âM–\ÈJGŒÑ³T\ár¢\äK\Î\Ý\Ì«t\rƒ·!\ÚŒ\æ\\/}\ÌL¯xÎŠ\Ëu4-H\\š¯\ÈR££TG¼G™üf¼	\Ý/÷“\Éu\ÉzôN\Í+Õ»IZ×f\ÅÀõª\à{¶¬ß¬I\ÈÁ\ÉÌ°J£^Ž\ë*\Ô%§e=›¾÷±0p›Tmbm\Ùðs/ó¯\Ú\åQŽI\'Á1$DDDD@\0DD\nëº»—>ýt\Ø\Äˆú*L\Ìf?¯\Õ\ÙV§T\rU‡ôRÂ¤X~\Õs\äžÐ¶\Þqõ‘©ÿ\0&¬N\Ñ\ï2g‰Š\ÍJ¯S2QižAYË·\Äû¼Mv½\Þ3\ÕÜ‰\Å[Ÿ±3\"\ëwž\ì`\ëƒ=NG\Û\ß\á<¶±\Ï|O60užÀ½L\æ\êµ[¸^“QÜž§0’…fßW»V‡ü:]¿ù\Ó3Rt}«uú‹9\Â\n\è\Ï,»¬|y€mUÏšŸ)¯J¯\"+\Êý¥®\"\'T\È\"\"\0ˆˆ\" ˆ€\"\"\0ˆˆ\" \ÝF<‚Pe?\Ä<2\Í1%[Om€µ´Ž»Xl¬v#\ÚÈ¹Ä¯&8\ÍS%8»E­Qu\Ý[ú\Ä=\åüGCð‘ü\å—]\è\æš\Ö.k\Ø\ä\ä½L\Ô\ØO›2[\ë™óû4§&›.½˜=ˆH±Õ›Õ¾9eÁ\0‚§\èg?&›g7Á¢7MVªºð°\Í\î \ís‚pˆ¹f<‚tt~©¸nvû\ZaT%š¢>,\ÙJ\ÏÀù\ÎW¡uTšªÚ¤\ë\àÍŒ»•(ö9bAV\êg\Ò%ø0A«|•\ä\È\î‘Â¯ÑŠ\0ö¶\ì\×Z	ú+@&+ýš¯¶¿%r·\×õßƒ	b‰¥\ã‹ð¾\Å{\åòSu>¨¯­kp\ìi8oªXxú1œ\Ö\ÕÖ­±\ÜV\Ù\Æ\ÛsSŸ³ù‰ôIŠ\ê•Ô«¨un`Hò õ”OI\×\Öi.\ÊB¡<€Hó\ÄHa·\Þös\Ó<g\à3\ÖY›Ñ­é¦©aË‰Gñ\r«Kª¼ŠÂ‚«r6…B:©$ž·bø’‰\é\\U\Ùlr\îuF]Oˆ\ã\"±¼§,\çŠ\Ð¿¶Àd…\\‘/þ¦J\ëD¯\Ý9\îÄ\ÅÏ™$’O™Ÿ9.*}``¾D\É\Ï\Ò_}\Ôú\Í-.z\ì\nß´ž\Ã52\Ý\"J\Êò\ßV\"&Ò‘D@\0DDD@\0DD%?\ÒO±nMU›€ukkRà©­\Ùá²¤3œ¢ã¼¸DŒà¤©ž§L¥z3@}K5aZªY\Ù\\q†¹WuO!Õ•˜çµ‹\Þ]g„\ïó3ÜŽ8(Æ“¶LDKD@\"pý\"ð£r«Öª\ÖUœ+ð¶£pô–û»€np@83¹\ÉEIS=NœR©W\Õß¥!\ë[F\×aYÂž}\íÕ’ŒW =q.ž¦j\èUuÛ¬b †Û¾\Çp¹U¿)žÿ\0‡\ïþS/†S‡ƒtJrmò\" ˆ€\"\"\0ˆˆÿ\Ù',NULL,NULL),(2,'bbb','bbb',NULL,NULL,NULL),(3,'ccc','ccc',NULL,NULL,NULL),(4,'abcde','abcde',NULL,NULL,NULL);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-04 19:10:47
