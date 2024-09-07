#!/bin/bash

set -e

python manage.py migrate --noinput

GUNICORN_WORKERS=${GUNICORN_WORKERS:-3}
GUNICORN_CMD="gunicorn --bind 0.0.0.0:8000 core.wsgi:application"

if [ "$DJANGO_ENV" = "production" ]; then
  python manage.py collectstatic --noinput
  exec $GUNICORN_CMD --workers=$GUNICORN_WORKERS
else
  exec $GUNICORN_CMD --log-level debug --reload --access-logfile - --error-logfile -
fi