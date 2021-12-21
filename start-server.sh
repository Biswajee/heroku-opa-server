set -e -x
ls -al
./opa run --server --addr :$PORT &
curl -X PUT --data-binary @policy/sshd_authz.rego opa-auth-server.herokuapp.com:80/v1/policies/sshd/authz
curl -X PUT opa-auth-server.herokuapp.com:80/v1/data/roles -d @data/admin-users.json --header "Content-Type: application/json"
