#!/bin/bash

echo "🔍 Début de la vérification de l'application..."

if [ -f "index.html" ]; then
  echo "✅ Fichier index.html trouvé."
  echo "🎉 Vérification terminée avec succès."
  exit 0
else
  echo "❌ Fichier index.html manquant !"
  echo "🚨 Échec de la vérification."
  exit 1
fi
