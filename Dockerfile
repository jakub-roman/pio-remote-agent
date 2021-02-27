FROM python:3.8-alpine

RUN apk add libffi-dev openssl-dev gcc musl-dev libc6-compat gcompat

ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1

RUN pip3 install platformio

# folowing command installs more dependencies...
RUN pio remote agent start || true

ENTRYPOINT [ "pio", "remote", "agent", "start" ]
