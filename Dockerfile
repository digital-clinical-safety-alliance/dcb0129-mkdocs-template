# Base Docker image: Official Python 3.12 (latest stable as at time of commit)
# Base OS: Debian 12 Bookworm (latest stable as at time of commit)
FROM python:3.12-bookworm

# Set 'build-time' environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Extra packages required for Material for MkDocs plugins (dependency for git and pdf plugins)
RUN apt-get update &&\
    apt install -y python3-cffi python3-brotli libpango-1.0-0 libpangoft2-1.0-0

# Add requirements
COPY requirements.txt /app/requirements.txt

# Set working directory for requirements installation
WORKDIR /app/requirements/

# Run installation of requirements
RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt

# Set safe working directory for git
RUN git config --global --add safe.directory /app

# Set working directory back to main app
WORKDIR /app/

# Copy application code into image
# (Excludes any files/dirs matched by patterns in .dockerignore)
COPY . /app/

