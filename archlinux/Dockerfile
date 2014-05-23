FROM base/archlinux
MAINTAINER mail@corygil.es

RUN pacman -Sy --noconfirm binutils
RUN \
    cd /tmp && \
    curl -o aur.sh aur.sh && \
    chmod +x aur.sh && \
    ./aur.sh -si --asroot --noconfirm packer
RUN packer -S --noconfirm update-mirrorlist
ADD update-mirrorlist.conf /etc/pacman.d/update-mirrorlist.conf
RUN update-mirrorlist
RUN pacman -Syu --noconfirm base-devel
