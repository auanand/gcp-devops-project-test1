FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
copy . .
EXPOSE 8000
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]
