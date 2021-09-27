# db2start && db2iupdt -j "TEXT_SEARCH,TEXT_SEARCH_Port" db2inst1 &&  db2 create database Test && db2stop

echo "CREATE DATABASE"
su - db2inst1 -c "db2 create database COM"
echo "CREATE TABLEs"
su - db2inst1 -c "db2 connect to COM && db2 -stvf /var/sqldata/create_tables.sql"
echo "CREATE VIEWS"
su - db2inst1 -c "db2 connect to COM && db2 -stvf /var/sqldata/create_views.sql"
