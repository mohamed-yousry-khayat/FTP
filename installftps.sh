#fichier configftp contient les configuration nécessaire pour ouvrir un serveur ftps

sudo apt install proftpdp
echo "ftpd est installé"

cp configftp.conf /etc/proftpd/conf.d
echo "fichier de configuration enregistré"

sudo apt install proftpd-mod-crypto
echo "installation du module complémentaire"

sudo openssl req -x509 -newkey rsa:2048 -keyout /etc/ssl/private/proftpd.key -out /etc/ssl/certs/proftpd.crt -nodes -days 3650
echo "création de la clé et du certificat"

sudo sytemctl restart proftpd 
echo "serveur relancé et prêt à l'utilisation"
