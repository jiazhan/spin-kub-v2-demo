FROM golang:1.13.3-alpine

ADD . /go/src/spinnaker.io/demo/k8s-demo

RUN go install /go/src/spinnaker.io/demo/k8s-demo

ADD ./content /content

ENTRYPOINT /go/bin/k8s-demo
