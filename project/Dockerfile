# Use an official Python runtime as a parent image
FROM python:3.12.4

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
COPY requirements.txt /code/
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# Copy project files
COPY . /code/

# Expose port for Django
EXPOSE 8000

# Command to run Django development server
CMD ["python", "project/manage.py", "runserver", "0.0.0.0:8000"]
