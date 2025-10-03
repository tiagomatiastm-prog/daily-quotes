# Daily Quotes - Site de Citations Quotidiennes

Site web affichant une citation aléatoire parmi 366 citations de personnes célèbres.

## 🎯 Fonctionnalités

- Affichage d'une citation aléatoire au chargement de la page
- Bouton pour générer une nouvelle citation
- Design moderne et responsive
- 366 citations de personnages célèbres (philosophes, écrivains, scientifiques, leaders)

## 🛠️ Technologies

- HTML5
- CSS3
- JavaScript (Vanilla)
- Nginx (serveur web)

## 📦 Structure du Projet

```
daily-quotes/
├── index.html      # Page principale
├── style.css       # Styles CSS
├── app.js          # Logique JavaScript
├── quotes.json     # Base de données des 366 citations
├── deploy.sh       # Script de déploiement
└── README.md       # Documentation
```

## 🚀 Déploiement

### Installation automatique

```bash
chmod +x deploy.sh
./deploy.sh
```

### Installation manuelle

1. Installer nginx:
```bash
sudo apt update
sudo apt install nginx
```

2. Copier les fichiers du site:
```bash
sudo mkdir -p /var/www/daily-quotes
sudo cp *.html *.css *.js *.json /var/www/daily-quotes/
```

3. Configurer nginx:
```bash
sudo nano /etc/nginx/sites-available/daily-quotes
```

4. Redémarrer nginx:
```bash
sudo systemctl restart nginx
```

## 🌐 Accès au Site

Le site est accessible à l'adresse: **http://172.16.25.234**

## 📝 Sources des Citations

Les citations proviennent de:
- Philosophes: Socrate, Platon, Aristote, Descartes, Kant, Nietzsche, Sartre
- Scientifiques: Einstein, Edison, Darwin, Tesla
- Écrivains: Victor Hugo, Oscar Wilde, Shakespeare, Camus, Proust
- Leaders: Gandhi, Mandela, Churchill, Martin Luther King Jr.
- Artistes: Picasso, Van Gogh, Beethoven
- Et bien d'autres...

## 🔧 Maintenance

### Ajouter de nouvelles citations

Éditez le fichier `quotes.json` et ajoutez vos citations au format:
```json
{
  "quote": "Votre citation ici",
  "author": "Auteur"
}
```

### Redéployer

```bash
./deploy.sh
```

## 📄 Licence

Projet open source - Libre d'utilisation

---

**Créé avec ❤️ par Claude**
