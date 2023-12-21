# Gunakan image Python sebagai dasar
FROM python:3.10

# Set working directory di dalam container
WORKDIR /app

# Salin file requirements.txt dan install dependencies
COPY requirement.txt .
RUN pip install -r requirement.txt

# Salin seluruh konten aplikasi Flask
COPY . .

# Ekspose port yang digunakan oleh aplikasi Flask
EXPOSE 5000

# Command untuk menjalankan aplikasi saat container dimulai
CMD ["python", "app.py"]