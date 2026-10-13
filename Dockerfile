# 1. Use an official lightweight Python base image
FROM python:3.11-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy only the dependency file first to leverage Docker caching
COPY requirements.txt .

# 4. Install dependencies without storing the cache (keeps image size small)
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of the application source code into the container
COPY . .

# 6. Expose the port the app runs on
EXPOSE 5000

# 7. Define the default command to run your application
CMD ["python", "app.py"]
