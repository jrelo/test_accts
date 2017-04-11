#!/bin/bash
if [ "$#" -ne 2 ]
    then
    echo "Usage: $0 <user> <domain>"
    exit 1;
fi
user=${1}
domain=${2}
read newpass newhash <<<$(openssl passwd -1 -table "$(< /dev/urandom tr -dc
_A-Z-a-z-0-9 | head -c14)")
/scripts/wwwacct $domain $user $newpass 0 default n n n 0 0 0 0 0 0
echo -e "user: ${user}\ndomain: ${domain}\npasswd: ${newpass}"
