#!/bin/bash

TYPE="$1"
URL="$2"

paramInfo()
{
    echo "Param 1: Type of installation"
    echo "Example: wordpress"
    echo "Param 2: Url"
    echo "Example: www.example.test"
}

if [[ -d "./${TYPE}" ]]; then

    echo "$TYPE is a directory"

    if [[ -f "./${TYPE}/Vagrantfile" ]]; then

        echo "$TYPE have Vagrant file"

        vagrantfile=`cat ./${TYPE}/Vagrantfile`

        if [ -z "$URL" ]; then
            echo "$URL is not a valid url"
            paramInfo;
            exit
        else
            echo "${vagrantfile//vagranturl/$URL}" >> Vagrantfile
            mkdir -p "./public_html"
        fi
    else
        echo "$TYPE have no Vagrant file"
        paramInfo;
        exit
    fi
else
    echo "$TYPE is not a valid type"
    paramInfo;
    exit
fi