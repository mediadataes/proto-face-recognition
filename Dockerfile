FROM python:3.7

WORKDIR /usr/src/proto-face-recognition

RUN apt-get update \
  && apt-get install -y --no-install-recommends cmake libopencv-dev \
  && rm -rf /var/lib/apt/lists/*

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

CMD [ "python", "-m", "helloworld" ]
