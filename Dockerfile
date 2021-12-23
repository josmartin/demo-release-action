FROM ubuntu:latest as build-stage
ARG ECHO_TEXT=HELLO1
RUN echo ${ECHO_TEXT} >> /tmp/output

FROM scratch
ARG NAME=default
COPY --from=build-stage /tmp/output /build/output_${NAME}
