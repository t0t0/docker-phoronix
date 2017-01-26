#####################
# Bench Dockerfile #
#####################



# Set the base image 
FROM    alpine

# File Author / Maintainer
MAINTAINER Toon Lamberigts and Tomas Vercautter

# Install dependencies
RUN apk update && apk add --no-cache make gcc g++ libtool linux-headers perl pcre-dev php5 php5-dom php5-zip php5-json

# Download  & extract Phoronix package
RUN wget http://www.phoronix-test-suite.com/download.php?file=phoronix-test-suite-6.2.2 -O phoronix-test-suite-6.2.2.tar.gz
RUN tar xzf phoronix-test-suite-6.2.2.tar.gz
RUN rm -f phoronix-test-suite-6.2.2.tar.gz
RUN cd phoronix-test-suite && ./install-sh

# Install predefined tests
## Disk
RUN phoronix-test-suite install pts/iozone
## CPU
RUN phoronix-test-suite install pts/c-ray
## Memory
RUN phoronix-test-suite install pts/stream
## Services
RUN phoronix-test-suite install pts/apache
RUN phoronix-test-suite install pts/redis


# Copy custom scripts
COPY scripts/ .

# Begin benchmark script
CMD ./run.sh
