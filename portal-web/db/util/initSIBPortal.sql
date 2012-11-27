-- Table department DDL definition
-- ----------------------------
--  Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `iso_department_code` char(8) DEFAULT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `concept_count` int(10) DEFAULT NULL,
  `species_count` int(10) DEFAULT NULL,
  `occurrence_count` int(10) DEFAULT NULL,
  `occurrence_coordinate_count` int(10) DEFAULT NULL,
  `min_latitude` float DEFAULT NULL,
  `max_latitude` float DEFAULT NULL,
  `min_longitude` float DEFAULT NULL,
  `max_longitude` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- Include department key in lookup_cell_density_type table
insert into lookup_cell_density_type (cd_key, cd_value) values (7,'department')

-- Include all the departments in department table
insert INTO department (department.id, department.iso_department_code, department.department_name) VALUES (1, 'CO-AMA','Amazonas'),(2,'CO-ANT','Antioquia'),(3,'CO-ARA','Arauca'),(4,'CO-ATL','Atlántico'),(5,'CO-BOL','Bolívar'),(6,'CO-BOY','Boyacá'),(7,'CO-CAL','Caldas'),(8,'CO-CAQ','Caquetá'),(9,'CO-CAS','Casanare'),(10,'CO-CAU','Cauca'),(11,'CO-CES','Cesar'),(12,'CO-CHO','Chocó'),(13,'CO-COR','Córdoba'),(14,'CO-CUN','Cundinamarca'),(15,'CO-DC','Bogotá Distrito Capital'),(16,'CO-GUA','Guainía'),(17,'CO-GUV','Guaviare'),(18,'CO-HUI','Huila'),(19,'CO-LAG','La Guajira'),(20,'CO-MAG','Magdalena'),(21,'CO-MET','Meta'),(22,'CO-NAR','Nariño'),(23,'CO-NSA','Norte de Santander'),(24,'CO-PUT','Putumayo'),(25,'CO-QUI','Quindío'),(26,'CO-RIS','Risaralda'),(27,'CO-SAN','San Andrés, Providencia y Santa Catalina'),(28,'CO-SAP','Santander'),(29,'CO-SUC','Sucre'),(30,'CO-TOL','Tolima'),(31,'CO-VAC','Valle del Cauca'),(32,'CO-VAU','Vaupés'),(33,'CO-VID','Vichada')