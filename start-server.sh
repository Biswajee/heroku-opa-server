./opa run --server --addr :$PORT ./policy/sudo_authz.rego &
# curl -X PUT -d @policy/sudo_authz.rego opa-auth-server.herokuapp.com:80/v1/policies/sudo/authz --header "Content-Type: text/plain"
wait
