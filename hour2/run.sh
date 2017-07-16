#!/bin/sh

echo "Firstly, here is long listing of current dir contents:"
ls -l

echo "If we remove write permission from dir..."
chmod -w empty-dir

echo "...next listing will show permission symbols without 'w'"
ls -l

echo "Lets add them back:"
chmod +w empty-dir
