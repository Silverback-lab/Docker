
FROM ubuntu:focal

ENV DEBIAN_FRONTEND=noninteractive 

RUN apt update \
    && apt install -y python3 \
    python3-pip

RUN pip3 install \
    docker \
    pygal \
    ansible 

VOLUME ["workspace"]

CMD [ "sleep", "infinity" ]