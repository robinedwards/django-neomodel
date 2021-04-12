#!/bin/bash -xe
cd tests
cat <<EOF |
from django.db import IntegrityError
try:
  python manage.py install_labels
except IntegrityError:
  print("Already installed")
EOF

python manage.py migrate # Apply database migrations
python manage.py runserver 0.0.0.0:8000

