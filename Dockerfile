FROM mysql:5.6
COPY db-setup.sh /mysql/db-setup.sh
COPY studentapp.sql /mysql/studentapp.sql
RUN chmod -R 777 /mysql/db-setup.sh
RUN /mysql/db-setup.sh
