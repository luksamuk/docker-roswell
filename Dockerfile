FROM debian:9
RUN echo 'export PATH=$HOME/.roswell/bin:$PATH' >> ~/.bashrc
RUN apt update && apt install -y curl make bzip2 libcurl3-gnutls &&\
    curl -L -O https://github.com/roswell/roswell/releases/download/v19.4.10.98/roswell_19.4.10.98-1_amd64.deb &&\
    dpkg -i *.deb && ros &&\
    ros install sbcl-bin && ros use sbcl-bin &&\
    ros install qlot &&\
    rm *.deb

