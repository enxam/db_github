-- as root user perform following commands,
-- in order to create database and grant rights
-- create database if not exists lab_db;
-- grant all on lab_db.* to guest@localhost;

-- execute following command in mysql to use the database
-- use lab_db;

create table if not exists `trainings` (
  `subject` varchar(150) not null,
  `duration_hours` int not null,
  `training_id` int auto_increment,
  primary key(`training_id`)
);

create table if not exists `lab_members` (
  `employee_id` varchar(15) not null,
  `name` varchar(45) not null,
  `last_name` varchar(100) not null,
  `birth_date` date not null,
  `training` varchar(150),
  primary key(`employee_id`)
);

create table `training_lab_members` (
  `id` int auto_increment,
  `employee_id` varchar(15) not null,
  `training_id` int not null,
  primary key(`id`),
  foreign key(`employee_id`)
    references `lab_members`(`employee_id`),
  foreign key(`training_id`)
    references `trainings`(`training_id`)
);

create table if not exists `equipment` (
  `serial_nr` varchar(50) not null,
  `name` varchar(50) not null,
  `manufacturer` varchar(50) not null,
  `purchase_date` date not null,
  primary key(`name`)
);

create table if not exists `experiments` (
  `experiment_nr` int,
  `name` varchar(100) not null,
  `performed_by` varchar(15) not null,
  `equipment_used` varchar(50),
  `start_date` date not null,
  primary key(`name`),
  foreign key(`performed_by`)
    references `lab_members`(`employee_id`),
  foreign key(`equipment_used`)
    references `equipment`(`name`)
 );

create table if not exists `results` (
  `directory` varchar(50) not null,
  `experiment` varchar(100) not null,
  `status` enum('open','fail','success') not null,
  primary key(`directory`),
  foreign key(`experiment`)
    references `experiments`(`name`)
);

insert into `trainings` (`subject`, `duration_hours`, `training_id`) values
  ('cell culture', 72, 1),
  ('PCR', 2, 2),
  ('SDS-PAGE gel', 2, 3),
  ('TECAN evo', 24, 4),
  ('miniprep', 1, 5),
  ('maxiprep', 4, 6),
  ('FACS', 6, 7),
  ('microscopy', 1, 8),
  ('western blotting', 18, 9);

insert into `lab_members` (`employee_id`, `name`, `last_name`, `birth_date`) values
  ('u0108082', 'Maxine', 'Vanvuchelen', '1992-08-14'),
  ('u0059632', 'Lizette', 'Vanberckelaer', '1958-05-05'),
  ('u0106056', 'Peter', 'Vervaeke', '1985-07-29'),
  ('u0125659', 'Nur', 'Atak', '1997-05-16'),
  ('u0076423', 'Jos', 'Peeters', '1962-03-20');

insert into `training_lab_members` (`id`, `employee_id`, `training_id`) values
  (1, 'u0108082', 1),
  (2, 'u0108082', 2),
  (3, 'u0059632', 1),
  (4, 'u0059632', 2),
  (5, 'u0059632', 7),
  (6, 'u0125659', 2),
  (7, 'u0106056', 6),
  (8, 'u0108082', 4),
  (9, 'u0108082', 8),
  (10, 'u0059632', 8),
  (11, 'u0106056', 8),
  (12, 'u0125659', 8);

insert into `equipment` (`serial_nr`, `name`, `manufacturer`, `purchase_date`) values
  ('s123456', 'TECAN evo 200', 'TECAN', '2001-06-18'),
  ('156-456', 'PCR machine', 'Biowest', '2015-07-11'),
  ('r563156789', 'flow cabinet', 'Thermo Fisher', '1999-02-15'),
  ('c1236', 'centrifuge', 'Thermo Fisher', '2001-05-16'),
  ('g5689', 'gelstation', 'BioRad', '2000-07-17'),
  ('b7562', 'western blot station', 'BioRad', '2000-07-17'),
  ('c45678910', 'FACSCanto', 'BD Biosciences', '2005-10-10');

insert into `experiments` (`experiment_nr`, `name`, `performed_by`, `equipment_used`, `start_date`) values
  (1, 'PCR1', 'u0108082', 'PCR machine', '2017-11-08'),
  (2, 'library screening', 'u0108082', 'flow cabinet', '2018-02-06'),
  (3, 'lentiviral library duplication', 'u0108082', 'TECAN evo 200', '2018-03-02'),
  (4, 'run gel', 'u0125659', 'gelstation', '2018-04-16'),
  (5, 'western blot', 'u0125659', 'western blot station', '2018-04-16'),
  (6, 'maxiprep', 'u0106056', 'centrifuge', '2018-06-12'),
  (7, 'PCR2', 'u0059632', 'PCR machine', '2018-08-14'),
  (8, 'cloning', 'u0106056', 'centrifuge', '2019-03-15');

insert into `results` (`directory`, `experiment`, `status`) values
  ('PCR1_results', 'PCR1', 'fail'),
  ('lib_screening_results', 'library screening', 'open'),
  ('lentiviral_libraries', 'lentiviral library duplication', 'success'),
  ('gel_results', 'run gel', 'success'),
  ('western_blot_results', 'western blot', 'success'),
  ('maxipreps', 'maxiprep', 'success'),
  ('PCR2_results', 'PCR2', 'success'),
  ('bacterial_clonings', 'cloning', 'fail');