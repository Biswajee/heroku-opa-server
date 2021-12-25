FROM ubuntu
ENV PORT=8181
RUN apt-get update && apt-get install -y curl
RUN curl -L -o opa https://openpolicyagent.org/downloads/v0.35.0/opa_linux_amd64_static
RUN chmod 755 ./opa
COPY policy policy
COPY start-server.sh .
RUN chmod 777 start-server.sh
RUN chmod -R 777 policy
CMD ./start-server.sh
