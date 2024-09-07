# Django Docker Caddy starter

## Environment Variables

To run the project, follow these steps:
1. Copy `.env.example` to `.env`:
```bash
cp .env.example .env
```

2. Edit `.env` to fill in your specific details, such as `SECRET_KEY`, `ALLOWED_HOSTS`, and database credentials.

3. Build and start the Docker containers:
```bash
docker compose up -d --build
```

4. Access the application at `https://localhost`.