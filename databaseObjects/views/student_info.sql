CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_info` AS select `student`.`firstName` AS `firstName`,`student`.`lastName` AS `lastName` from `student`;

