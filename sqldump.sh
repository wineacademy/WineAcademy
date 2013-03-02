#!/bin/bash
user="c7_wineacademy"
pass="Conan252N"
base="c7_wineacademy"
email="info@wineacademy.pl"
emailadmin="dawidpych@gmail.com"
temat="Serwer - Kopia bazy danych WineAcademy"
tresc="/tmp/emailmessage.txt"
rm sql/*.sql
mysqldump -l -u$user -p$pass $base > sql/$(date +"%Y%m%d").sql
git add -A
git commit -m $(date +"%Y")"."$(date +"%m")"."$(date +"%d")" Kopia bazy danych"
git push origin master
chmod 777 -R *
echo "Wiadomość wygenerowana przez serwer. Nie odpisuje" > $tresc
echo "plik do pobrania http://wineacademy.pl/backup/sql/"$(date +"%Y%m%d")".sql" >> $tresc
#mail -s "$temat" "$email" < $tresc
mail -s "$temat" "$emailadmin" < $tresc
