INSERT INTO tag (name,creation_date,id) VALUES ('C#','2021-05-07 12:20:30',1),('php','2021-12-04 04:32:15',2),('Programming','2020-08-08 10:48:13',3),('Chemestry','2020-12-19 15:16:44',4),('Economy','2021-10-26 07:34:56',5),('MNUM','2020-12-01 01:01:18',6),('Numerical Methods','2020-03-30 22:08:52',7),('SQL','2021-04-19 07:32:59',8),('LBAW','2021-06-06 01:55:09',9),('Ponte','2022-01-26 21:15:05',10);
INSERT INTO tag (name,creation_date,id) VALUES ('Technical_Draw','2021-11-02 14:45:30',11),('AMAT','2021-01-05 20:09:23',12),('Molecules','2020-06-24 02:41:29',13),('Biology','2020-12-02 07:17:17',14),('Genetics','2020-04-16 19:23:16',15),('Natural_Evolution','2021-11-01 02:36:56',16),('IART','2021-08-30 00:24:23',17),('Artificial_Itelligence','2021-09-09 14:38:57',18),('MIPS','2020-06-24 01:06:53',19),('COMP','2020-07-20 07:49:07',20);
INSERT INTO tag (name,creation_date,id) VALUES ('Assembly','2022-02-19 23:43:43',21),('Compiler','2020-10-02 06:16:12',22),('C++','2021-10-08 13:37:34',23),('Python','2021-03-10 09:07:14',24),('Statistics','2020-09-15 07:40:39',25),('TCOM','2020-07-08 04:42:47',26),('Operational_System','2021-02-25 03:01:10',27),('SOPE','2022-03-25 21:14:48',28),('RCOM','2020-10-21 22:30:42',29),('DataScience','2020-07-11 09:18:16',30);

INSERT INTO course (id,creation_date,name) VALUES (1,'2021-03-23 15:42:42','MIEA');
INSERT INTO course (id,creation_date,name) VALUES (2,'2021-04-21 10:58:18','MIEC');
INSERT INTO course (id,creation_date,name) VALUES (3,'2021-12-04 04:32:15','MIEGI');
INSERT INTO course (id,creation_date,name) VALUES (4,'2021-10-21 06:33:37','MIEB');
INSERT INTO course (id,creation_date,name) VALUES (5,'2021-03-23 15:42:42','MIEEC');
INSERT INTO course (id,creation_date,name) VALUES (6,'2021-10-08 13:37:34','MIEF');
INSERT INTO course (id,creation_date,name) VALUES (7,'2020-07-21 05:04:27','MIEIC');
INSERT INTO course (id,creation_date,name) VALUES (8,'2022-02-19 23:43:43','MIEM');
INSERT INTO course (id,creation_date,name) VALUES (9,'2021-11-02 14:45:30','MIEMM');
INSERT INTO course (id,creation_date,name) VALUES (10,'2021-04-08 17:08:50','MIEQ');
INSERT INTO course (id,creation_date,name) VALUES (11,'2021-04-23 15:42:42','LCEEMG'); 
INSERT INTO course (id,creation_date,name) VALUES (12,'2021-07-23 15:42:42','MMC');

-- Missing description and image
INSERT INTO "user" (id,username,email,birthday,name,signup_date,course_id,ban,user_role,password) VALUES (1,'Galloway','Suspendisse.non@semper.net','1993-10-02','Hamilton','2010-01-14 22:33:13',5,'True','RegisteredUser','038c2957518fd7e81eb41d43ffbf711d56b7d51dd120edac6ded7e701b01fe5f'),(2,'Mccullough','dolor@ante.net','2008-08-25','Shaine','2005-05-16 13:44:34',9,'True','RegisteredUser','3c8034beeaeebc5935927efde161dcbefd5067de918371ad4f30d5e9b35f04b0'),(3,'Buckner','orci.consectetuer@feugiattellus.com','1994-05-03','Savannah','1999-07-12 22:18:05',5,'True','RegisteredUser','98958388cbe24427b4d1a13e18bbb3c6ae1332ec16124dff8adb75bb2f64f817'),(4,'Hunter','interdum.Sed.auctor@idblandit.com','1997-08-20','Finn','2015-12-01 15:33:21',5,'False','RegisteredUser','063786f3a9f96de8c663f693fb23a7ca227c98a240b105c7456695e5f7dcc1aa'),(5,'Reese','feugiat.placerat@ipsumPhasellus.ca','2005-09-16','Ryan','1998-03-31 00:20:29',9,'False','RegisteredUser','bdacf3698f77a835c8a9a42f5d625ae75c6ba336e6a829215b45aba6862b845d'),(6,'Hancock','Nullam.feugiat.placerat@Suspendissealiquetmolestie.org','1997-02-02','Rigel','2011-02-08 11:29:05',10,'True','RegisteredUser','a4b6bc2cf4cee2792057fa0d922f6ff15fd7145d97a42daefa29bd26befc12cb'),(7,'Webb','non@velquamdignissim.co.uk','2005-12-02','Oliver','2019-05-18 03:30:03',6,'False','RegisteredUser','eb6d53863479ff0d42e9af78a6c4e1f9b7f97b7b7bf58d75f8eb8775de49ab49'),(8,'Cervantes','quis.arcu.vel@vitaevelitegestas.net','2002-03-26','Kuame','2020-04-08 01:12:27',5,'True','RegisteredUser','84c252d6c6774c4408efe15f8797f2390e705861a3a5e1f3a8a526ef90cdbdcd'),(9,'Sanders','conubia@et.org','2009-02-27','Pandora','2003-12-07 12:34:34',6,'True','RegisteredUser','b85690981cdd8a8f8bb382e417515a7438cf48afbb0689cb042bc6a5144d115b'),(10,'Vang','ipsum@porta.org','1993-11-15','Marcia','2014-04-17 15:54:32',5,'True','RegisteredUser','93ed6567f73b41ef012ac3616d15ba0e905e09f5e1f8f4565686f80f9ca13d01');
INSERT INTO "user" (id,username,email,birthday,name,signup_date,course_id,ban,user_role,password) VALUES (11,'Villarreal','pede.blandit.congue@amet.org','2009-06-19','Hall','2009-11-04 21:14:48',10,'False','Moderator','49a26d461fee9780a0e17182ca2e7d1ad8c3e5d54d27a72572d757b9c934ee1c'),(12,'Hensley','Phasellus@orci.net','2001-02-26','Russell','2014-12-09 10:57:32',11,'False','Moderator','2748fcf240ec0672b7093d93972e0bd2fae9903a89f93891909b5c003ccec254'),(13,'Rosa','natoque.penatibus@enim.com','2007-06-13','Myra','2020-05-19 08:02:50',2,'False','Moderator','f11797a7441dc56b95b0b1338ecb54362db08d09b56eb238eb13821a62495655'),(14,'Bell','congue@magnaaneque.edu','2005-03-24','Rudyard','1999-02-01 09:03:02',12,'False','Moderator','e30cb18cddb48a5b1bd3eb10ebc1944add244febf0f28ddfa98ae301b72bbea6'),(15,'Roy','magna@sagittisDuisgravida.org','2006-06-23','Fay','2015-11-18 17:24:05',6,'True','Moderator','769122b0f4cda4614ad981ec1412597ced1ba5bbc596d41736969f6db4c0a143'),(16,'Briggs','Pellentesque.tincidunt@ametdapibus.com','1995-06-04','Gareth','2018-03-15 17:13:55',10,'False','Moderator','7c8cd8afdf86143a754e7b1948af9f7c4770f90ec1e729e429489fa6d8b4909a'),(17,'Hubbard','consequat.purus.Maecenas@velconvallis.edu','1999-03-26','Eleanor','2019-07-11 01:29:45',2,'True','Moderator','5e488d564bc955f202af9fe9a4173c3debbf9daf47b4b3b870f0aa6506ea5a9a'),(18,'Silva','nisi.dictum@arcu.net','1995-11-13','Oren','2000-02-24 11:16:01',11,'False','Moderator','716ce37adb1c103426aff945835be637647821592ad3fcd38ac19c02c386d361'),(19,'Fox','penatibus.et.magnis@eteuismodet.net','2004-08-16','Keelie','2004-08-18 00:22:21',6,'True','Moderator','50b3a173de40418edaf15fa2fae0507e842439c4dfab1dceee6cd5b5d80902eb'),(20,'Emerson','Etiam@montesnascetur.edu','2002-11-28','Virginia','2000-03-28 15:45:35',9,'True','Moderator','b99f96fe25abba207a927e7fbbb5381a6b5a47e7bfee90e7a45680b4acda1e10');
INSERT INTO "user" (id,username,email,birthday,name,signup_date,course_id,ban,user_role,password) VALUES (21,'Wise','Donec.fringilla@sodales.ca','1993-09-03','Echo','2010-04-13 15:52:23',8,'False','Administrator','f0265d271313eeea0065c2c49748fabcff23bdd196c6bb43ac74990378773516'),(22,'Rice','vulputate@lacusUt.edu','2001-09-07','Samantha','2004-07-09 19:04:00',1,'False','Administrator','d6572c626a95c5ec03a3ca66c1975d6ca4576943957efaea2419215f8b8be25d'),(23,'Ryan','velit.Sed.malesuada@mi.net','2008-08-25','Molly','2015-10-17 20:35:03',4,'True','Administrator','5712992e1fcc7b482e1288faf03673c52d21a1160a7a49fa322692406aec9557'),(24,'Hooper','quis.urna.Nunc@sagittisNullamvitae.com','1994-11-13','Scarlett','2013-01-08 19:18:51',12,'False','Administrator','c4ccc33e32487b4ccb3b0589588bb2d73005d5b6d1bbb50ee9482e38c21a2ae2'),(25,'Lara','fringilla.Donec.feugiat@felisullamcorperviverra.net','2000-04-21','Camden','2015-09-24 00:15:08',12,'False','Administrator','f47e69630d3129295372ca4d43cc15d24e74448a1985a7f53bea365a3d77ae86'),(26,'Salas','nunc.ac.mattis@molestie.org','1998-02-28','Inga','2007-05-11 14:59:31',12,'True','Administrator','127cd4e86c05c9086171522536a4817b1606def2a2de8072659f294e12538a50'),(27,'Wong','nec.ante@sitamet.com','2003-08-05','Perry','2000-05-01 01:08:35',5,'True','Administrator','f4cc111295414a0a3bf277fda75cbbb6bd4a365417fdb0e53178290b9654cfc3'),(28,'Boyd','blandit.at.nisi@ligula.edu','1997-03-08','Ariana','2021-01-21 06:00:11',12,'True','Administrator','55fbeeba4316f5bd2058a0453aaee7af8c6886ee7f528c5463f5f4543f6aaa15'),(29,'Buck','Duis.gravida@arcuet.org','2010-01-29','Ivy','2005-06-14 05:41:38',3,'False','Administrator','f11797a7441dc56b95b0b1338ecb54362db08d09b56eb238eb13821a62495655'),(30,'Hartman','Donec.felis@pellentesquemassalobortis.org','2002-08-06','Imogene','2004-02-08 07:02:05',6,'True','Administrator','c7dcfde0dc2218cf33306aca0e32aa4be0ae660fb48536e2ba790c25ebb6f2e1');
INSERT INTO "user" (id,username,email,birthday,name,signup_date,course_id,ban,user_role,password) VALUES (31,'Potts','Integer@Nam.ca','2005-01-16','Rebekah','1999-04-17 13:18:56',1,'True','RegisteredUser','55fbeeba4316f5bd2058a0453aaee7af8c6886ee7f528c5463f5f4543f6aaa15'),(32,'Moon','et.netus.et@faucibusorciluctus.com','2003-11-14','Nero','2011-05-26 13:23:44',1,'True','RegisteredUser','b7274c79be38bb9abb516f3a790d1777697e56356cf546980de98ec10f6ff09e'),(33,'Moran','commodo.auctor@nuncsedlibero.edu','2000-04-25','Stella','2007-01-15 21:44:30',12,'True','RegisteredUser','49d3d27eb7f2537095900bbf8bfedc081bd22395324d0b6b17dc0dab63f72b55'),(34,'Monroe','vitae.velit.egestas@Pellentesquehabitantmorbi.com','2002-07-27','Drake','2014-06-08 13:37:44',4,'False','RegisteredUser','5712992e1fcc7b482e1288faf03673c52d21a1160a7a49fa322692406aec9557'),(35,'Farmer','In@egetlaoreet.ca','1999-05-23','Gloria','1998-01-17 12:31:39',11,'True','RegisteredUser','d07f0927317b4a7598b5e51a713393a4aefbad84cc041ba66e5ad14d8e5f4784'),(36,'Pennington','rutrum.eu.ultrices@in.edu','2001-01-20','Veda','2001-09-02 23:13:31',10,'False','RegisteredUser','ee052f4cc27790521c5038f96100c1667392a42de4a0a273acd1052a41af0652'),(37,'Pitts','habitant.morbi.tristique@Duiselementum.com','2007-03-02','Quyn','1999-01-03 05:46:31',12,'False','RegisteredUser','1f1580ecbb6c1123012ebb06ce070ee6fcd41683d4c99db1cefe9b0af60fe388'),(38,'Hendricks','sagittis.augue.eu@vehicularisus.ca','2004-07-22','Davis','2007-03-12 23:21:37',6,'True','RegisteredUser','d0916d477323bf7dee30205ca3fb09258366826b30ce7dbff61d1f45c774754b'),(39,'Goodwin','ut.aliquam@auctorodio.net','1998-03-10','Quinn','2001-11-24 12:12:36',12,'True','RegisteredUser','8b2dce67271913de65e103d1a2f55b053359f8dfcb2bcf60dd47b6af13d95a5d'),(40,'Wood','Integer@metusurna.ca','2005-03-08','September','2008-08-21 15:45:30',9,'False','RegisteredUser','bdf23cc3b2499a722bf3d27578fe4ca0a140ddad98f7b29dc71cbc8547b3aa1b');
INSERT INTO "user" (id,username,email,birthday,name,signup_date,course_id,ban,user_role,password) VALUES (41,'Dixon','risus@vestibulum.com','2006-10-27','Althea','2002-02-16 07:45:27',3,'False','Moderator','b99f96fe25abba207a927e7fbbb5381a6b5a47e7bfee90e7a45680b4acda1e10'),(42,'Ross','aliquet.odio.Etiam@accumsanneque.co.uk','2002-01-19','Alexander','1997-10-08 22:24:01',8,'False','Moderator','2c72a300fa790c39de9af7c9d336b0702c81827102d3e3686492468e72afa3a3'),(43,'Fleming','nunc.id@Cumsociisnatoque.co.uk','1999-01-25','Seth','2003-12-26 08:56:09',2,'False','Moderator','b2fe13b4ce71979585195533f75ff70711749a5516687490c96a71efcd72ab58'),(44,'Neal','Praesent.eu@consequatenim.net','1995-04-02','Barbara','2016-08-06 11:07:20',8,'False','Moderator','f0265d271313eeea0065c2c49748fabcff23bdd196c6bb43ac74990378773516'),(45,'Thompson','lorem.ac.risus@etnuncQuisque.org','1998-11-03','Rooney','1998-10-27 23:02:09',10,'False','Moderator','d6572c626a95c5ec03a3ca66c1975d6ca4576943957efaea2419215f8b8be25d'),(46,'Gay','sed.dui.Fusce@dignissimMaecenas.ca','1993-06-16','Nerea','2008-02-04 19:59:47',12,'True','Moderator','4eaae296e8e4e50af1c1ccdbfae0593f8b46612eb729abc6c93eed242a434897'),(47,'Schultz','nunc.est.mollis@Donec.ca','2000-12-14','Dana','2007-07-11 02:20:33',1,'True','Moderator','f3d3684b28430b2e082b2340d607979c29cb5612505cf8324648e611459bffd8'),(48,'Salinas','risus.Duis@Proinsedturpis.org','1998-11-06','Lisandra','2016-06-16 06:18:28',10,'True','Moderator','c9c1d8fc26d3741b268e2f07b84e8c99d9edc20020368b4a292fcc7388e094d6'),(49,'Figueroa','sit.amet.nulla@euaccumsansed.ca','2004-06-19','Marah','2019-08-14 07:37:49',2,'False','Moderator','b033a523456c89f6f0e3922df7a62fc9445b3a8b6d1a0a1e5f9b98a99ddb3e87'),(50,'Richards','dignissim@ut.org','2005-03-22','Joelle','2006-02-10 00:20:43',1,'True','Moderator','148755b7645ea696db4d470ee0b028e5cd4e9ca87d51bad689902a2a19b3d5ec');
INSERT INTO "user" (id,username,email,birthday,name,signup_date,course_id,ban,user_role,password) VALUES (51,'Johnson','Proin.sed.turpis@viverraMaecenas.net','2004-03-24','Hanae','2001-02-06 23:21:58',11,'False','Administrator','cd4e2ab18adb6d5f4a9117e111fad3f2c67a51d50aedf1d4c37012bcdcd7e5e2'),(52,'Hall','risus.varius.orci@sem.org','2006-03-02','Christian','2006-07-20 10:44:50',12,'True','Administrator','f0265d271313eeea0065c2c49748fabcff23bdd196c6bb43ac74990378773516'),(53,'Phillips','Integer.id.magna@elitEtiam.org','1996-09-23','Martin','2016-03-29 06:42:26',8,'False','Administrator','b9f3928203e4b0aa52d7733f3465bdcea92722f265f069addf048acdbb69ef5a'),(54,'Peck','sit.amet.risus@enimSuspendisse.ca','1993-04-29','Sybil','2010-10-16 09:17:22',3,'True','Administrator','d81098ac72a17a7ff1087231d75e80e45db721ac2421bfd80b53b8894df47d06'),(55,'Morrison','lorem.ut.aliquam@elementumloremut.edu','1993-07-11','Zeph','1997-04-06 01:57:22',5,'False','Administrator','c4ccc33e32487b4ccb3b0589588bb2d73005d5b6d1bbb50ee9482e38c21a2ae2'),(56,'Ruiz','tincidunt@Quisqueimperdieterat.ca','2003-01-10','Brett','2004-06-17 19:07:14',3,'False','Administrator','ee052f4cc27790521c5038f96100c1667392a42de4a0a273acd1052a41af0652'),(57,'Barlow','Donec.tincidunt@hendrerit.com','2006-02-09','Levi','2012-06-25 04:22:33',6,'False','Administrator','98958388cbe24427b4d1a13e18bbb3c6ae1332ec16124dff8adb75bb2f64f817'),(58,'Pittman','hendrerit.Donec@egestasAliquam.net','2009-07-02','Nyssa','1998-02-13 04:11:30',4,'True','Administrator','93ed6567f73b41ef012ac3616d15ba0e905e09f5e1f8f4565686f80f9ca13d01'),(59,'Hutchinson','velit.Quisque.varius@nisi.co.uk','1993-09-11','Linus','1997-09-12 18:16:19',4,'True','Administrator','d81098ac72a17a7ff1087231d75e80e45db721ac2421bfd80b53b8894df47d06'),(60,'Nichols','pellentesque@Pellentesquetincidunt.net','2007-03-05','Glenna','2015-04-18 03:31:26',3,'True','Administrator','203825ae822a4735b7aea2c500a90d1add6f514680137ad807c2520df617a873');
INSERT INTO "user" (id,username,email,birthday,name,signup_date,course_id,ban,user_role,password) VALUES (61,'Joseph','lobortis.Class@ategestas.co.uk','2000-03-15','Ivor','2004-03-20 21:15:22',9,'False','RegisteredUser','3cd3fd80708cce32ad7903db440b1f4b29d8fc09af9bbd39f23f90c7f7dae925'),(62,'Wilson','eget.nisi@porttitor.net','1994-09-22','Hammett','2004-04-18 16:36:12',10,'False','RegisteredUser','9903d9bab50f0e820ce1d1bc67bc1d7db3f6c9a8617af93d89ef2443f79413ee'),(63,'Lang','Integer.vitae@lorem.com','2000-02-20','Eugenia','2015-05-14 10:45:07',2,'False','RegisteredUser','c15a17068b5a26522d99620776bb8500d250fc042b3731ff4647ed9a6f72da62'),(64,'Sparks','et.ultrices@aarcuSed.ca','1997-06-08','Elizabeth','2010-09-14 00:05:46',2,'True','RegisteredUser','7824540ed3de437dcb9e060804e6b94c1f1783d04e9ac6c48cbc7ec033bc2c6e'),(65,'Cochran','risus.at@senectus.edu','1993-06-15','Grady','1999-08-19 02:27:53',12,'False','RegisteredUser','84c6d42d2bb9cc1880dbf929a8e92397078dd1ce85998d9ce6ee2b3e109a1d04'),(66,'Wyatt_','metus.eu.erat@posuereatvelit.co.uk','2004-08-23','Cathleen','2015-02-01 15:14:01',4,'False','RegisteredUser','c4ccc33e32487b4ccb3b0589588bb2d73005d5b6d1bbb50ee9482e38c21a2ae2'),(67,'Lopez','Nullam.vitae.diam@ac.edu','2005-02-12','Tad','2015-11-02 11:17:03',12,'True','RegisteredUser','da17a280b265c73cf6b454eca82ccf0ff90712fab0bede5c6e97d9697ba3f034'),(68,'Robertson','penatibus.et.magnis@quisaccumsanconvallis.co.uk','2007-07-26','Julian','2006-09-20 02:20:28',1,'False','RegisteredUser','c04212b47f09510550d27fc8288a1eba01fe24968f0e13305b76401c8f24126f'),(69,'Gillespie','porttitor.vulputate.posuere@nascetur.ca','2005-07-24','Lacota','2011-02-21 06:35:32',2,'True','RegisteredUser','d81098ac72a17a7ff1087231d75e80e45db721ac2421bfd80b53b8894df47d06'),(70,'Ramsey','Morbi.quis.urna@Pellentesquetincidunt.net','2009-12-02','Remedios','2004-08-26 01:48:56',8,'False','RegisteredUser','b67ec76e3b956b33a3e93c8ec3ad65354e5ee63edbc7d2e8600803b14de21de1');
INSERT INTO "user" (id,username,email,birthday,name,signup_date,course_id,ban,user_role,password) VALUES (71,'Mullins','non@leo.net','1999-04-30','Zeus','2009-06-11 22:21:02',8,'True','Moderator','065c5662ea4c276714a064c8bb48b4a55b81b5108bc6b1eda9b25799e32e5e40'),(72,'Palmer','Praesent.eu.dui@telluslorem.net','1993-08-31','Talon','2004-08-11 11:37:20',9,'False','Moderator','a6163be7194ce5fb79b0f9044e7c8cc72d35bd208b952774ce87baa1fd932f78'),(73,'Decker','est@Suspendisseac.org','2000-04-28','Emerson','2018-12-18 21:45:12',5,'False','Moderator','0b033d02e36ec9182055e63927dffba46d976cd48b09c2b77797f0d3ef06ab10'),(74,'David','ac.mattis@Etiamimperdietdictum.ca','1995-11-18','Acton','2017-03-13 01:47:11',8,'False','Moderator','716ce37adb1c103426aff945835be637647821592ad3fcd38ac19c02c386d361'),(75,'Serrano','cursus.et.eros@liberonecligula.com','1994-09-15','Herrod','2007-11-08 18:44:04',1,'False','Moderator','4135d4ec56225cfdb11eb5150bed1c640f56b48c06d884b9558f0306ad208e50'),(76,'Dudley','Nunc@Proinsed.com','2000-03-23','Blaine','2014-08-26 03:29:30',10,'False','Moderator','d961b9e9baf510cdf4935e5a1e5b1f33dcacaa33c910248efff74565af9e6acb'),(77,'Sweeney','Aenean@ultriciesligulaNullam.com','2008-04-01','Gavin','2012-03-30 09:09:14',3,'True','Moderator','d961b9e9baf510cdf4935e5a1e5b1f33dcacaa33c910248efff74565af9e6acb'),(78,'Hopper','ac@sociisnatoque.org','2000-04-07','Herrod','2011-03-14 01:45:37',11,'True','Moderator','b9f3928203e4b0aa52d7733f3465bdcea92722f265f069addf048acdbb69ef5a'),(79,'Rodriguez','orci.quis@Etiamgravida.edu','1994-03-25','Uriel','2000-05-26 16:51:12',10,'True','Moderator','2c72a300fa790c39de9af7c9d336b0702c81827102d3e3686492468e72afa3a3'),(80,'Cooke','nec.urna.et@rhoncusDonec.org','2000-05-12','Emmanuel','2013-09-19 07:38:17',1,'False','Moderator','f472eba38bb0a8e44f5d70c069f021deaa3e50f9ff1b2b1ce7f067aedfafedfe');
INSERT INTO "user" (id,username,email,birthday,name,signup_date,course_id,ban,user_role,password) VALUES (81,'Banks','sociis.natoque@Integer.net','1997-07-08','Wilma','2018-12-28 19:57:51',3,'True','Administrator','d0ee497937d30b81dd53d4bbce71d442eff7c08b408b3b20cd2e46b979f94b4f'),(82,'Flynn','Suspendisse@lorem.ca','1997-01-31','Laurel','2001-11-12 00:21:58',7,'True','Administrator','12e6b7d80e5ae0ea671017062796e26247f5e3671f3465b583b0a6f9ca7ace22'),(83,'Newman','dictum.mi.ac@utmolestie.ca','1993-04-03','Quamar','2005-04-21 21:15:44',11,'True','Administrator','387f3abe103395fb76e85ae76aca1d1604c74aa3fdefcb74bc1f6961b879c7e1'),(84,'Barry','litora@molestie.com','1999-08-03','Chancellor','2008-08-05 16:17:33',6,'False','Administrator','65394e11690039e308f40fa1e9e889f58f84dae5e28ac13d0656a1b48180bcd5'),(85,'Fry','et@duisemper.co.uk','1999-07-22','Britanni','2019-02-23 13:07:58',5,'False','Administrator','aea537fda2862acff8a699f86d8494587e6de68760dffc9b56f907e625425f8d'),(86,'Gross','ipsum@felisDonectempor.net','2007-11-09','Audra','2014-07-06 07:31:43',9,'True','Administrator','769122b0f4cda4614ad981ec1412597ced1ba5bbc596d41736969f6db4c0a143'),(87,'Lewis','sem.elit.pharetra@vitae.ca','2006-06-30','Mannix','2000-09-10 12:39:57',9,'False','Administrator','49a26d461fee9780a0e17182ca2e7d1ad8c3e5d54d27a72572d757b9c934ee1c'),(88,'Pacheco','augue.scelerisque.mollis@mi.net','2006-12-05','Guy','2017-06-28 01:47:28',2,'False','Administrator','f4cc111295414a0a3bf277fda75cbbb6bd4a365417fdb0e53178290b9654cfc3'),(89,'Ferrell','ante.Nunc.mauris@lacusAliquamrutrum.ca','2005-05-09','Chase','2004-09-07 16:17:50',12,'False','Administrator','f4cc111295414a0a3bf277fda75cbbb6bd4a365417fdb0e53178290b9654cfc3'),(90,'Madden','a@ornare.ca','1997-04-11','Jaquelyn','2008-02-21 06:14:04',4,'False','Administrator','7c8cd8afdf86143a754e7b1948af9f7c4770f90ec1e729e429489fa6d8b4909a');
INSERT INTO "user" (id,username,email,birthday,name,signup_date,course_id,ban,user_role,password) VALUES (91,'Howe','non.sollicitudin.a@accumsansed.com','1999-09-14','Xerxes','1998-09-12 16:13:42',4,'True','RegisteredUser','90e2112af13d01464a3054980f49c35bc45ea8f0a380e559ee3f665bdaeacd22'),(92,'Gray','egestas.Aliquam.fringilla@euismodac.com','2009-05-23','Curran','1998-11-04 20:23:30',1,'False','RegisteredUser','6c74c2eab2cc3bfa06212026437ac67446aaa86572ab8af462f62cd3a1260049'),(93,'Holt','augue.eu@ametdiameu.net','1993-07-10','Wylie','2003-03-07 09:00:12',9,'True','RegisteredUser','203825ae822a4735b7aea2c500a90d1add6f514680137ad807c2520df617a873'),(94,'Keller','et.ipsum.cursus@molestietellus.net','2006-11-09','Prescott','1998-04-14 23:37:46',5,'False','RegisteredUser','6c3dd69c8f5ee7be3917b9cd2d06c83172139939f89bca529badc0c3a8c82bfc'),(95,'Lewis_','eu@ametdapibusid.co.uk','2007-11-29','Seth','2008-02-25 00:32:26',12,'True','RegisteredUser','8db4b0d9dc6ee8baf3545ba4fc3aab172341ed19a56406b65d0de10f3aed80f9'),(96,'Kidd','neque.Nullam.ut@ut.org','2006-09-20','Gretchen','2012-09-26 13:50:30',1,'False','RegisteredUser','d0ee497937d30b81dd53d4bbce71d442eff7c08b408b3b20cd2e46b979f94b4f'),(97,'Sheppard','consectetuer@Cum.ca','2010-03-07','Olga','2012-08-11 03:34:02',12,'True','RegisteredUser','c997397e3c5ebe05e968076b813123743518ad961febc2bf9eaa75cd44cf0d89'),(98,'Wyatt','vel@magnisdisparturient.edu','2001-07-27','Hedley','2018-02-04 03:47:13',2,'True','RegisteredUser','9457d2b79dc34c573889721a2e357932256e3b6c5534a260c1f7b49d97d845c9'),(99,'Morrow','Nunc.ut.erat@Inornaresagittis.com','2002-02-09','Rinah','2002-01-09 11:04:28',9,'True','RegisteredUser','ad79f644a60a8df806d0e39584a083737f1a835f078deb6cd6c1ed93f510d2e1'),(100,'Gibson','nulla.Cras.eu@tacitisociosquad.ca','2006-08-27','Benjamin','2005-10-22 01:22:56',3,'False','RegisteredUser','217559a9aea8591b5c4054804c1693b1f121d0df5efda33cdea7df6897b54ca4');



-- question
INSERT INTO question (id, question_owner_id, title, content, "date") VALUES (1, 1, 'Converter a string 5.541,00 para int em C#', 'Qual a maneira correta de converter uma string com o texto 5.541,88 para int? Estou tentando fazer da seguinte maneira:', '2021-01-01');
INSERT INTO question (id, question_owner_id, title, content, "date") VALUES (2, 5, 'Criar array em php, guardando quantas vezes uma string aparece', 'Bom Dia! Estou com um problema, eu tenho duas strings $procurar e $nome_das_maquinas, dentro de procurar eu tenho o texto completo, e dentro de $nome_das_maquinas as palavras que eu desejo procurar na variável $procurar.', '2021-01-01');
INSERT INTO question (id, question_owner_id, title, content, "date") VALUES (3, 9, 'Como calcular a velocidade média?', 'Sabendo que a distancia é 100m e o tempo 50s', '2020-06-21');
INSERT INTO question (id, question_owner_id, title, content, "date") VALUES (4, 3, 'Qual é o mais básico?', 'água ou lixivia?', '2020-09-01');
INSERT INTO question (id, question_owner_id, title, content, "date") VALUES (5, 5, 'Como usar autocad', 'Preciso de saber usar autcad!', '2020-09-11');
INSERT INTO question (id, question_owner_id, title, content, "date") VALUES (6, 11, 'Ajuda com economia', 'Uma taxa de juros a 1% é muito?', '2020-10-14');
INSERT INTO question (id, question_owner_id, title, content, "date") VALUES (7, 17, 'Metodos númericos, o que é o golden ratio', 'O stor falou de golden ratio, mas eu não percebi! Alguém me ajude!', '2021-02-01');
INSERT INTO question (id, question_owner_id, title, content, "date") VALUES (8, 98, 'LBAW, não sei fazer SQL ajudem', 'Como configuro postgresql?', '2021-02-27');
INSERT INTO question (id, question_owner_id, title, content, "date") VALUES (9, 75, 'Como contruir pontes como a da feup?', 'Alguem me ajude com materiais para contruir uma ponte', '2021-03-11');
INSERT INTO question (id, question_owner_id, title, content, "date") VALUES (10, 16, 'Como fazer desenho tecnico', 'Content', '2021-03-08');
INSERT INTO question (id, question_owner_id, title, content, "date") VALUES (11, 20, 'Preciso de ajuda a resolver equações diferenciais', 'Content', '2021-03-25');
INSERT INTO question (id, question_owner_id, title, content, "date") VALUES (12, 21, 'Como alterar o RNA de uma molecula?', 'Tenho um trabalho prático de biologia', '2021-01-10');
INSERT INTO question (id, question_owner_id, title, content, "date") VALUES (13, 25, 'Diferença entre crossover e mutation', 'Qual é a diferença entre crossover e mutação nos algoritmos geneticos', '2020-09-01');
INSERT INTO question (id, question_owner_id, title, content, "date") VALUES (14, 29, 'Teoria de Darwin', 'Hoje o professor mencionou a teoria evolucionista de Darwin. Alguém me pode ajudar a perceber melhor a mesma?', '2020-11-01');
INSERT INTO question (id, question_owner_id, title, content, "date") VALUES (15, 34, 'Devo usar stimulated ameling ou tabu search', 'Qual é o melhor para otimizar o problema do google hashcode 2018?', '2020-12-13');
INSERT INTO question (id, question_owner_id, title, content, "date") VALUES (16, 46, 'Como fazer um TSP', 'Preciso de fazer uma TSP para entregar daqui a 30minutos. Alguma dica? Se alguém tiver código em C++ que diga!', '2020-03-01');
INSERT INTO question (id, question_owner_id, title, content, "date") VALUES (17, 76, 'AJUDA COM MIPS URGENTE!', 'Eu não percebo nada de comp alguém que me ajudeeee! ', '2020-04-17');

-- "answer
INSERT INTO answer(id, question_id, answer_owner_id, content, "date", valid) VALUES (1, 1, 7, 'Basta usar a função da library de c para mudar de string para int!', '2021-12-05', TRUE);  
INSERT INTO answer(id, question_id, answer_owner_id, content, "date", valid) VALUES (2, 3, 20, 'Tens de fazer 100-50', '2021-01-08', TRUE);
INSERT INTO answer(id, question_id, answer_owner_id, content, "date", valid) VALUES (3, 2, 5, 'Basta user a fórmula delta v = delta d sobre delta t', '2020-06-30', FALSE);
INSERT INTO answer(id, question_id, answer_owner_id, content, "date", valid) VALUES (4, 4, 31, 'Eu não tenho certeza, mas acho que lixivia é mais básico.', '2020-10-01', TRUE);
INSERT INTO answer(id, question_id, answer_owner_id, content, "date", valid) VALUES (5, 5, 45, 'Creio que não seja possível explicar como fazer isto aqui por texto. Mas Tenta dar uma olhada no site, eles tem um bom tutorial guiado.Boa sorte.', '2020-10-11', TRUE);
INSERT INTO answer(id, question_id, answer_owner_id, content, "date", valid) VALUES (6, 6, 70, 'Olá, poderia fornecer mais informações? A taxa de juros depende qual a o intervalo de tempo esta taxa será aplicada. Se for uma taxa de 1% ao dia, posso dizer que isto é muito, mas se for ao ano e dependendo da quantia, talvez não seja. ', '2020-11-05', TRUE); 
INSERT INTO answer(id, question_id, answer_owner_id, content, "date", valid) VALUES (7, 14, 64, 'Eu também não sei e gostava de saber!', '2021-03-12', TRUE);
INSERT INTO answer(id, question_id, answer_owner_id, content, "date", valid) VALUES (8, 7, 5, 'Eles forneceram um guião no gitlab. Está disponível no site do jlopes. Aquilo não tem erro. É só seguir as instruções.', '2021-03-28', TRUE); 
INSERT INTO answer(id, question_id, answer_owner_id, content, "date", valid) VALUES (9, 8, 64, 'Não tem como, tens de ser estudante para saber.', '2021-03-12', TRUE);
-- comment
INSERT INTO comment(id, answer_id, comment_owner_id, content, "date") VALUES (1, 1, 54, 'Podias dizer o nome da função', '2021-12-30');
INSERT INTO comment(id, answer_id, comment_owner_id, content, "date") VALUES (2, 3, 80, 'Melhor que a resposta selcionada como válida! Eu quero aprender a fazer! Obrigado!', '2021-06-30');
INSERT INTO comment(id, answer_id, comment_owner_id, content, "date") VALUES (3, 3, 23, 'Qual é o ph de cada um deles?', '2021-04-03');
INSERT INTO comment(id, answer_id, comment_owner_id, content, "date") VALUES (4, 8, 64, 'Podes especificar em que parte do site está?', '2021-03-30');
INSERT INTO comment(id, answer_id, comment_owner_id, content, "date") VALUES (5, 8, 5, 'Está na parte dos recursos de lbaw!', '2021-03-30');

-- notifications
INSERT INTO "notification" (id, user_id, comment_id, answer_id, "date", viewed) VALUES (1, 7, 1, NULL, '2021-01-01', TRUE);
INSERT INTO "notification" (id, user_id, comment_id, answer_id, "date", viewed) VALUES (2, 5, 2, NULL, '2021-01-01', false);
INSERT INTO "notification" (id, user_id, comment_id, answer_id, "date", viewed) VALUES (3, 5, 3, NULL, '2021-01-01', TRUE);
INSERT INTO "notification" (id, user_id, comment_id, answer_id, "date", viewed) VALUES (4, 5, 4, NULL, '2021-01-01', false);
INSERT INTO "notification" (id, user_id, comment_id, answer_id, "date", viewed) VALUES (5, 5, 5, NULL, '2021-01-01', TRUE);
INSERT INTO "notification" (id, user_id, comment_id, answer_id, "date", viewed) VALUES (6, 1, NULL, 1, '2021-01-01', false);
INSERT INTO "notification" (id, user_id, comment_id, answer_id, "date", viewed) VALUES (7, 9, NULL, 2, '2021-01-01', TRUE);
INSERT INTO "notification" (id, user_id, comment_id, answer_id, "date", viewed) VALUES (8, 5, NULL, 3, '2021-01-01', false);
INSERT INTO "notification" (id, user_id, comment_id, answer_id, "date", viewed) VALUES (9, 3, NULL, 4, '2021-01-01', TRUE);
INSERT INTO "notification" (id, user_id, comment_id, answer_id, "date", viewed) VALUES (10, 5, NULL, 5, '2021-01-01', false);
INSERT INTO "notification" (id, user_id, comment_id, answer_id, "date", viewed) VALUES (11, 11, NULL, 6, '2021-01-01', TRUE);
INSERT INTO "notification" (id, user_id, comment_id, answer_id, "date", viewed) VALUES (12, 17, NULL, 7, '2021-01-01', false);
INSERT INTO "notification" (id, user_id, comment_id, answer_id, "date", viewed) VALUES (13, 98, NULL, 8, '2021-01-01', TRUE);
INSERT INTO "notification" (id, user_id, comment_id, answer_id, "date", viewed) VALUES (14, 75, NULL, 9, '2021-01-01', false);

-- Reported User 
INSERT INTO report (id,viewed,user_id,reported_id) VALUES (1,'true',41,42);
INSERT INTO report (id,viewed,user_id,reported_id) VALUES (2,'false',14,80);
INSERT INTO report (id,viewed,user_id,reported_id) VALUES (3,'true',44,43);
INSERT INTO report (id,viewed,user_id,reported_id) VALUES (4,'true',13,75);
INSERT INTO report (id,viewed,user_id,reported_id) VALUES (5,'false',23,57);
INSERT INTO report (id,viewed,user_id,reported_id) VALUES (6,'true',3,56);
INSERT INTO report (id,viewed,user_id,reported_id) VALUES (7,'true',15,76);
INSERT INTO report (id,viewed,user_id,reported_id) VALUES (8,'false',95,88);
INSERT INTO report (id,viewed,user_id,reported_id) VALUES (9,'true',28,75);
INSERT INTO report (id,viewed,user_id,reported_id) VALUES (10,'false',74,17);
INSERT INTO report (id,viewed,user_id,reported_id) VALUES (11,'false',70,33);
INSERT INTO report (id,viewed,user_id,reported_id) VALUES (12,'false',50,14);
INSERT INTO report (id,viewed,user_id,reported_id) VALUES (13,'true',70,92);
INSERT INTO report (id,viewed,user_id,reported_id) VALUES (14,'true',42,56);
INSERT INTO report (id,viewed,user_id,reported_id) VALUES (15,'true',39,69);
INSERT INTO report (id,viewed,user_id,reported_id) VALUES (16,'true',89,93);
INSERT INTO report (id,viewed,user_id,reported_id) VALUES (17,'true',3,79);
INSERT INTO report (id,viewed,user_id,reported_id) VALUES (18,'false',66,70);
INSERT INTO report (id,viewed,user_id,reported_id) VALUES (19,'false',37,44);
INSERT INTO report (id,viewed,user_id,reported_id) VALUES (20,'false',23,7);


-- Reported questions (1-5)
INSERT INTO report (id,viewed,user_id,question_id) VALUES (21,'true',84,5);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (22,'true',64,2);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (23,'true',94,1);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (24,'false',84,2);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (25,'true',77,1);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (26,'false',67,5);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (27,'false',35,3);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (28,'true',61,3);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (29,'true',8,5);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (30,'false',40,1);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (31,'true',76,4);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (32,'true',82,4);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (33,'false',93,3);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (34,'true',68,2);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (35,'false',46,5);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (36,'true',50,1);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (37,'true',100,3);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (38,'false',29,5);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (39,'true',91,3);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (40,'false',54,3);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (41,'true',6,1);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (42,'false',51,4);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (43,'false',50,3);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (44,'true',60,1);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (45,'true',15,1);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (46,'true',81,5);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (47,'true',52,4);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (48,'false',24,2);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (49,'false',29,2);
INSERT INTO report (id,viewed,user_id,question_id) VALUES (50,'false',57,4);

-- Reported answers (1-3)

INSERT INTO report (id,viewed,user_id,answer_id) VALUES (51,'false',59,1);
INSERT INTO report (id,viewed,user_id,answer_id) VALUES (52,'true',25,1);
INSERT INTO report (id,viewed,user_id,answer_id) VALUES (53,'true',28,3);
INSERT INTO report (id,viewed,user_id,answer_id) VALUES (54,'true',42,1);
INSERT INTO report (id,viewed,user_id,answer_id) VALUES (55,'false',49,1);
INSERT INTO report (id,viewed,user_id,answer_id) VALUES (56,'false',56,3);
INSERT INTO report (id,viewed,user_id,answer_id) VALUES (57,'true',48,2);
INSERT INTO report (id,viewed,user_id,answer_id) VALUES (58,'true',35,3);
INSERT INTO report (id,viewed,user_id,answer_id) VALUES (59,'true',95,2);
INSERT INTO report (id,viewed,user_id,answer_id) VALUES (60,'true',93,3);

-- Reported comments(1)
INSERT INTO report (id,viewed,user_id,comment_id) VALUES (61,'false',33,1);
INSERT INTO report (id,viewed,user_id,comment_id) VALUES (62,'false',25,1);
INSERT INTO report (id,viewed,user_id,comment_id) VALUES (63,'false',21,1);
INSERT INTO report (id,viewed,user_id,comment_id) VALUES (64,'false',10,1);
INSERT INTO report (id,viewed,user_id,comment_id) VALUES (65,'true',50,1);
INSERT INTO report (id,viewed,user_id,comment_id) VALUES (66,'true',35,1);
INSERT INTO report (id,viewed,user_id,comment_id) VALUES (67,'false',83,1);
INSERT INTO report (id,viewed,user_id,comment_id) VALUES (68,'true',93,1);
INSERT INTO report (id,viewed,user_id,comment_id) VALUES (69,'false',18,1);
INSERT INTO report (id,viewed,user_id,comment_id) VALUES (70,'false',17,1);

INSERT INTO question_course (question_id, course_id) VALUES (1, 7);
INSERT INTO question_course (question_id, course_id) VALUES (2, 7);
INSERT INTO question_course (question_id, course_id) VALUES (3, 3);
INSERT INTO question_course (question_id, course_id) VALUES (4, 2);
INSERT INTO question_course (question_id, course_id) VALUES (5, 2);
INSERT INTO question_course (question_id, course_id) VALUES (6, 5);
INSERT INTO question_course (question_id, course_id) VALUES (7, 1);
INSERT INTO question_course (question_id, course_id) VALUES (8, 2);
INSERT INTO question_course (question_id, course_id) VALUES (9, 5);
INSERT INTO question_course (question_id, course_id) VALUES (10, 5);
INSERT INTO question_course (question_id, course_id) VALUES (11, 5);
INSERT INTO question_course (question_id, course_id) VALUES (12, 4);
INSERT INTO question_course (question_id, course_id) VALUES (13, 5);
INSERT INTO question_course (question_id, course_id) VALUES (14, 7);
INSERT INTO question_course (question_id, course_id) VALUES (15, 7);
INSERT INTO question_course (question_id, course_id) VALUES (16, 7);
INSERT INTO question_course (question_id, course_id) VALUES (17, 7);

INSERT INTO question_tag (question_id, tag_id) VALUES (1, 7);
INSERT INTO question_tag (question_id, tag_id) VALUES (1, 2);
INSERT INTO question_tag (question_id, tag_id) VALUES (1, 3);
INSERT INTO question_tag (question_id, tag_id) VALUES (1, 5);
INSERT INTO question_tag (question_id, tag_id) VALUES (2, 7);
INSERT INTO question_tag (question_id, tag_id) VALUES (3, 3);
INSERT INTO question_tag (question_id, tag_id) VALUES (4, 2);
INSERT INTO question_tag (question_id, tag_id) VALUES (5, 2);
INSERT INTO question_tag (question_id, tag_id) VALUES (6, 5);
INSERT INTO question_tag (question_id, tag_id) VALUES (7, 1);
INSERT INTO question_tag (question_id, tag_id) VALUES (8, 2);
INSERT INTO question_tag (question_id, tag_id) VALUES (9, 5);
INSERT INTO question_tag (question_id, tag_id) VALUES (10, 5);
INSERT INTO question_tag (question_id, tag_id) VALUES (11, 5);
INSERT INTO question_tag (question_id, tag_id) VALUES (12, 4);
INSERT INTO question_tag (question_id, tag_id) VALUES (13, 5);
INSERT INTO question_tag (question_id, tag_id) VALUES (14, 7);
INSERT INTO question_tag (question_id, tag_id) VALUES (15, 7);
INSERT INTO question_tag (question_id, tag_id) VALUES (16, 7);
INSERT INTO question_tag (question_id, tag_id) VALUES (17, 7);

-- Favourite Tags (check)
INSERT INTO favourite_tag (user_id, tag_id) VALUES (1, 5);
INSERT INTO favourite_tag (user_id, tag_id) VALUES (6, 1);
INSERT INTO favourite_tag (user_id, tag_id) VALUES (6, 21);
INSERT INTO favourite_tag (user_id, tag_id) VALUES (10, 13);
INSERT INTO favourite_tag (user_id, tag_id) VALUES (10, 14);
INSERT INTO favourite_tag (user_id, tag_id) VALUES (24, 10);
INSERT INTO favourite_tag (user_id, tag_id) VALUES (24, 20);
INSERT INTO favourite_tag (user_id, tag_id) VALUES (24, 29);
INSERT INTO favourite_tag (user_id, tag_id) VALUES (32, 15);

-- Question Votes  
INSERT INTO "vote" (id,user_id,question_id,value_vote) VALUES (1,96,4,'-1'),(2,51,4,'-1'),(3,57,2,'1'),(4,70,4,'1'),(5,37,1,'-1'),(6,37,4,'-1'),(7,99,4,'-1'),(8,83,1,'-1'),(9,93,4,'1'),(10,14,2,'-1');
INSERT INTO "vote" (id,user_id,question_id,value_vote) VALUES (11,17,1,'-1'),(12,34,2,'-1'),(13,93,5,'1'),(14,16,1,'1'),(15,81,5,'1'),(16,87,4,'-1'),(17,80,3,'1'),(18,45,1,'1'),(19,49,1,'-1'),(20,14,3,'1');

-- Answer Votes 
INSERT INTO "vote" (id,user_id,answer_id,value_vote) VALUES (31,90,1,'1'),(21,51,4,'1'),(22,22,2,'1'),(23,25,3,'-1'),(24,5,5,'-1'),(25,86,2,'-1'),(26,66,5,'-1'),(27,94,1,'1'),(28,90,2,'1'),(30,5,4,'-1');
INSERT INTO "vote" (id,user_id,answer_id,value_vote) VALUES (41,76,3,'-1'),(32,43,2,'-1'),(33,8,5,'-1'),(34,61,1,'-1'),(35,81,3,'-1'),(36,7,2,'1'),(37,13,4,'-1'),(38,74,2,'1'),(39,38,3,'1'),(40,2,4,'-1');
