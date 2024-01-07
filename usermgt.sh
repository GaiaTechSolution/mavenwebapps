#!/bin/bash
usermgt(){
  echo "please enter the username for your user"
  read username
  useradd $username
  echo "$username account created successfully"
  echo "set passwd for $username"
  passwd $username
  id $username
  grep $username /etc/passwd
}
usermgt
