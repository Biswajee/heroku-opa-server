FROM openpolicyagent/opa:0.35.0
ENV PORT=8181
CMD ["run --server --addr :$PORT --set=decision_logs.console=true"]