# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed dependencies specified in requirements.txt
RUN pip install -r requirements.txt

# Copy the entire project directory into the container
COPY . .

# Run your Robot Framework test script when the container launches
CMD ["robot", "your_test_suite.robot"]
