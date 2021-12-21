# Heroku OPA Server

This repository contains a simpel dockerfile that downloads
[OPA](https://www.openpolicyagent.org/) version 0.35.0 and
spins up a standard OPA server on Heroku. This service may
be used by remote machines to configure and replace Linux PAM
authentication with OPA based authorization & authentication.

To learn more on how the [URL](https://opa-auth-server.herokuapp.com/)
can be used to replace [Linux PAM](https://www.linuxfromscratch.org/blfs/view/svn/postlfs/linux-pam.html),
read here: https://www.openpolicyagent.org/docs/latest/ssh-and-sudo-authorization/

To look at how a sample setup looks like, head [here](https://github.com/Biswajee/opa-linux-pam/actions/workflows/vanilla-build-pipeline.yml)
