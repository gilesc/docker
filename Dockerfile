FROM base/archlinux
MAINTAINER mail@corygil.es

RUN pacman -Syu --noconfirm vim python python-pip python-numpy python-scipy python-matplotlib nginx
RUN pip install ipython cython pytz bottleneck bottle
RUN pip install pandas
