CREATE TABLE `marks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marks` int DEFAULT NULL,
  `grade` varchar(1) GENERATED ALWAYS AS ((case when (`marks` between 90 and 100) then _utf8mb4'A' when (`marks` between 80 and 90) then _utf8mb4'B' when (`marks` between 0 and 80) then _utf8mb4'C' else NULL end)) VIRTUAL,
  PRIMARY KEY (`id`),
  CONSTRAINT `check_marks` CHECK ((`marks` between 0 and 100))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
