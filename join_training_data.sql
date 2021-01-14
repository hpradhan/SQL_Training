-- example data 
-- table with information on volunteers
CREATE TABLE IF NOT EXISTS `Volunteers` (
  `van_id` int(6),
  `name` varchar(10) ,
  `turf_id` varchar(200) ,
  PRIMARY KEY (`van_id`,`turf_id`)
) ;
INSERT INTO `Volunteers` (`van_id`, `name`, `turf_id`) VALUES
  ('1', 'Jill', '01A'),
  ('2', 'Bob', '01B'),
  ('3', 'Hishi', '01C'),
  ('4', 'Jolly', '01D');

-- table with information on organizers 
CREATE TABLE IF NOT EXISTS `Organizers` (
  `turf_id` varchar(10) ,
  `organzer_name` varchar(10) ,
  `email` varchar(200) ,
  `region_id` varchar(200) ,
  PRIMARY KEY (`turf_id`,`region_id`)
) ;
INSERT INTO `Organizers` (`turf_id`, `organzer_name`, `email`,`region_id`) VALUES
  ('01A', 'Amanda', 'Amanda@gmail.com','1'),
  ('01B', 'Morgan',  'Morgan@gmail.com','2'),
  ('02C', 'Shrija','Shrija@gmail.com','2'),
  ('03D', 'Abi','Abi@gmail.com','3');

-- table with information on regional organizing directors 
create table IF NOT EXISTS `Regionals` (
  `ROD_name` varchar(10) ,
  `email` varchar(200) ,
  `region_id` varchar(200) ,
  PRIMARY KEY (`region_id`)
) ;
INSERT INTO `Regionals` (`ROD_name`, `email`,`region_id`) VALUES
  ( 'Sony', 'Sony@gmail.com','1'),
  ( 'Randall', 'Randall@gmail.com','2'),
  ( 'Sage','Sage@gmail.com','3'),
  ( 'Mike','Mike@gmail.com','4');

-- table with aggergated shift information 
create table IF NOT EXISTS `Shifts` (
  `shift_id` varchar(10) ,
  `van_id` varchar(10) ,
  `shift_status` varchar(200) ,
  PRIMARY KEY (`shift_id`)
) ;
INSERT INTO `Shifts` (`shift_id`,`van_id`, `shift_status`) VALUES
  ( '1','1', 'Completed'),
  ( '2','2', 'No Show' ),
  ( '3','2', 'Completed'),
  ( '4','4', 'No Show'),
  ( '5','1', 'Completed'),
  ( '6','2', 'No Show' ),
  ( '7','1', 'Completed'),
  ( '8','2', 'Scheduled' ),
  ( '9','4', 'Scheduled');
