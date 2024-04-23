# Utiliser une image de base Python 3.9
FROM python:3.9

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le dossier de configuration Streamlit dans le conteneur
COPY .streamlit/ .streamlit/

# Copier les fichiers nécessaires du projet dans le conteneur
COPY . /app

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Définir une variable d'environnement pour le port (utilisée dans config.toml de Streamlit)
ENV PORT=8501

# Exposer le port sur lequel Streamlit s'exécute
EXPOSE $PORT

# Exécuter  l'application Streamlit

CMD ["streamlit", "run", "main2.py", "--server.port=8501"]