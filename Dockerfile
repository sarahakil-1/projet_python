FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier requirements.txt et installer les dépendances
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copier tout le reste du projet dans le conteneur
COPY . .

# Exposer le port 5000 pour Flask
EXPOSE 5000

# Commande pour démarrer l'application
CMD ["python", "app.py"]
