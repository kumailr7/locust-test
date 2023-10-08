# Use the official Python image as the base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the local app.py file into the container at /app
COPY app.py .
COPY requirement.txt .

# Install Flask
RUN pip upgrade && \
    pip install -r requirement.txt

# Expose port 5009 to the outside world
EXPOSE 5009

# Define the command to run your app
CMD ["python", "app.py"]
