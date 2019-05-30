#!/bin/bash

list_users() {

  USERS=$(aws iam list-users | jq ".Users")

  for u in $(echo $USERS | jq -r '.[] | @base64'); do
    _jq() {
      echo $u | base64 --decode | jq -r ${1}
    }

    echo $(_jq '.UserName')
  done
}

main() {
  list_users
}

main
