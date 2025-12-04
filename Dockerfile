# Stage 1: Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /code

# Copy the requirements file into the container
COPY requirements.txt /code/

# Install the necessary dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . /code

# Command to run the application using uvicorn (listens on port 80 inside the container)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]