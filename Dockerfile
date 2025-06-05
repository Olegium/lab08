FROM ubuntu:latest

RUN apt update
RUN apt install -yy gcc g++ cmake

COPY . /building
WORKDIR /building

RUN cmake -H. -B_build
RUN cmake --build _build
CMD ["./_build/hello_world_application/hw_app"]
