FROM python:3.13-slim

COPY . .

RUN uv pip install -r pyproject.toml

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]