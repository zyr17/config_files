#!/bin/bash

for server in `cat ~/.ssh/config | grep ^Host | sed "s/Host //"`; do
    echo "trying to update ~/.my_config(s)" of $server. enter to continue, 
    echo type anything and enter to skip.
    read
    if [[ -z $REPLY ]]; then 
        ssh $server "cd ~/.my_config*; ./quick_merge.sh"
    fi
done
