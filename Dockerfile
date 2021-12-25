FROM ubuntu
ENV PORT=8181
RUN apt-get update && apt-get install -y curl
RUN curl -L -o opa https://openpolicyagent.org/downloads/v0.35.0/opa_linux_amd64_static
RUN chmod 755 ./opa
COPY policy policy
COPY data data
COPY start-server.sh .
RUN chmod 755 start-server.sh
RUN chmod -R 666 policy data
CMD ./start-server.sh
