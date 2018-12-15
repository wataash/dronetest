FROM drone/drone:1.0.0-rc.2
EXPOSE 8000 9000 80 443 2345

#RUN apk update
#RUN apk add go
#RUN CGO_ENABLED=0 go get -v -u github.com/derekparker/delve/cmd/dlv

COPY dlv /bin/
COPY drone-server /bin/

ENTRYPOINT ["/bin/sh"]
