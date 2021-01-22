#
#  CiteSeerX crawl database
#
#  Dina Sayed
#
CREATE DATABASE citeseerx_crawl CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

GRANT ALL ON citeseerx_crawl.* TO '$USERNAME$'@'$DOMAIN$';-- IDENTIFIED BY '$PASSWORD$';
