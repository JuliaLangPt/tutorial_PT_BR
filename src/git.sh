#!/bin/sh
# github.sh - Script que faz upload para o git
#
# 2016  Joao Marcello
git status
git add *.*
git commit -m "Atualizado"
git push