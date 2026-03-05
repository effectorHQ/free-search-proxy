FROM python:3.9

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose API port
EXPOSE 8000

# Run Gunicorn server
CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]
