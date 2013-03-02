#!/bin/bash
user="c7_wineacademy"
pass="Conan252N"
base="c7_sandbox"
mysqldump -l -u$user -p$pass $base > sql/$(date +"%Y%m%d").sql
git add -A
git commit -m $(date +"%Y%m%d")." Kopia bazy danych"
git push origin master
