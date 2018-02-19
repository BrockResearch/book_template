#!/usr/bin/env sh

if [ -f README.md ]; then
  echo 'set the Introduction README.md to the "# Introduction" header only'
else
  echo 'Missing file: README.md'
  exit
fi

if [ -f literature.bib ]; then
  echo 'Erase all content from literature.bib'
else
  echo 'Missing file: literature.bib'
  exit
fi

if [ -f book.json ]; then
  echo 'Run gitbook install to install plug-ins'
else
  echo 'Missing file: book.json'
  exit
fi
