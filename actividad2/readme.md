# Actividad 2
### Alvaro Norberto García Meza 
### Carné: 202109567

## Crear un script en BASH que permita consultar los datos de un usuario de GITHUB. Los datos del usuario seran descargado de un webservice. Luego este debera de escribir un log con algunos de los datos del usario.


**En bash**
```bash
#!/bin/bash

# Leer la variable GITHUB_USER
read -p "Ingrese el nombre de usuario de Github: " GITHUB_USER

# Consultar la URL
DATA=$(curl -s "https://api.github.com/users/$GITHUB_USER")

# Obtener los datos del JSON
USER_ID=$(echo $DATA | jq -r '.id')
CREATED_AT=$(echo $DATA | jq -r '.created_at')

# Imprimir el mensaje
echo "Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT."

# Crear el log file
LOG_DIR="/tmp/$(date +'%Y-%m-%d')"
mkdir -p $LOG_DIR
LOG_FILE="$LOG_DIR/saludos.log"
echo "Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT." >> $LOG_FILE

# Crear un cronjob
(crontab -l ; echo "*/5 * * * * /ruta/al/script.sh") | crontab -

```

**En zsh**
```bash
#!/bin/bash

# Leer la variable GITHUB_USER
read -p "Ingrese el nombre de usuario de Github: " GITHUB_USER

# Consultar la URL
DATA=$(curl -s "https://api.github.com/users/$GITHUB_USER")

# Obtener los datos del JSON
USER_ID=$(echo $DATA | jq -r '.id')
CREATED_AT=$(echo $DATA | jq -r '.created_at')

# Imprimir el mensaje
echo "Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT."

# Crear el log file
LOG_DIR="/tmp/$(date +'%Y-%m-%d')"
mkdir -p $LOG_DIR
LOG_FILE="$LOG_DIR/saludos.log"
echo "Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT." >> $LOG_FILE

# Crear un cronjob
(crontab -l ; echo "*/5 * * * * /ruta/al/script.sh") | crontab -

```