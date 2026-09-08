#!/bin/bash

sleep 5
python manage.py migrate
python manage.py handlesuperuser
python manage.py loaddata address.json order.json product-categories.json products.json
npm run build
gunicorn --bind 0.0.0.0:8000 netdelivery.wsgi