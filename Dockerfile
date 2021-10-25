FROM python:3.7
WORKDIR /project
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
RUN ./download.sh
CMD ./train.sh
