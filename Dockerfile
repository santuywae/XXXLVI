# We're using Ubuntu 20.10
FROM liualvinas24/docker:groovy

#
# Clone repo and prepare working directory
#
RUN git clone -b XXXLVI https://github.com/santuywae/XXXLVI /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/santuywae/XXXLVI/XXXLVI/requirements.txt

CMD ["python3","-m","userbot"]
