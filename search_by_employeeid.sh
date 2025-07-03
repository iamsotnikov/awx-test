#!/bin/bash
ldapsearch -H ldaps://ldap.bingo-boom.ru:636 \
  -D "$1@bbgroup.local" \
  -w "$2" \
  -b "DC=bbgroup,DC=local" \
  "(employeeID=$3)" \
  sAMAccountName
