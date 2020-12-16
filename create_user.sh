useradd dbuser_bodhi -M &> /dev/null
passwd -d dbuser_bodhi &> /dev/null
su postgres -c "createuser -S -D -R dbuser_bodhi;createdb -O dbuser_bodhi db_bodhi" &> /dev/null
su dbuser_bodhi -c "psql db_bodhi dbuser_bodhi < init.sql" 2>&1 /dev/null

