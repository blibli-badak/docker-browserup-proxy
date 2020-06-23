FROM java:8-jre-alpine
MAINTAINER Argo triwidodo "argo.triwidodo@gdn-commerce.com"

RUN apk --no-cache add ca-certificates openssl libstdc++ && update-ca-certificates
RUN wget https://github.com/browserup/browserup-proxy/releases/download/v2.1.0/browserup-proxy-2.1.0.tar
RUN tar xvf browserup-proxy-2.1.0.tar
RUN ln -s browserup-proxy-2.1.0 browserup-proxy
EXPOSE 9090-10000
CMD ["browserup-proxy/bin/browserup-proxy -port 9090 -proxyPortRange 9091-10000"]
