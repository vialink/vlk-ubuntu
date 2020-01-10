FROM ubuntu:18.04

LABEL developer="Mauricio Nunes<mnunes@vialink.com.br>"

ARG git=https://gitlab.vialink.com.br/vialink/conf-linux.git
ARG userGit
ARG passGit

ENV git_conf_linux=git
ENV user=userGit
ENV password=passGit

RUN apt-get update && apt-get install zsh git -y

RUN git clone https://${user}:${password}@${git_conf_linux}

WORKDIR conf-linux/

RUN /bin/bash -c conf-linux.sh && /bin/bash -c conf-zsh.sh

ENTRYPOINT [ "bash" ]