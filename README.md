docker-ssh
==========

We assume you already have an ssh server running in your container!

Allows connecting to all your local docker containers using ssh simply like this:

       ssh <user>@<container-name.docker> <port>
       e.g.:
       ssh student@reslocal/ubuntu-base:latest.docker 22

To build/install it for your current user do the following:

       ./00_install-packages.sh  
       ./01_make.sh
       ./02_install.sh
       ./03_run.sh (will not run anything, but just show and example)
