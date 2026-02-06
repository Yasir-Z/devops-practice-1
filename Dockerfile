# Use a slim Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy requirements and install
# (Note: For this practice, we can install directly)
RUN pip install flask pytest

# Copy the app code
COPY . .

# Expose the port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
