
FROM python:3.13-slim

LABEL maintainer="Ahmed Emad Nour"

RUN pip install --no-cache-dir streamlit

WORKDIR /app

COPY app.py /app/app.py

EXPOSE 8501

CMD ["streamlit", "run", "app.py", "--server.address=0.0.0.0"]
