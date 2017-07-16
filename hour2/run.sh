#!/bin/sh

echo "Firstly, here is long listing of current dir contents:"
ls -l

echo "If we remove write permission from dir..."
chmod -w empty-dir

echo "...next listing will show permission symbols without 'w'"
ls -l

echo "Lets add them back:"
chmod +w empty-dir



echo "..."

echo "Secondly, file command displays info about the file - because in linux extenstion does not mean anything"
file README.md
file run.sh

echo "If we make a copy of run.sh to some file without extenstion, linux will know its type from bytes:"

cp run.sh a-copy-of-run-sh
file a-copy-of-run-sh


echo "..."

echo "Third, for spaces in paths (files or folders)..."
touch "file with space using double quotes"
touch 'file with space using single quotes'
touch file\ with\ space\ using\ escaping\ with\ backslash
ls -l

echo "...three ways to workaround it. touch command created/updated modification timestamp of a file for me"


echo "..."

echo "Fouth, hidden files and folders are the ones, starting with '.'"

touch .hidden
echo "By default '.hidden' file will not be listed:"
ls

echo "With -a command it will:"
ls -a



echo "..."

echo "Manuals 'man ls'"

echo "Search in manuals:"

man -k permissions



echo "..."

echo "6, shorthand notation of options can be combined. Longer options do the same, should be written separately:"

ls -l --all --human-readable

echo "Same result:"

ls -alh