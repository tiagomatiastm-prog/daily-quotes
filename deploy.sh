#!/bin/bash

# Script de déploiement du site Daily Quotes
set -e

echo "🚀 Déploiement du site Daily Quotes..."

# Créer le répertoire web s'il n'existe pas
sudo mkdir -p /var/www/daily-quotes

# Copier les fichiers du site
echo "📦 Copie des fichiers..."
sudo cp -r /home/claude/daily-quotes/*.html /var/www/daily-quotes/
sudo cp -r /home/claude/daily-quotes/*.css /var/www/daily-quotes/
sudo cp -r /home/claude/daily-quotes/*.js /var/www/daily-quotes/
sudo cp -r /home/claude/daily-quotes/*.json /var/www/daily-quotes/

# Définir les permissions
echo "🔒 Configuration des permissions..."
sudo chown -R www-data:www-data /var/www/daily-quotes
sudo chmod -R 755 /var/www/daily-quotes

# Redémarrer nginx
echo "🔄 Redémarrage de nginx..."
sudo systemctl restart nginx

echo "✅ Déploiement terminé!"
echo "🌐 Le site est accessible à l'adresse http://172.16.25.234"
