#!/bin/bash
SQL_FILES="/docker-entrypoint-initdb.d/*.sql"
MY_PWD=$PWD
cd /tmp
sed -i 's/\$USERNAME\$/'"${CSXUSER=csx-devel}"'/g' $SQL_FILES
sed -i 's/\$DOMAIN\$/'"${CSXDOMAIN=ist.psu.edu}"'/g' $SQL_FILES
sed -i 's/\$PASSWORD\$/'"${CSXPASS=csx-devel}"'/g' $SQL_FILES
sed -i 's/\$SITEID\$/'"${SITEID=10}"'/g' $SQL_FILES
sed -i 's/\$DEPID\$/'"${DEPID=1}"'/g' $SQL_FILES
cd $MY_PWD

