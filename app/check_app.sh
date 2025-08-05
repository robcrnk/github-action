#!/bin/bash

echo "Début de la vérification de l'application..."

# Vérifier que le fichier existe
if [ ! -f "app/index.html" ]; then
  echo "Fichier index.html manquant !"
  exit 1
fi

echo "Fichier index.html trouvé."

# Vérifier si le mot 'Bienvenue' est présent dans le fichier
if grep -q "Bienvenue" app/index.html; then
  echo "Le texte 'Bienvenue' est bien présent dans index.html."
  echo "Vérification terminée avec succès."
  exit 0
else
  echo "Le texte 'Bienvenue' est absent de index.html !"
  echo "Échec de la vérification."
  exit 1
fi
