.PHONY: run local docker pg

# Run the app locally (uv + Python)
local:
	uv run python manage.py runserver

# Setup the database locally
setup-db:
	createdb -U postgres -h localhost django

# Run the app and Postgres via Docker Compose
docker:
	docker compose up --build -d

# Run an instance of postgres on docker
pg:
	docker run --name pg -p 5432:5432 -e POSTGRES_PASSWORD=password -e POSTGRES_DB=django -d postgres