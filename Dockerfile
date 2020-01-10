FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive

LABEL developer="Mauricio Nunes<mnunes@vialink.com.br>"

ARG git=gitlab.vialink.com.br/vialink/conf-linux.git
ARG userGit
ARG passGit

ENV git_conf_linux=${git}
ENV user=${userGit}
ENV password=${passGit}

RUN apt-get update && apt-get install zsh git -y

COPY entrypoint.sh ./entrypoint.sh

ENTRYPOINT [ "bash", "entrypoint.sh" ]