# update go.mod file
 * docker compose run --rm app go mod tidy
# init air
 * docker compose run --rm app air init
# run migrations
 * docker compose --profile tools run migrate -> runs up migrations
 * docker compose --profile tools run migrate down -> runs down migrations
# create migrations
 * docker compose --profile tools run create-migration <migration_name>
# enter docker db
 * docker compose exec db psql -U local-dev -d api