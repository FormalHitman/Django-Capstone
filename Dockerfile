# Use an official Python runtime as a parent image
FROM pypy:latest

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Run your application
CMD [ "python", "manage.py", "runserver" , "0.0.0.0:8000"]