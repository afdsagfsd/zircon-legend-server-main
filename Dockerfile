FROM ubuntu:22.04
RUN apt-get update && apt-get install -y libicu-dev curl p7zip-full

RUN cd /

RUN curl -OL  https://github.com/afdsagfsd/zircon-legend-server-main/releases/download/v1.0/linux64web.zip

RUN 7z x linux64web.zip -o/zircon
RUN chmod -R 777 /zircon

WORKDIR /zircon

CMD ["/zircon/Server"]