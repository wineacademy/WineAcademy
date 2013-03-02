#!/bin/bash
user="c7_wineacademy"
pass="Conan252N"
base="c7_sandbox"
rm sql/*.sql
mysqldump -l -u$user -p$pass $base > sql/$(date +"%Y%m%d").sql
git add -A
git commit -m $(date +"%Y").".".$(date +"%m").".".$(date +"%d")." Kopia bazy danych"
git push origin master
