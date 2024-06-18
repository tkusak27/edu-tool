#!/bin/bash
# entrypoint.sh

# Exit immediately if a command exits with a non-zero status
set -e

# Run database migrations
python3 project/manage.py makemigrations
python3 project/manage.py migrate

# Run the command passed to the docker run command
exec "$@"
