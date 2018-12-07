FROM surgecloud/kicad-base:latest

WORKDIR /pcb

COPY ibom.sh /bin/
COPY InteractiveHtmlBom /usr/src/
RUN chmod +x /bin/ibom.sh

ENTRYPOINT ["/bin/ibom.sh"]
