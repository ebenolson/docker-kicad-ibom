# docker-ibom

Dockerized KiCad Interactive Bom generator
https://github.com/openscopeproject/InteractiveHtmlBom

Example usage:
docker run -e KICAD_PROJECT=${PWD##*/} -v $PWD:/output -v $PWD:/pcb -t ebenolson/ibom