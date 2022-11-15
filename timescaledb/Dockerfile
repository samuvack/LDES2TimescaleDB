FROM timescale/timescaledb-ha:pg14-latest

COPY init_db.sql /docker-entrypoint-initdb.d/01-init_db.sql
COPY iow.sql /docker-entrypoint-initdb.d/02-iow.sql