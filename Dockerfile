FROM python:3.9-slim
COPY server.py .
CMD ["python", "server.py"]
