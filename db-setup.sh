#!/bin/bash
set -e
service mysql start
mysql -uroot -ppassword < /mysql/studentapp.sql
#service mysql stop
