FROM ubuntu:latest
RUN apt update
RUN apt install -yy gcc g++ cmake
WORKDIR /building
COPY . /building

RUN cmake --build _build
RUN cmake -H. -B_build
CMD ["/building/_build/hello_world_application/hello_world"]
