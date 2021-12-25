package sudo.authz

import input.sysinfo

# Ideally, data.json should replace below statement
allowed_roles := ["runner", "biswajit"]

# By default, users are not authorized.
default allow = false

# Allow access to any user that has the "admin" role.
allow {
    allowed_roles[_] == sysinfo.pam_username
}

# If the user is not authorized, then include an error message in the response.
errors["Request denied by administrative policy"] {
    not allow
}
