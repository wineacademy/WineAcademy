#!/bin/bash
user="c7_wineacademy"
pass="Conan252N"
base="c7_sandbox"
mysqldump -l -u$user -p$pass $base > ../sql/$(date +"%Y%m%d").sql

