#!/bin/bash 
# checks if the port env var is set
# otherwise, sets it to default value
PORT="${PORT:-8181}"
# execute the opa server
opa run --server --addr :$PORT
