# This is based on rocker/verse:4.4.2, with GENESIS installed.
# See https://github.com/broomej/r-ver-genetics/blob/main/Dockerfile
FROM broome/r-ver-genetics:4.4.2

COPY scripts/ /usr/scripts

CMD ["/usr/scripts/run_container.sh"]

