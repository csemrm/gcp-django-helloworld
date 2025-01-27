# Use official Python image from Docker Hub
FROM python:slim-bullseye

# Set working directory in the container
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy project files
COPY . .

# Expose the application port
EXPOSE 8000

# Run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
