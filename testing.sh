#!/bin/bash

#Defining Variables
target_website="http://$(hostname -i)"
target_webpage="content/about-us.php"
target_content="It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout"

#Fetching website output to a file
curl "$target_website/$target_webpage" -o outfile

#test case if pattern is matching
if grep -F "$target_content" outfile;then
  echo "success"
  exit 0
else
  echo "failure"
  exit 127
fi

