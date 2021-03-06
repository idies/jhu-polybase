CREATE TABLE `cancer_study` (
  `CANCER_STUDY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CANCER_STUDY_IDENTIFIER` varchar(255) DEFAULT NULL,
  `TYPE_OF_CANCER_ID` varchar(63) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `SHORT_NAME` varchar(64) NOT NULL,
  `DESCRIPTION` varchar(1024) NOT NULL,
  `PUBLIC` tinyint(1) NOT NULL,
  `PMID` varchar(1024) DEFAULT NULL,
  `CITATION` varchar(200) DEFAULT NULL,
  `GROUPS` varchar(200) DEFAULT NULL,
  `STATUS` int(1) DEFAULT NULL,
  `IMPORT_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`CANCER_STUDY_ID`),
  UNIQUE KEY `CANCER_STUDY_IDENTIFIER` (`CANCER_STUDY_IDENTIFIER`),
  KEY `TYPE_OF_CANCER_ID` (`TYPE_OF_CANCER_ID`),
  CONSTRAINT `cancer_study_ibfk_1` FOREIGN KEY (`TYPE_OF_CANCER_ID`) REFERENCES `type_of_cancer` (`TYPE_OF_CANCER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1478 DEFAULT CHARSET=utf8;
