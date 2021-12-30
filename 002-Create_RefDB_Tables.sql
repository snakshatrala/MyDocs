-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: rds-reference-aurora-database.ccaw4aw4ryjn.us-east-1.rds.amazonaws.com    Database: Reference_DB_Dev
-- ------------------------------------------------------
-- Server version	5.7.12

--
-- Table structure for table `App_Settings`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `App_Settings` (
  `SeqKey` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(1000) DEFAULT NULL,
  `Value` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`SeqKey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Audit`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Audit` (
  `AuditKey` int(11) NOT NULL AUTO_INCREMENT,
  `Project_Name` varchar(255) NOT NULL,
  `Job_Name` varchar(255) NOT NULL,
  `Job_Version` varchar(255) NOT NULL,
  `Job_Status` varchar(255) NOT NULL,
  `Job_Start_Time` datetime DEFAULT NULL,
  `Job_End_Time` datetime DEFAULT NULL,
  `Source_Name` varchar(255) DEFAULT NULL,
  `Target_Name` varchar(255) DEFAULT NULL,
  `Records_Read` int(11) DEFAULT NULL,
  `Records_Inserted` int(11) DEFAULT NULL,
  `Records_Updated` int(11) DEFAULT NULL,
  `Records_Rejected` int(11) DEFAULT NULL,
  `Execution_Seconds` int(11) DEFAULT NULL,
  `Error_Code` int(11) DEFAULT NULL,
  `Error_Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`AuditKey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ErrorEvent`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ErrorEvent` (
  `ErrorEvent_Key` int(11) NOT NULL AUTO_INCREMENT,
  `EventDescription` varchar(1024) DEFAULT NULL,
  `EventDateTime` date DEFAULT NULL,
  `SourceName` varchar(100) DEFAULT NULL,
  `TargetName` varchar(100) DEFAULT NULL,
  `PrimaryKeyName` varchar(100) DEFAULT NULL,
  `PrimaryKeyValue` varchar(100) DEFAULT NULL,
  `ETLJobName` varchar(100) DEFAULT NULL,
  `AuditKey` int(11) DEFAULT NULL,
  `RejectFlag` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ErrorEvent_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `Exposure_Base`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Exposure_Base` (
  `Exposure_Base_Key` int(11) NOT NULL AUTO_INCREMENT,
  `Exposure_Base_Name` varchar(45) DEFAULT NULL,
  `Product_Code` varchar(45) DEFAULT NULL,
  `Subproduct_Code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Exposure_Base_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `Master_Currency`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Master_Currency` (
  `Currency_Key` int(11) NOT NULL AUTO_INCREMENT,
  `Country_Code` varchar(3) DEFAULT NULL,
  `Currency_Code` varchar(3) DEFAULT NULL,
  `Currency_Name` varchar(100) DEFAULT NULL,
  `USD_Exchange_Rate` decimal(24,12) DEFAULT NULL,
  `Updated_DateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`Currency_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Master_Industry_Codes_NAICS`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Master_Industry_Codes_NAICS` (
  `NAICS_Key` int(11) NOT NULL AUTO_INCREMENT,
  `NAICS_Code` int(11) DEFAULT NULL,
  `NAICS_Name` varchar(255) DEFAULT NULL,
  `Year_Of_Code` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAICS_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Master_LINE_OF_BUSINESS`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Master_LINE_OF_BUSINESS` (
  `LOB_Key` int(11) NOT NULL AUTO_INCREMENT,
  `LOB_Code` varchar(3) NOT NULL,
  `LOB_Description` varchar(100) NOT NULL,
  PRIMARY KEY (`LOB_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Master_Location`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Master_Location` (
  `Location_Key` int(11) NOT NULL AUTO_INCREMENT,
  `Country_ID` int(11) DEFAULT NULL,
  `State_Territory_ID` int(11) DEFAULT NULL,
  `Country_Code` varchar(3) DEFAULT NULL,
  `Country_Code_ISO2` varchar(2) DEFAULT NULL,
  `Country_Name` varchar(45) DEFAULT NULL,
  `State_Territory_Code` varchar(3) DEFAULT NULL,
  `State_Territory_Name` varchar(45) DEFAULT NULL,
  `Latitude` varchar(45) DEFAULT NULL,
  `Longitude` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Location_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Master_Product`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Master_Product` (
  `Product_Key` int(11) NOT NULL AUTO_INCREMENT,
  `Product_Code` varchar(3) DEFAULT NULL,
  `Product_Description` varchar(100) DEFAULT NULL,
  `Subproduct_Code` varchar(3) DEFAULT NULL,
  `Subproduct_Description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Product_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFW_Member_Company`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_Member_Company` (
  `Company_Key` int(11) NOT NULL AUTO_INCREMENT,
  `Country_Code` varchar(3) NOT NULL,
  `Company_Code` varchar(5) NOT NULL,
  `Company_Legal_Entity_Name` varchar(255) NOT NULL,
  `Member_Company_Indicator` varchar(1) NOT NULL,
  `Company_Website` varchar(500) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `State_Territory_Code` varchar(3) DEFAULT NULL,
  `ZipCode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Company_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Table structure for table `FFW_Business_Location`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_Business_Location` (
  `Business_Location_Key` int(11) NOT NULL AUTO_INCREMENT,
  `Company_Code` varchar(5) DEFAULT NULL,
  `Country_Code` varchar(3) DEFAULT NULL,
  `Country_Code_ISO2` varchar(2) DEFAULT NULL,
  `Country_Name` varchar(100) DEFAULT NULL,
  `State_Territory_Code` varchar(5) DEFAULT NULL,
  `Latitude` varchar(45) DEFAULT NULL,
  `Longitude` varchar(45) DEFAULT NULL,
  `State_Territory_Name` varchar(100) DEFAULT NULL,
  `FFW_In_Network_Indicator` varchar(45) DEFAULT NULL,
  `FFW_Sanction_Indicator` varchar(45) DEFAULT NULL,
  `State_Restrict_Display_Indicator` varchar(1) DEFAULT NULL,
  `FFW_Partner_Country_Indicator` varchar(45) DEFAULT NULL COMMENT 'The value will be populated as ''Yes'' if the country is a Partner Country',
  `FFW_FoS_Country_Indicator` varchar(45) DEFAULT NULL COMMENT 'The value will be populated as ''Yes'' if the country is a FoS Country.',
  `Local_Currency_Code` varchar(3) DEFAULT NULL,
  `Local_Currency_Name` varchar(45) DEFAULT NULL,
  `USD_Exchange_Rate` decimal(24,12) DEFAULT NULL,
  `Economic_Region_Name` varchar(45) DEFAULT NULL,
  `Economic_Region_Code` varchar(45) DEFAULT NULL,
  `Updated_DateTime` datetime DEFAULT NULL,
  `FFW_Member_Company_Company_Key` int(11) NOT NULL,
  `Master_Location_Location_Key` int(11) NOT NULL,
  `Master_Currency_Currency_Key` int(11) NOT NULL,
  PRIMARY KEY (`Business_Location_Key`,`Master_Location_Location_Key`,`Master_Currency_Currency_Key`),
  KEY `fkmembercompanykey_idx` (`FFW_Member_Company_Company_Key`),
  KEY `fkcurrencykey_idx` (`Master_Currency_Currency_Key`),
  KEY `fklocationkey_idx` (`Master_Location_Location_Key`),
  CONSTRAINT `fkcurrencykey` FOREIGN KEY (`Master_Currency_Currency_Key`) REFERENCES `Master_Currency` (`Currency_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fklocationkey` FOREIGN KEY (`Master_Location_Location_Key`) REFERENCES `Master_Location` (`Location_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkmembercompanykey` FOREIGN KEY (`FFW_Member_Company_Company_Key`) REFERENCES `FFW_Member_Company` (`Company_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFW_LOB_Product_Allocation_Mapping`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_LOB_Product_Allocation_Mapping` (
  `FFW_LOB_Product_Allocation_Mapping_Key` int(11) NOT NULL AUTO_INCREMENT,
  `LOB_Code` varchar(3) NOT NULL,
  `Product_Code` varchar(3) NOT NULL,
  `Subproduct_Code` varchar(3) DEFAULT NULL,
  `Allocation_Mapping_Code` varchar(45) NOT NULL,
  `Master_Product_Product_Key` int(11) NOT NULL,
  `Master_LINE_OF_BUSINESS_LOB_Key` int(11) NOT NULL,
  PRIMARY KEY (`FFW_LOB_Product_Allocation_Mapping_Key`),
  KEY `fk_FFW_LOB_Product_Allocation_Mapping_Master_Product1_idx` (`Master_Product_Product_Key`),
  KEY `fk_FFW_LOB_Product_Allocation_Mapping_Master_LINE_OF_BUSINE_idx` (`Master_LINE_OF_BUSINESS_LOB_Key`),
  CONSTRAINT `fk_FFW_LOB_Product_Allocation_Mapping_Master_LINE_OF_BUSINESS1` FOREIGN KEY (`Master_LINE_OF_BUSINESS_LOB_Key`) REFERENCES `Master_LINE_OF_BUSINESS` (`LOB_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FFW_LOB_Product_Allocation_Mapping_Master_Product1` FOREIGN KEY (`Master_Product_Product_Key`) REFERENCES `Master_Product` (`Product_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFW_Line_Of_Business`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_Line_Of_Business` (
  `FFW_LOB_Key` int(11) NOT NULL AUTO_INCREMENT,
  `Company_Code` varchar(5) DEFAULT NULL,
  `LOB_Code` varchar(3) NOT NULL,
  `LOB_Description` varchar(100) DEFAULT NULL,
  `FFW_Member_Company_Company_ID` int(11) NOT NULL,
  `Master_LINE_OF_BUSINESS_LOB_Key` int(11) NOT NULL,
  PRIMARY KEY (`FFW_LOB_Key`,`Master_LINE_OF_BUSINESS_LOB_Key`),
  KEY `fk_FFW_LINE_OF_BUSINESS_FFW_Member_Company1_idx` (`FFW_Member_Company_Company_ID`),
  KEY `fk_FFW_LINE_OF_BUSINESS_Master_LINE_OF_BUSINESS1_idx` (`Master_LINE_OF_BUSINESS_LOB_Key`),
  CONSTRAINT `fk_FFW_LINE_OF_BUSINESS_FFW_Member_Company1` FOREIGN KEY (`FFW_Member_Company_Company_ID`) REFERENCES `FFW_Member_Company` (`Company_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FFW_LINE_OF_BUSINESS_Master_LINE_OF_BUSINESS1` FOREIGN KEY (`Master_LINE_OF_BUSINESS_LOB_Key`) REFERENCES `Master_LINE_OF_BUSINESS` (`LOB_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `FFW_Member_Company_Contact_Details`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_Member_Company_Contact_Details` (
  `FFW_Contact_Key` int(11) NOT NULL AUTO_INCREMENT,
  `Contact_ID` varchar(45) DEFAULT NULL,
  `Contact_Name` varchar(100) DEFAULT NULL,
  `Contact_Email_ID` varchar(100) DEFAULT NULL,
  `Contact_Phone_Number` varchar(100) DEFAULT NULL,
  `Company_Code` varchar(5) DEFAULT NULL,
  `Company_Name` varchar(100) DEFAULT NULL,
  `Designation` varchar(45) DEFAULT NULL,
  `FFW_Member_Company_Company_Key` int(11) NOT NULL,
  PRIMARY KEY (`FFW_Contact_Key`),
  KEY `fk_FFW_Member_Company_Contact_Details_FFW_Member_Company1_idx` (`FFW_Member_Company_Company_Key`),
  CONSTRAINT `fk_FFW_Member_Company_Contact_Details_FFW_Member_Company1` FOREIGN KEY (`FFW_Member_Company_Company_Key`) REFERENCES `FFW_Member_Company` (`Company_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFW_Minimum_Premium`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_Minimum_Premium` (
  `Minimum_Premium_Key` int(11) NOT NULL AUTO_INCREMENT,
  `Country_Code` varchar(3) DEFAULT NULL,
  `State_Territory_Code` varchar(3) DEFAULT NULL,
  `Company_Code` varchar(5) DEFAULT NULL,
  `Allocation_Mapping_Code` varchar(45) DEFAULT NULL,
  `Minimum_Premium_USD` float DEFAULT NULL,
  `FFW_Member_Company_Company_Key` int(11) NOT NULL,
  `FFW_Business_Location_Business_Location_Key` int(11) NOT NULL,
  PRIMARY KEY (`Minimum_Premium_Key`),
  KEY `fk_FFW_Minimum_Premium_FFW_Member_Company1_idx` (`FFW_Member_Company_Company_Key`),
  KEY `fk_FFW_Business_Location_Business_Location_Key_idx` (`FFW_Business_Location_Business_Location_Key`),
  CONSTRAINT `fk_FFW_Business_Location_Business_Location_Key` FOREIGN KEY (`FFW_Business_Location_Business_Location_Key`) REFERENCES `FFW_Business_Location` (`Business_Location_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FFW_Minimum_Premium_FFW_Member_Company1` FOREIGN KEY (`FFW_Member_Company_Company_Key`) REFERENCES `FFW_Member_Company` (`Company_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFW_PRODUCT_SUBPRODUCT`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_PRODUCT_SUBPRODUCT` (
  `FFW_Product_Subproduct_LOB_Key` int(11) NOT NULL AUTO_INCREMENT,
  `Company_Code` varchar(45) DEFAULT NULL,
  `Country_Code` varchar(45) DEFAULT NULL,
  `LOB_Code` varchar(45) DEFAULT NULL,
  `LOB_Description` varchar(45) DEFAULT NULL,
  `Product_ID` int(11) NOT NULL,
  `Product_Code` varchar(45) DEFAULT NULL,
  `Product_Name` varchar(100) DEFAULT NULL,
  `Subproduct_ID` varchar(45) NOT NULL,
  `Subproduct_Code` varchar(45) DEFAULT NULL,
  `Subproduct_Name` varchar(100) DEFAULT NULL,
  `Product_Effective_Date` datetime DEFAULT NULL,
  `Product_End_Date` datetime DEFAULT NULL,
  `Allocation_Mapping_Code` varchar(45) DEFAULT NULL,
  `FFW_LINE_OF_BUSINESS_LOB_Key` int(11) NOT NULL,
  `Master_Product_Product_Key` int(11) NOT NULL,
  PRIMARY KEY (`FFW_Product_Subproduct_LOB_Key`,`Master_Product_Product_Key`),
  UNIQUE KEY `uk_Product_SubProduct` (`Country_Code`,`Company_Code`,`Product_Code`,`Subproduct_Code`),
  KEY `fk_FFW_PRODUCT_Master_Product1_idx` (`Master_Product_Product_Key`),
  KEY `fk_FFW_PRODUCT_FFW_LINE_OF_BUSINESS1_idx` (`FFW_LINE_OF_BUSINESS_LOB_Key`),
  CONSTRAINT `fk_FFW_PRODUCT_FFW_LINE_OF_BUSINESS1` FOREIGN KEY (`FFW_LINE_OF_BUSINESS_LOB_Key`) REFERENCES `FFW_Line_Of_Business` (`FFW_LOB_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FFW_PRODUCT_Master_Product1` FOREIGN KEY (`Master_Product_Product_Key`) REFERENCES `Master_Product` (`Product_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFW_Product_Risk_Rating`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_Product_Risk_Rating` (
  `Product_Risk_Rating_Key` int(11) NOT NULL AUTO_INCREMENT,
  `Country_Code` varchar(3) DEFAULT NULL,
  `State_Territory_Code` varchar(3) DEFAULT NULL,
  `Allocation_Mapping_Code` varchar(45) DEFAULT NULL,
  `Relativity` float DEFAULT NULL,
  `Risk_Rating` varchar(20) DEFAULT NULL,
  `FFW_Business_Location_Business_Location_Key` int(11) NOT NULL,
  PRIMARY KEY (`Product_Risk_Rating_Key`),
  KEY `fk_FFW_Product_Risk_Rating_FFW_Business_Location1_idx` (`FFW_Business_Location_Business_Location_Key`),
  CONSTRAINT `fk_FFW_Product_Risk_Rating_FFW_Business_Location1` FOREIGN KEY (`FFW_Business_Location_Business_Location_Key`) REFERENCES `FFW_Business_Location` (`Business_Location_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `FFW_Increased_Limit_Factor`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_Increased_Limit_Factor` (
  `Increased_Limit_Factor_Key` int(11) NOT NULL AUTO_INCREMENT,
  `Allocation_Mapping_Code` varchar(45) DEFAULT NULL,
  `Lower_Limit_USD` decimal(20,2) DEFAULT NULL,
  `Upper_Limit_USD` decimal(20,2) DEFAULT NULL,
  `Lower_ILF` decimal(20,16) DEFAULT NULL,
  `Upper_ILF` decimal(20,16) DEFAULT NULL,
  PRIMARY KEY (`Increased_Limit_Factor_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `Master_TMF_Data`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Master_TMF_Data` (
  `TMF_Data_Key` int(11) NOT NULL AUTO_INCREMENT,
  `Country_Name` varchar(100) DEFAULT NULL,
  `Country_Code_ISO2` varchar(10) DEFAULT NULL,
  `Line_Of_Business` varchar(100) DEFAULT NULL,
  `Type_Of_Tax` varchar(100) DEFAULT NULL,
  `SubClass` varchar(500) DEFAULT NULL,
  `Basis_Of_Calculation` varchar(255) DEFAULT NULL,
  `Admitted_Rate` varchar(255) DEFAULT NULL,
  `Admitted_Regulations_Payable_By` varchar(100) DEFAULT NULL,
  `Admitted_Regulations_Admin_By` varchar(150) DEFAULT NULL,
  `Not_Admitted_Rate` varchar(150) DEFAULT NULL,
  `Not_Admitted_Regulations_Payable_By` varchar(150) DEFAULT NULL,
  `Not_Admitted_Regulations_Admin_By` varchar(150) DEFAULT NULL,
  `Default` varchar(45) DEFAULT NULL,
  `Insert_Date` date DEFAULT NULL,
  PRIMARY KEY (`TMF_Data_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Policy_Tax_Fee`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Policy_Tax_Fee` (
  `Policy_Tax_Fee_Key` int(11) NOT NULL AUTO_INCREMENT,
  `Country_Code` varchar(3) DEFAULT NULL,
  `State_Territory_Code` varchar(3) DEFAULT NULL,
  `Product_Code` varchar(45) DEFAULT NULL,
  `Tax_Type` varchar(100) DEFAULT NULL,
  `Tax_Subclass` varchar(500) DEFAULT NULL,
  `Calculation_Basis` varchar(255) DEFAULT NULL,
  `Tax` varchar(250) DEFAULT NULL,
  `Fee` varchar(250) DEFAULT NULL,
  `Currency_Code` varchar(3) DEFAULT NULL,
  `Admin_Reg_Pay_By` varchar(100) DEFAULT NULL,
  `Admin_Reg_Adm_By` varchar(100) DEFAULT NULL,
  `Not_Adm_Rate` varchar(150) DEFAULT NULL,
  `Not_Adm_Reg_Pay_By` varchar(150) DEFAULT NULL,
  `Not_Adm_Reg_Adm_By` varchar(150) DEFAULT NULL,
  `Default_Sel` varchar(45) DEFAULT NULL,
  `Insert_Date` date DEFAULT NULL,
  PRIMARY KEY (`Policy_Tax_Fee_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `Master_Section_and_Subsection`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Master_Section_and_Subsection` (
  `Section_Subsection_Key` int(11) NOT NULL AUTO_INCREMENT,
  `Section_ID` varchar(3) DEFAULT NULL,
  `Section_Description` varchar(100) DEFAULT NULL,
  `Subsection_ID` varchar(3) DEFAULT NULL,
  `Subsection_Description` varchar(100) DEFAULT NULL,
  `Inclusion_Flag` varchar(1) DEFAULT NULL COMMENT 'A binary flag that specifies if the section/subsection combination can be included as part of the FFW Questionnaire',
  PRIMARY KEY (`Section_Subsection_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFW_Questionaire_Section_Subsection`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_Questionaire_Section_Subsection` (
  `Section_Subsection_Key` int(11) NOT NULL AUTO_INCREMENT,
  `Section_ID` varchar(3) DEFAULT NULL,
  `Section_Description` varchar(100) DEFAULT NULL,
  `Subsection_ID` varchar(3) DEFAULT NULL,
  `Subsection_Description` varchar(100) DEFAULT NULL,
  `Master_Section_and_Subsection_Section_Subsection_Key` int(11) NOT NULL,
  PRIMARY KEY (`Section_Subsection_Key`),
  KEY `fk_FFW_Questionaire_Section_Subsection_Master_Section_and_S_idx` (`Master_Section_and_Subsection_Section_Subsection_Key`),
  CONSTRAINT `fk_FFW_Questionaire_Section_Subsection_Master_Section_and_Sub1` FOREIGN KEY (`Master_Section_and_Subsection_Section_Subsection_Key`) REFERENCES `Master_Section_and_Subsection` (`Section_Subsection_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFW_Formio_Complete_Dataset`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_Formio_Complete_Dataset` (
  `Seq` int(11) NOT NULL AUTO_INCREMENT,
  `Question_Answer_Key` varchar(20) DEFAULT NULL,
  `Question_Key` int(11) DEFAULT NULL,
  `Product_Description` varchar(100) DEFAULT NULL,
  `Subproduct_Description` varchar(100) DEFAULT NULL,
  `Question` varchar(500) DEFAULT NULL,
  `Raw_Question` varchar(500) DEFAULT NULL,
  `Answer_Key` int(11) DEFAULT NULL,
  `Answer` varchar(1500) DEFAULT NULL,
  `Company_Code` varchar(4) DEFAULT NULL,
  `Country_Code` varchar(3) DEFAULT NULL,
  `Company_Name` varchar(255) DEFAULT NULL,
  `Country_Name` varchar(100) DEFAULT NULL,
  `FFW_Member_Company_Company_Key` int(11) DEFAULT NULL,
  `FFW_Business_Location_Business_Location_Key` int(11) DEFAULT NULL,
  PRIMARY KEY (`Seq`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFW_Formio_Complete_GenDataset`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_Formio_Complete_GenDataset` (
  `Seq` int(11) NOT NULL AUTO_INCREMENT,
  `Question_Answer_Key` varchar(20) DEFAULT NULL,
  `Question_Key` int(11) DEFAULT NULL,
  `Product_Description` varchar(100) DEFAULT NULL,
  `Subproduct_Description` varchar(100) DEFAULT NULL,
  `Question` varchar(500) DEFAULT NULL,
  `Raw_Question` varchar(500) DEFAULT NULL,
  `Answer_Key` int(11) DEFAULT NULL,
  `Answer` varchar(1500) DEFAULT NULL,
  `Company_Code` varchar(4) DEFAULT NULL,
  `Country_Code` varchar(3) DEFAULT NULL,
  `Company_Name` varchar(255) DEFAULT NULL,
  `Country_Name` varchar(100) DEFAULT NULL,
  `FFW_Member_Company_Company_Key` int(11) DEFAULT NULL,
  `FFW_Business_Location_Business_Location_Key` int(11) DEFAULT NULL,
  PRIMARY KEY (`Seq`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFW_Formio_Complete_ProdDataset`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_Formio_Complete_ProdDataset` (
  `Seq` int(11) NOT NULL AUTO_INCREMENT,
  `Question_Answer_Key` varchar(20) DEFAULT NULL,
  `Question_Key` int(11) DEFAULT NULL,
  `Product_Description` varchar(100) DEFAULT NULL,
  `Subproduct_Description` varchar(100) DEFAULT NULL,
  `Question` varchar(500) DEFAULT NULL,
  `Raw_Question` varchar(500) DEFAULT NULL,
  `Answer_Key` int(11) DEFAULT NULL,
  `Answer` varchar(1500) DEFAULT NULL,
  `Company_Code` varchar(4) DEFAULT NULL,
  `Country_Code` varchar(3) DEFAULT NULL,
  `Company_Name` varchar(255) DEFAULT NULL,
  `Country_Name` varchar(100) DEFAULT NULL,
  `FFW_Member_Company_Company_Key` int(11) DEFAULT NULL,
  `FFW_Business_Location_Business_Location_Key` int(11) DEFAULT NULL,
  PRIMARY KEY (`Seq`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFW_Formiodata_Q_And_A`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_Formiodata_Q_And_A` (
  `Question_and_Answer_Key` int(11) NOT NULL AUTO_INCREMENT,
  `Company_Code` varchar(5) DEFAULT NULL,
  `Country_Code` varchar(3) DEFAULT NULL,
  `Company_Name` varchar(250) DEFAULT NULL,
  `Question` varchar(1500) DEFAULT NULL,
  `Answer` mediumtext,
  `FFW_Member_Company_Company_Key` int(11) DEFAULT NULL,
  `FFW_Business_Location_Business_Location_Key` int(11) DEFAULT NULL,
  PRIMARY KEY (`Question_and_Answer_Key`),
  KEY `fk_FFW_Survey_Q&A_FFW_Member_Company2_idx` (`FFW_Member_Company_Company_Key`),
  KEY `fk_FFW_Survey_Q&A_FFW_Business_Location2_idx` (`FFW_Business_Location_Business_Location_Key`),
  KEY `Formiodata_compcode` (`Company_Code`),
  KEY `Formiodata_countrycode` (`Country_Code`),
  KEY `Formiodata_question` (`Question`),
  CONSTRAINT `fk_FFW_Survey_Q&A_FFW_Business_Location2` FOREIGN KEY (`FFW_Business_Location_Business_Location_Key`) REFERENCES `FFW_Business_Location` (`Business_Location_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FFW_Survey_Q&A_FFW_Member_Company2` FOREIGN KEY (`FFW_Member_Company_Company_Key`) REFERENCES `FFW_Member_Company` (`Company_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFW_JSON_Data`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_JSON_Data` (
  `SNo` int(11) NOT NULL AUTO_INCREMENT,
  `JSONKey` varchar(1500) DEFAULT NULL,
  `JSONValue` mediumtext,
  `CompanyName` varchar(500) DEFAULT NULL,
  `Company_Code` varchar(45) DEFAULT NULL,
  `Country_Code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `FFW_QA_Generalinformation`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_QA_Generalinformation` (
  `SNo` int(11) NOT NULL AUTO_INCREMENT,
  `Section` varchar(500) DEFAULT NULL,
  `SubSection` varchar(500) DEFAULT NULL,
  `Attribute` varchar(500) DEFAULT NULL,
  `Label` varchar(500) DEFAULT NULL,
  `keyy` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFW_QA_Mappingsheet`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_QA_Mappingsheet` (
  `Mapping_Key` int(11) NOT NULL AUTO_INCREMENT,
  `Question_ID` varchar(10) COLLATE latin1_bin DEFAULT NULL,
  `Section_Code` varchar(3) COLLATE latin1_bin DEFAULT NULL,
  `Subsection_Code` varchar(3) COLLATE latin1_bin DEFAULT NULL,
  `Product_Code` varchar(3) COLLATE latin1_bin DEFAULT NULL,
  `SubProduct_Code` varchar(3) COLLATE latin1_bin DEFAULT NULL,
  `UI_Question` varchar(500) COLLATE latin1_bin DEFAULT NULL,
  `Raw_Question` varchar(500) COLLATE latin1_bin DEFAULT NULL,
  `Raw_Question_key` varchar(500) COLLATE latin1_bin DEFAULT NULL,
  `UI_User_Indicator` varchar(3) COLLATE latin1_bin DEFAULT NULL,
  `Conditions` varchar(250) COLLATE latin1_bin DEFAULT NULL,
  `FFW_Questionaire_Section_Subsection_Section_Subsection_Key` int(11) DEFAULT NULL,
  `Master_Product_Product_Key` int(11) DEFAULT NULL,
  PRIMARY KEY (`Mapping_Key`),
  KEY `fk_sectionsubsec_key_idx` (`FFW_Questionaire_Section_Subsection_Section_Subsection_Key`),
  KEY `fk_prod_key_idx` (`Master_Product_Product_Key`),
  CONSTRAINT `fk_prod_key` FOREIGN KEY (`Master_Product_Product_Key`) REFERENCES `Master_Product` (`Product_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sectionsubsec_key` FOREIGN KEY (`FFW_Questionaire_Section_Subsection_Section_Subsection_Key`) REFERENCES `FFW_Questionaire_Section_Subsection` (`Section_Subsection_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFW_QA_Productcapabilites`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_QA_Productcapabilites` (
  `SNo` int(11) NOT NULL AUTO_INCREMENT,
  `Section` varchar(500) DEFAULT NULL,
  `SubSection` varchar(500) DEFAULT NULL,
  `Attribute` varchar(500) DEFAULT NULL,
  `Type` varchar(500) DEFAULT NULL,
  `Attrbute_type` varchar(500) DEFAULT NULL,
  `Label` varchar(500) DEFAULT NULL,
  `Key` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `FFW_Survey_Q_And_A`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_Survey_Q_And_A` (
  `Question_and_Answer_Key` int(11) NOT NULL AUTO_INCREMENT,
  `Company_Code` varchar(5) DEFAULT NULL,
  `Country_Code` varchar(3) DEFAULT NULL,
  `Product_Code` varchar(3) DEFAULT NULL,
  `SubProduct_Code` varchar(3) DEFAULT NULL,
  `Section_Code` varchar(3) DEFAULT NULL,
  `Subsection_Code` varchar(3) DEFAULT NULL,
  `Question_ID` varchar(10) DEFAULT NULL,
  `Raw_Question` varchar(500) DEFAULT NULL,
  `Raw_Question_key` varchar(500) DEFAULT NULL,
  `UI_Question` varchar(500) DEFAULT NULL COMMENT 'Question reworded to display on the UI. There should be a 1-1 mapping of a raw question to a UI question.',
  `Answer` mediumtext,
  `Conditions` varchar(250) DEFAULT NULL,
  `UI_User_Indicator` varchar(3) DEFAULT NULL,
  `UI_Display_Indicator` char(1) DEFAULT 'Y',
  `FFW_Member_Company_Company_Key` int(11) DEFAULT NULL,
  `FFW_Business_Location_Business_Location_Key` int(11) DEFAULT NULL,
  `FFW_Questionaire_Section_Subsection_Section_Subsection_Key` int(11) DEFAULT NULL,
  `FFW_Master_Product_Product_Key` int(11) DEFAULT NULL,
  PRIMARY KEY (`Question_and_Answer_Key`),
  KEY `fk_FFW_Survey_Q&A_FFW_Member_Company1_idx` (`FFW_Member_Company_Company_Key`),
  KEY `fk_FFW_Survey_Q&A_FFW_Business_Location1_idx` (`FFW_Business_Location_Business_Location_Key`),
  KEY `fk_FFW_Survey_Q&A_FFW_Questionaire_Section_Subsection1_idx` (`FFW_Questionaire_Section_Subsection_Section_Subsection_Key`),
  KEY `fk_survey_product_idx` (`FFW_Master_Product_Product_Key`),
  KEY `companycode_idx` (`Company_Code`,`Country_Code`),
  KEY `sectioncode_idx` (`Section_Code`,`Subsection_Code`),
  KEY `productcode_idx` (`Product_Code`,`SubProduct_Code`),
  CONSTRAINT `fk_FFW_Survey_Q&A_FFW_Business_Location1` FOREIGN KEY (`FFW_Business_Location_Business_Location_Key`) REFERENCES `FFW_Business_Location` (`Business_Location_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FFW_Survey_Q&A_FFW_Member_Company1` FOREIGN KEY (`FFW_Member_Company_Company_Key`) REFERENCES `FFW_Member_Company` (`Company_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FFW_Survey_Q&A_FFW_Questionaire_Section_Subsection1` FOREIGN KEY (`FFW_Questionaire_Section_Subsection_Section_Subsection_Key`) REFERENCES `FFW_Questionaire_Section_Subsection` (`Section_Subsection_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_survey_product` FOREIGN KEY (`FFW_Master_Product_Product_Key`) REFERENCES `Master_Product` (`Product_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFW_FACT_GlobalData_Company_Industry_Mapping`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_FACT_GlobalData_Company_Industry_Mapping` (
  `Product_Mapping_Key` int(11) NOT NULL AUTO_INCREMENT,
  `FACT_Product_Code` varchar(3) NOT NULL,
  `FACT_Product_Description` varchar(100) NOT NULL,
  `FACT_SubProduct_Code` varchar(3) DEFAULT NULL,
  `FACT_SubProduct_Description` varchar(100) DEFAULT NULL,
  `Global_Data_Comp_Industry_Code` varchar(3) DEFAULT NULL,
  `Global_Data_Comp_Industry_Description` varchar(100) DEFAULT NULL,
  `Master_Product_Product_Key` int(11) NOT NULL,
  `Global_Data_Comp_Industry_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Product_Mapping_Key`),
  KEY `FK_Product_IndustryMapping_Master_Product_ProductKey_idx` (`Master_Product_Product_Key`),
  CONSTRAINT `FK_Product_IndustryMapping_Master_Product_ProductKey` FOREIGN KEY (`Master_Product_Product_Key`) REFERENCES `Master_Product` (`Product_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFW_FACT_GlobalData_LOB_Mapping`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_FACT_GlobalData_LOB_Mapping` (
  `FFW_FACT_GlobalData_LOB_Mapping_Key` int(11) NOT NULL AUTO_INCREMENT,
  `FACT_Product_Code` varchar(3) DEFAULT NULL,
  `FACT_Product_Description` varchar(100) DEFAULT NULL,
  `FACT_SubProduct_Code` varchar(3) DEFAULT NULL,
  `FACT_SubProduct_Description` varchar(100) DEFAULT NULL,
  `Global_Data_Segment` varchar(100) DEFAULT NULL,
  `Global_Data_LOB` varchar(100) DEFAULT NULL,
  `Master_Product_Product_Key` int(11) DEFAULT NULL,
  PRIMARY KEY (`FFW_FACT_GlobalData_LOB_Mapping_Key`),
  KEY `FFW_FACT_GlobalData_LOB_Mapping_fk1_idx` (`Master_Product_Product_Key`),
  CONSTRAINT `FFW_FACT_GlobalData_LOB_Mapping_fk1` FOREIGN KEY (`Master_Product_Product_Key`) REFERENCES `Master_Product` (`Product_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFW_FACT_GlobalData_Product_Mapping`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_FACT_GlobalData_Product_Mapping` (
  `Product_Mapping_Key` int(11) NOT NULL AUTO_INCREMENT,
  `FACT_Product_Code` varchar(3) NOT NULL,
  `FACT_Product_Description` varchar(100) NOT NULL,
  `FACT_SubProduct_Code` varchar(3) DEFAULT NULL,
  `FACT_SubProduct_Description` varchar(100) DEFAULT NULL,
  `Global_Data_Product_Code` varchar(3) DEFAULT NULL,
  `Global_Data_Product_Description` varchar(100) DEFAULT NULL,
  `Master_Product_Product_Key` int(11) NOT NULL,
  PRIMARY KEY (`Product_Mapping_Key`),
  KEY `FK_ProdMapping_Master_Product_ProductKey_idx` (`Master_Product_Product_Key`),
  CONSTRAINT `FK_ProdMapping_Master_Product_ProductKey` FOREIGN KEY (`Master_Product_Product_Key`) REFERENCES `Master_Product` (`Product_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFW_FACT_TMF_Product_Mapping`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FFW_FACT_TMF_Product_Mapping` (
  `Product_Mapping_Key` int(11) NOT NULL AUTO_INCREMENT,
  `FACT_LOB` varchar(50) DEFAULT NULL,
  `FACT_Product_Description` varchar(100) DEFAULT NULL,
  `TMF_LOB_Description` varchar(100) DEFAULT NULL,
  `Master_Product_Product_Key` int(11) DEFAULT NULL,
  PRIMARY KEY (`Product_Mapping_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


