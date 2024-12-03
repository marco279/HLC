#!/bin/bash
set -e

main (){
    #ejecutar entrypoint ububase
    bash /root/admin/start.sh

    #nginx  -g 'daemon off;'
    nginx
    tall -f /devnull
}

main