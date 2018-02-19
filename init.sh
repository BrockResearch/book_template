#!/usr/bin/env sh

if [ -f README.md ]; then
  # echo 'set the Introduction README.md to the "# Introduction" header only'
  echo "# Introduction\n" > README.md
  
  if [ -f literature.bib ]; then
    # echo 'Erase all content from literature.bib'
    cat /dev/null > literature.bib

    if [ -f book.json ]; then
      # echo 'Run gitbook install to install plug-ins'
      gitbook install
    else
      echo 'Missing file: book.json'
      exit
    fi
  else
    echo 'Missing file: literature.bib'
    exit
  fi
else
  echo 'Missing file: README.md'
  exit
fi
