# Build, test, deploy the Lektomat.
#
check:
	poetry run python -Wa manage.py check

migrate:
	poetry run python -m for_runners_project migrate

run:
	poetry run python -m for_runners_project runserver
	# poetry run python manage.py runserver_plus --cert-file cert.crt

run_all: check migrate run

test: check
	poetry run python manage.py test

deploy_staging: check
	echo "Not available, yet."

deploy_prod: check
	echo "Not available, yet."
