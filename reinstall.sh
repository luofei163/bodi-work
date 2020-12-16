systemctl stop httpd
systemctl stop postgresql
rm -rf /var/lib/pgsql/data
#dnf install -y postgresql-server
dnf reinstall -y postgresql-server
postgresql-setup --initdb
cp -rf pg_hba.conf /var/lib/pgsql/data/pg_hba.conf
systemctl restart postgresql
sh create_user.sh
/usr/bin/initialize_bodhi_db production.ini





