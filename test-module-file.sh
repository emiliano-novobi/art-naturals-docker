source ./scripts_env

docker exec -t $ODOO_CONTAINER $ODOO_BIN -d db_test -p 8001 --stop-after-init -i $1 --test-file /opt/odoo/customized_addons/$1/tests/$2
