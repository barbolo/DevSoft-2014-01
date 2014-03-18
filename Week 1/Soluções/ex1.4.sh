#!/bin/bash

if [ "$1" = "ls" ]
then
  echo "O comando ls ..."
elif [ "$1" = "ln" ]
then
  echo "O comando ln ..."
elif [ "$1" = "pwd" ]
then
  echo "O comando pwd ..."
elif [ "$1" = "chmod" ]
then
  echo "O comando chmod ..."
elif [ "$1" = "cat" ]
then
  echo "O comando cat ..."
elif [ "$1" = "tail" ]
then
  echo "O comando tail ..."
elif [ "$1" = "head" ]
then
  echo "O comando head ..."
elif [ "$1" = "sort" ]
then
  echo "O comando sort ..."
elif [ "$1" = "grep" ]
then
  echo "O comando grep ..."
elif [ "$1" = "rm" ]
then
  echo "O comando rm ..."
else
  echo "Comando desconhecido: $1"
fi
