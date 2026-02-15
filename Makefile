.PHONY: run local docker

# Run the app locally (uv + Python)
local:
	uv run python manage.py runserver

# Run the app and Postgres via Docker Compose
docker:
	docker compose up --build -d