#!/bin/sh

echo "Fistly, cat coommand prints the contents of a file, although its purpose is to concatinate them"

cat README.md



echo "..."
echo "Secondly, wildcards: they are processed in command line, before given to a program as params."

ls R?ADME.md

ls R*E.md

ls [RS]EADME.md

echo "This will find run.sh, as [a-z] says any letter:"

ls [a-z]un.sh

echo "Will not find anything, as '^' means not one of those:"

ls [^a-z]un.sh




echo "..."
echo "Thirdly, permissions."

echo "Create a file"
touch a

echo "By default, set all permissions"
chmod 777 a


echo "What are its permissions"
ls -l a

echo "Lets remove write permission from group and others:"

chmod ug-w a

echo "And add execute permission to others:"

chmod o+x a

echo "What are the results:"

ls -l a
 


