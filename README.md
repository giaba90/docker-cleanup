
# Docker cleanup
Bash's script for cleanup docker file

## Usage

 1. Create file 
    
        nano docker-cleanup.sh
  
 2. Copy below code
    
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
    
    
    **save** 
    
 3. make it executable

    
        chmod +x docker-cleanup.sh
    

 4. execute

    
        ./docker-cleanup.sh

 ### (Optional) Run periodically with cron
 Execute

     crontab -e

after , add this line

    0 3 * * 0 /percorso/assoluto/docker-cleanup.sh >> /var/log/docker-cleanup.log 2>&1

**This will run the cleanup every Sunday at 3:00 AM, saving the output to a log.**
