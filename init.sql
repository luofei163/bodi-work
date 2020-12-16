BEGIN WORK;

ALTER USER dbuser_bodhi with password 'dbuser_bodhi';
GRANT ALL PRIVILEGES ON DATABASE db_bodhi TO dbuser_bodhi; 

COMMIT;

