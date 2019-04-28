FROM debian:9
RUN apt update && apt install -y curl make bzip2 libcurl3-gnutls &&\
    curl -L -O https://github.com/roswell/roswell/releases/download/v19.4.10.98/roswell_19.4.10.98-1_amd64.deb &&\
    dpkg -i *.deb && rm *.deb
ENV PATH="/root/.roswell/bin:${PATH}"
RUN ros install sbcl-bin && ros use sbcl-bin
RUN ros install qlot

