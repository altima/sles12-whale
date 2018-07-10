FROM suse/sles12:latest

LABEL MAINTAINER=altima

RUN zypper --gpg-auto-import-keys ref -s
RUN zypper -n in vim \
                 wget \
                 tar \
                 make \ 
                 gcc \
                 git-core

RUN zypper -n up

RUN mkdir /srv