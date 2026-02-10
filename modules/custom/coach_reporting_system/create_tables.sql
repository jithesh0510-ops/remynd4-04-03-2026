-- Create missing tables for coach reporting system
-- Run this SQL script in your database

-- Table for pre/post training data
CREATE TABLE IF NOT EXISTS `qs_employee_prepost_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `pre` float DEFAULT NULL,
  `post` float DEFAULT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `questionnaire_id` int(10) unsigned NOT NULL,
  `created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_company` (`employee_id`, `company_id`),
  KEY `questionnaire` (`questionnaire_id`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table for on-the-job progress data
CREATE TABLE IF NOT EXISTS `qs_emp_lagard_starts` (
  `lagard_starts_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `target_forecasted` float DEFAULT NULL,
  `target_achieved` float DEFAULT NULL,
  `created` varchar(255) NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `questionnaire_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`lagard_starts_id`),
  KEY `employee_company` (`employee_id`, `company_id`),
  KEY `questionnaire` (`questionnaire_id`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
