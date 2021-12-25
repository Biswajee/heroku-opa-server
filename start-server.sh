./opa run --server --addr :$PORT &
curl -X PUT -d @policy/sudo_authz.rego opa-auth-server.herokuapp.com:80/v1/policies/sudo/authz --header "Content-Type: text/plain"
curl -X PUT -d @data/admin-users.json opa-auth-server.herokuapp.com:80/v1/data/roles --header "Content-Type: application/json"
curl -X GET opa-auth-server.herokuapp.com:80/v1/policies/sudo/authz
curl -X GET opa-auth-server.herokuapp.com:80/v1/data/roles
wait
