# Use the official Python image from Docker Hub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

RUN yum install java -y

# Copy the Python script to the container's working directory
COPY hello.py /app/

# Install Flask inside the container
RUN pip install flask

# Expose port 8080 to allow access to the app
EXPOSE 8087

# Command to run the Python script
CMD ["python", "hello.py"]
i
