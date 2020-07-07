FROM kalilinux/kali-rolling

MAINTAINER cleverdj <cleverpdj@gmail.com>

# apt-update
RUN apt-get clean && \
    apt-get update -y

# Some system tools
RUN apt-get install -y unzip vim curl telnet wget python-pip python3-setuptools python3-pip net-tools bash-completion iputils-tracepath

# Hack Tools
RUN apt-get install -y nmap sqlmap nikto lynis wpscan

# XSStrike
RUN git clone https://github.com/s0md3v/XSStrike.git && \
    pip3 install -r XSStrike/requirements.txt

# Whatweb
RUN git clone https://github.com/urbanadventurer/WhatWeb.git

# BlackWidow
RUN git clone https://github.com/1N3/BlackWidow.git && \
    pip2 install -r BlackWidow/requirements.txt

# Exploit-DB
RUN apt-get install -y exploitdb && \
    searchsploit -u

# metasploit
RUN apt-get install -y metasploit-framework

# ENV
RUN echo 'alias ll="ls -al"' >> ~/.bashrc
