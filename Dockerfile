FROM python:3.7

WORKDIR /usr/src/proto-face-recognition

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

CMD [ "python", "-m", "helloworld" ]
