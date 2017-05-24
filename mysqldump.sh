#!/bin/sh

# Database info
DB_USER="root"
DB_PASS="password"
DB_HOST="127.0.0.1"
DB_NAME="pipi_blog"

# Others vars
BIN_DIR="/webroot/server/mysql/bin"            #the mysql bin path
BCK_DIR="/mnt/mysqlBack"    #the backup file directory
DATE=$(date +%Y%m%d%H%M%S)

# TODO
$BIN_DIR/mysqldump --opt -u$DB_USER -p$DB_PASS -h$DB_HOST $DB_NAME > $BCK_DIR/db_$DATE.sql

#还原数据库
#用mysql-front导入前一天的 *.sql 文件即可恢复数据
