#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt

python django_todo/manage.py collectstatic --no-input
python django_todo/manage.py migrate
