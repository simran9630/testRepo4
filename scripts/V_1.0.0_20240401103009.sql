CREATE TABLE `marks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marks` int DEFAULT NULL,
  `grade` varchar(1) GENERATED ALWAYS AS ((case when (`marks` between 90 and 100) then _utf8mb4'A' when (`marks` between 80 and 90) then _utf8mb4'B' when (`marks` between 0 and 80) then _utf8mb4'C' else NULL end)) VIRTUAL,
  `subject` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `check_marks` CHECK ((`marks` between 0 and 100))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `student` (
  `id` int NOT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `height` int DEFAULT NULL,
  `marksId` int DEFAULT NULL,
  UNIQUE KEY `for_student` (`firstName`),
  UNIQUE KEY `for_std` (`firstName`),
  UNIQUE KEY `for_stdE` (`firstName`),
  KEY `idx_lastname` (`lastName`,`firstName`),
  KEY `idx_name` (`firstName`),
  KEY `fk` (`marksId`),
  CONSTRAINT `fk` FOREIGN KEY (`marksId`) REFERENCES `marks` (`id`),
  CONSTRAINT `student_chk_1` CHECK ((`height` > 18))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
