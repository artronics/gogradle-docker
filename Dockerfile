FROM gradle:jdk8

RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
        build-essential

RUN wget -q https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz \
    && tar -C /usr/local -xzf go1.13.5.linux-amd64.tar.gz \
    && rm go1.13.5.linux-amd64.tar.gz

ENV PATH="/usr/local/go/bin:${PATH}"

CMD ["gradle"]
