FROM kalilinux/kali-rolling

MAINTAINER cleverdj <cleverpdj@gmail.com>

# Install Kali Full
RUN apt-get clean && \
    apt-get update -y && \
    apt-get install -y metasploit-framework

# Some system tools
RUN apt-get install -y unzip vim curl telnet wget python-pip python3-setuptools python3-pip net-tools bash-completion iputils-tracepath

# Hack Tools
RUN apt-get install -y nmap sqlmap nikto lynis wpscan

# XSStrike
RUN git clone https://github.com/s0md3v/XSStrike.git && \
    cd XSStrike && \
    pip3 install -r requirements.txt

# Whatweb
RUN git clone https://github.com/urbanadventurer/WhatWeb.git

# BlackWidow
RUN git clone https://github.com/1N3/BlackWidow.git
WORKDIR BlackWidow
RUN pip2 install -r requirements.txt
