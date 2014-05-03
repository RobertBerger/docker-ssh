echo "+ we assume you already have an ssh server running in your container"
echo "+ try something like this"
echo "+ ssh <user>@<container-name.docker> <port>"
echo "+ e.g.:"
echo "ssh genius@reslocal/ubuntu-base:latest.docker 22"
ret=false
getent passwd genius >/dev/null 2>&1 && ret=true

if $ret; 
then
    echo "+ genius exists"
else
    echo "+ genius does not exist - create it, log in as genius nd run this again"
    echo "+ press <ENTER> to create it"
    echo "+ sudo adduser genius"
    sudo adduser genius
fi


