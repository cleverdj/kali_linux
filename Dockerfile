FROM kalilinux/kali-rolling

MAINTAINER cleverdj <cleverpdj@gmail.com>

# Install Kali Full
RUN apt-get clean && \
    apt-get update -y && \
    apt-get install -y metasploit-framework

# Some system tools
RUN apt-get install -y unzip vim curl telnet wget python-pip python3-setuptools python3-pip net-tools bash-completion iputils-tracepath npm 

# Hack Tools
RUN apt-get install -y nmap sqlmap nikto lynis wpscan

# XSStrike
RUN git clone https://github.com/s0md3v/XSStrike.git && \
    cd XSStrike && \
    pip3 install -r requirements.txt

CMD alias ll='ls -al' 
