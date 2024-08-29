FROM base:latest as setup
FROM maven:latest

RUN apt-get update && apt-get install -y zsh

ENV SHELL=/bin/zsh

COPY --from=setup /root/. /root/
COPY --from=setup /usr/local/bin/starship /usr/local/bin/starship

WORKDIR /app