# Docker container with Sysbench installed
# for running multiple types of benchmark tests

FROM debian:jessie 
MAINTAINER Giddy
ENV TERM=xterm
ADD Dockerfile /Dockerfile.sysbench
ADD io.sh /usr/bin/io
ADD cpu_prime.sh /usr/bin/cpu
RUN apt-get update && apt-get install -y sysbench

CMD ["/bin/echo", "docker run -it --rm sysbench io 100M"]
