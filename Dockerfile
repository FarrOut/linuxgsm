FROM farrout/steamcmd

WORKDIR /opt/linuxgsm

RUN apt-get update -y && apt-get install curl -y

RUN curl -Lo linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh

RUN useradd  linuxgsm && su - linuxgsm
RUN chown -R linuxgsm ./

USER linuxgsm
ENTRYPOINT ["/opt/linuxgsm/linuxgsm.sh"]