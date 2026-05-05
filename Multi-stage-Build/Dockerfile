# stage 1
FROM python:3.11 AS builder

WORKDIR /app

# Install dependencies

COPY requirements.txt .

RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

# Stage-2 Build

FROM python:3.11-slim

WORKDIR /app

RUN useradd -m appuser

# Copy only installed dependices in builder

COPY --from=builder /install /usr/local

COPY /app .

# set permissions

RUN chown -R appuser:appuser /app

USER appuser

EXPOSE 5000

CMD [ "gunicorn", "--bind", "0.0.0.0:5000", "app:app" ]
