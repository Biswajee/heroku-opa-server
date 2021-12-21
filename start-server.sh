./opa run --server --addr :$PORT &
curl -X PUT -d @policy/sudo_authz.rego opa-auth-server.herokuapp.com:80/v1/policies/sshd/authz --header "Content-Type: text/plain"
curl -X PUT opa-auth-server.herokuapp.com:80/v1/data/roles -d @data/admin-users.json --header "Content-Type: application/json"
wait