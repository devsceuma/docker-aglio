FROM alpine:3.5

WORKDIR /application

RUN apk -U add nodejs g++ make python

RUN npm install -g \
    aglio \
    jstransformer-coffee-script \
    jstransformer-stylus; \
    apk del g++ make python

ENTRYPOINT ["aglio"]
