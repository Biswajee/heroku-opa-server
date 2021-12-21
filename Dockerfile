FROM scratch
ENV PORT=8181
RUN curl -L -o opa https://openpolicyagent.org/downloads/v0.35.0/opa_linux_amd64_static
RUN chmod 755 ./opa
CMD ./opa run --server --addr :$PORT
