FROM java:8-jre-alpine
MAINTAINER Argo triwidodo "argo.triwidodo@gdn-commerce.com"

ENV version=2.1.0

RUN wget https://github.com/browserup/browserup-proxy/releases/download/v${version}/browserup-proxy-${version}.tar
RUN tar xvf browserup-proxy-${version}.tar
RUN ln -s browserup-proxy-${version} browserup-proxy
EXPOSE 9090-10000
CMD ["browserup-proxy/bin/browserup-proxy -port 9090 -proxyPortRange 9091-10000"]
