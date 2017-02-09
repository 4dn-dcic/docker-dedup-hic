## source file for duplexa/sort-bam:v1

FROM ubuntu:16.04
MAINTAINER Soo Lee (duplexa@gmail.com)

# 1. general updates & installing necessary Linux components
RUN apt-get update -y && apt-get install -y wget unzip less vim bzip2 make gcc zlib1g-dev libncurses-dev git openjdk-8-jdk

# download tools
WORKDIR /usr/local/bin
COPY downloads.sh .
RUN . downloads.sh

# set path
ENV PATH=/usr/local/bin/samtools/:$PATH

# wrapper
COPY run.sh .
RUN chmod +x run.sh

# default command
CMD ["run.sh"]

