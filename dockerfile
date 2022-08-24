# base os image
FROM centos:7.7.1908

# standard update
RUN yum update -y

# encode
ENV LC_CTYPE "en_US.UTF-8"
ENV LANG "en_US.UTF-8"

# getting chromedriver
COPY chrome-download-file.txt /etc/yum.repos.d/google-chrome.repo
RUN yum install -y google-chrome-stable
RUN yum install -y unzip
RUN wget -N https://chromedriver.storage.googleapis.com/2.35/chromedriver_linux64.zip -P ~/
RUN unzip ~/chromedriver_linux64.zip -d ~/
RUN rm ~/chromedriver_linux64.zip
RUN mv -f ~/chromedriver /usr/local/bin/chromedriver
RUN chown root:root /usr/local/bin/chromedriver
RUN chmod 0755 /usr/local/bin/chromedriver

# bot dependencies
RUN yum install -y python3
RUN yum install -y gcc
RUN yum install -y python3-devel
RUN yum install -y xorg-x11-server-Xvfb
RUN pip3 install pyvirtualdisplay
RUN pip3 install discord
RUN pip3 install selenium

# run bot
COPY . /code
WORKDIR /code/py
