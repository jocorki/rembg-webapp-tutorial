FROM python:3.13

COPY app/u2net.onnx /home/.u2net/u2net.onnx

COPY app/ /app

WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5100

CMD ["python", "app.py"]