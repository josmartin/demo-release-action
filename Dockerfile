FROM ubuntu:latest as build-stage
RUN echo HELLO >> /tmp/output

FROM scratch
ARG NAME
COPY --from=build-stage /tmp/output /build/output_${NAME}
