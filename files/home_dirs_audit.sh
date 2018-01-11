#!/bin/bash

LOGLEVEL=INFO
log_debug() { if [ "$LOGLEVEL" == "DEBUG" ]; then echo "$@"; fi }
log_info()  { if [ "$LOGLEVEL" == "INFO" ]; then echo "$@"; fi }

cat /etc/passwd | awk -F: '{ print $1 " " $3 " " $6 }' | while read user uid dir; do
    if [ $uid -ge 1000 -a ! -d "$dir" -a $user != "nfsnobody" -a $user != "nobody" ]; then
        log_debug "The home directory ($dir) of user $user does not exist."
        log_info "$user"
    fi
done
