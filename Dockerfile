FROM ubuntu:latest as build-stage
RUN echo HELLO >> /tmp/output

FROM scratch
COPY --from=build-stage /tmp/output /build/output
