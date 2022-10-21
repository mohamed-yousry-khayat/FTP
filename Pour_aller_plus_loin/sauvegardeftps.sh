#configurer Crontab pour lancer le script périodiquement

temps=$(date +"%d-%m-%y_%H:%M")

tar cfzX <backup_${temp}s>
scp <fichier_a_envoyer>.gz root@<serveur_backup>:<backup_${temps}>
