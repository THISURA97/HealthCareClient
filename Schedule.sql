127.0.0.1/test/schedule/		http://localhost:8080/phpmyadmin/tbl_sql.php?db=test&table=schedule
Your SQL query has been executed successfully.

SHOW CREATE TABLE schedule



schedule	CREATE TABLE `schedule` (
  `ScheduleID` int(10) NOT NULL AUTO_INCREMENT,
  `ScheduleDate` varchar(50) NOT NULL,
  `ScheduleTime` varchar(50) NOT NULL,
  `ScheduleType` varchar(50) NOT NULL,
  `ScheduleDoc` varchar(50) NOT NULL,
  `ScheduleHos` varchar(50) NOT NULL,
  PRIMARY KEY (`ScheduleID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1	
