FROM mysql:5.6
COPY db-setup.sh /mysql/db-setup.sh
COPY setup.sql /mysql/setup.sql
RUN /mysql/setup.sh
