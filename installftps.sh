#fichier configftp contient les configuration nécessaire pour ouvrir un serveur ftps

sudo apt install proftpdp
if [ $? == 0 ]
then echo "ftpd est installé"
else echo "problème d'installation de ftpd"

cp configftp.conf /etc/proftpd/conf.d
if [ $? == 0 ]
then echo "fichier de configuration enregistré"
else echo "problème d'enregistrement du ficher de configuration"

sudo apt install proftpd-mod-crypto
if [ $? == O ]
then echo "installation du module complémentaire"
else echo "problème d'installation du module complémentaire"

sudo openssl req -x509 -newkey rsa:2048 -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=www.example.com"  -keyout /etc/ssl/private/proftpd.key -out /etc/ssl/certs/proftpd.crt -nodes -days 3650
if [ $? == 0 ]
then echo "création de la clé et du certificat"
else echo "problème rencontré lors de la création de la clé ou du certificat"

sudo sytemctl restart proftpd 
if [ $? == 0 ]
then echo "serveur relancé et prêt à l'utilisation"
else echo "problème rencontré lors du reload du serveur"
