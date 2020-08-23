#!/bin/bash

while true
do
  unset source
  unset dist

  echo "Git source, followed by [ENTER]:"
  read source

  echo "Git dist, followed by [ENTER]:"
  read dist

  git clone --mirror ${source//git clone /} repo && cd repo
  git remote add bitbucket ${dist//git clone /}
  git push bitbucket --all && git push bitbucket --tags

  cd .. && rm -rf repo && sleep 1
done
