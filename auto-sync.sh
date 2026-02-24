#!/bin/bash

# Script de auto-sincronización con GitHub
# Sincroniza automáticamente cada 2 minutos

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
INTERVAL=120  # segundos (2 minutos)

echo "🔄 Auto-sync activado para: $REPO_DIR"
echo "⏱️  Sincronizando cada $INTERVAL segundos"
echo "🛑 Presiona Ctrl+C para detener"
echo ""

while true; do
    cd "$REPO_DIR"
    
    # Obtener cambios del repositorio remoto
    echo "📥 $(date '+%H:%M:%S') - Descargando cambios..."
    git fetch origin main 2>/dev/null
    
    # Verificar si hay cambios remotos
    LOCAL=$(git rev-parse @)
    REMOTE=$(git rev-parse @{u})
    
    if [ "$LOCAL" != "$REMOTE" ]; then
        echo "✨ Nuevos cambios detectados, actualizando..."
        git pull origin main
        echo "✅ Código actualizado"
    fi
    
    # Verificar si hay cambios locales
    if [[ -n $(git status -s) ]]; then
        echo "📤 Cambios locales detectados, subiendo..."
        git add .
        git commit -m "Auto-sync: $(date '+%Y-%m-%d %H:%M:%S')"
        git push origin main
        echo "✅ Cambios subidos"
    else
        echo "✓ Todo sincronizado"
    fi
    
    echo ""
    sleep $INTERVAL
done
