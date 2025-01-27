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

# docker build -t gcp-django-helloworld:latest .

# gcloud projects add-iam-policy-binding  gcp-docker-cicd \
#     --member=serviceAccount:$(gcloud projects describe  gcp-docker-cicd \
#     --format="value(projectNumber)")-compute@developer.gserviceaccount.com \
#     --role="roles/storage.objectUser"




#     gcloud artifacts repositories create gcp-django-helloworld --repository-format=docker \
#     --location=us-central1 --description="Docker repository"

#     gcloud builds submit --region=us-central1 --tag us-central1-docker.pkg.dev/gcp-docker-cicd/gcp-django-helloworld/gcp-django-helloworld-image:tag1
