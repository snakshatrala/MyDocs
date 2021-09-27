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
  `Source_Last_Extract_Date` datetime DEFAULT NULL,
  PRIMARY KEY (`AuditKey`)
)
;
