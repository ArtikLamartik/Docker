FROM ubuntu:latest
RUN apt update && apt install -y python3 python3-pip && apt clean
WORKDIR /app
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
CMD ["py", "-m", "flask", "run", "--host=0.0.0.0"]