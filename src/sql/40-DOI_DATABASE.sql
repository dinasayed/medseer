#
#  DOI server database spec
#
#  IGC
#

CREATE DATABASE csxdoi CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE csxdoi;


CREATE TABLE doi_granted (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	doi_type INT NOT NULL,
	bin INT UNSIGNED NOT NULL,
	rec INT UNSIGNED NOT NULL,
	assigned TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(id),
	INDEX(doi_type),
	INDEX(bin),
	INDEX(rec),
	INDEX(assigned)
);


CREATE TABLE configuration (
	deployment VARCHAR(15) NOT NULL,
	site_id INT UNSIGNED NOT NULL,
	deployment_id INT UNSIGNED NOT NULL,
	PRIMARY KEY(deployment)
);


GRANT ALL ON csxdoi.doi_granted TO '$USERNAME$'@'$DOMAIN$';-- IDENTIFIED BY '$PASSWORD$';

GRANT SELECT ON csxdoi.configuration TO '$USERNAME$'@'$DOMAIN$';-- IDENTIFIED BY '$PASSWORD$';

INSERT INTO configuration VALUES ("DEPLOYMENT", $SITEID$, $DEPID$);
