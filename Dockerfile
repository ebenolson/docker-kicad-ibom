FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository --yes ppa:js-reynaud/kicad-dev-nightly && apt-get update
RUN apt-get install -y xvfb kicad-nightly

RUN cp -R /usr/lib/kicad-nightly/lib/x86_64-linux-gnu/* /usr/lib

WORKDIR /pcb

COPY ibom.sh /bin/
COPY InteractiveHtmlBom /usr/src/
RUN chmod +x /bin/ibom.sh

ENTRYPOINT ["/bin/ibom.sh"]
