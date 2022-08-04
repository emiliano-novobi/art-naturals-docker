source ./scripts_env

docker stop $ODOO_CONTAINER
docker exec -t $DB_CONTAINER psql -U odoo -d postgres -c "DROP DATABASE IF EXISTS db_test"
docker exec -t $DB_CONTAINER psql -U odoo -d postgres -c "CREATE DATABASE db_test"
docker start $ODOO_CONTAINER
docker exec -t $ODOO_CONTAINER $ODOO_BIN -i all -d db_test --stop-after-init
