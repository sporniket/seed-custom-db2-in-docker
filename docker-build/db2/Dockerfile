FROM ibmcom/db2:11.5.0.0a

RUN mkdir /var/custom
RUN mkdir /var/sqldata

COPY createschema.sh /var/custom
COPY create_tables.sql /var/sqldata
COPY create_views.sql /var/sqldata

RUN chmod a+x /var/custom/createschema.sh
RUN chmod a+x /var/sqldata/create_tables.sql
RUN chmod a+x /var/sqldata/create_views.sql
