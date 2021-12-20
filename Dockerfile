FROM openpolicyagent/opa:0.35.0
CMD opa run --server --addr :$PORT --set=decision_logs.console=true