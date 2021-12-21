FROM ubuntu
ENV PORT=8181
RUN apt-get update && apt-get install curl
RUN curl -L -o opa https://openpolicyagent.org/downloads/v0.35.0/opa_linux_amd64_static
RUN chmod 755 ./opa
CMD ./opa run --server --addr :$PORT
