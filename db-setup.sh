#!/bin/bash
set -e
service mysql start
mysql < /mysql/studentapp.sql
#service mysql stop
