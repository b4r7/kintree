FROM python:3.11-slim

RUN apt-get update
RUN apt-get --yes install git 
RUN git clone https://github.com/sparkmicro/Ki-nTree.git kintree
RUN apt-get -y purge git

WORKDIR /kintree

RUN pip install -r requirements.txt

EXPOSE 8754

ENTRYPOINT ["flet"]
CMD [ "run", "--web", "--port", "8754", "./kintree_gui.py"]