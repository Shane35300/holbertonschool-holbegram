# Utiliser une image de base Flutter officielle (ou en construire une si elle n'existe pas)
FROM cirrusci/flutter:stable

# Installer des dépendances supplémentaires pour Android SDK
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk && \
    apt-get clean

# Accepter les licences Android SDK (nécessaire pour les builds Android)
RUN yes | sdkmanager --licenses

# Définir les variables d'environnement pour Flutter et Android
ENV ANDROID_HOME=/opt/android-sdk
ENV PATH="$PATH:/opt/android-sdk/tools/bin:/opt/android-sdk/platform-tools:/flutter/bin"

# Créer un volume pour stocker les données du projet
VOLUME [ "/app" ]

# Définir le dossier de travail
WORKDIR /app

# Exposer le port 8081 pour le débogage, si nécessaire
EXPOSE 8081

# Démarrer Flutter
CMD ["flutter", "run"]
