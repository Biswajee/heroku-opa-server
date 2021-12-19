FROM openpolicyagent/opa:0.35.0
EXPOSE 8181
CMD ["run", "--server", "--addr=:$PORT", "--set=decision_logs.console=true"]