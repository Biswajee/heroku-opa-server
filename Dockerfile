FROM openpolicyagent/opa:0.35.0
EXPOSE 8181
RUN opa run --server --addr :$PORT