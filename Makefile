.PHONY: test

console:
	@docker-compose exec app iex -S mix

db-console:
	@docker-compose exec postgre psql -U livrodealemao

db-migrate:
	@docker-compose exec app mix ecto.migrate

db-rollback:
	@docker-compose exec app mix ecto.rollback

db-reset:
	@docker-compose exec app mix ecto.reset

restart:
	@docker-compose restart app

shell:
	@docker-compose exec app /bin/sh

test:
	@docker-compose exec app mix test

update:
	@docker-compose exec app mix deps.update --all
