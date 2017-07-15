#!/bin/sh

echo "Firstly, this file itself is minimal example of bash script"

echo "Secondly, the echo command is first command I use in this series - it prints what I give it"

echo "Thirdly, to print a system variable, dollar sign is used:"
echo $SHELL

# Fourth, this is an example of bash script comment

# Fifth, I found out about the difference between environment and system variables: 
# https://askubuntu.com/questions/26318/environment-variable-vs-shell-variable-whats-the-difference
# To print environment variable, we use printenv

printenv TERM
