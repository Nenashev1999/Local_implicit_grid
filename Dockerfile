FROM ubuntu:20.04
WORKDIR /project
RUN apt-get update && apt-get install -y python3 
RUN apt-get -y install python3-pip
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN  apt install -y wget
RUN  apt install -y unzip
COPY . .
CMD ["bash"]
RUN ./download.sh
