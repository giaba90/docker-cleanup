#!/bin/bash

echo "🚀 Avvio pulizia Docker..."

# Mostra l'utilizzo attuale
docker system df

echo "👉 Rimozione container fermati..."
docker container prune -f

echo "👉 Rimozione immagini non utilizzate..."
docker image prune -a -f

echo "👉 Rimozione volumi inutilizzati..."
docker volume prune -f

echo "👉 Rimozione reti inutilizzate..."
docker network prune -f

echo "👉 Rimozione cache di build..."
docker builder prune -f

echo "✅ Pulizia completata!"
docker system df
