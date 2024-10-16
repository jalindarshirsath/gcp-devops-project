# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
#COPY requirements.txt requirements.txt
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 8080

# Run app.py when the container launches
CMD ["python", "app.py"]

# FROM python:3.12.7-slim

# WORKDIR /app

# COPY requirements.txt requirements.txt
# RUN pip3 install -r requirements.txt

# COPY . .
#CMD ["python", "-m", "Flask", "run", "--host=0.0.0.0"]