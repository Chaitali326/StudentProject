# Use Python base image
FROM python:3.8-alpine

# Set working directory
WORKDIR /app

# Install necessary build tools and dependencies
RUN apk add --no-cache gcc musl-dev python3-dev libffi-dev

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Run the app
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
