FROM nsqio/deprecated_nsq_base:latest

RUN cd /gopath/src/github.com/bitly/nsq/apps/nsqd && go build .
VOLUME ["/data"]
EXPOSE 4150
EXPOSE 4151

ENTRYPOINT ["/gopath/src/github.com/bitly/nsq/apps/nsqd/nsqd", "--data-path=/data"]
