# Actividad 2
### Alvaro Norberto García Meza 
### Carné: 202109567

## Crear un script en BASH que permita consultar los datos de un usuario de GITHUB. Los datos del usuario seran descargado de un webservice. Luego este debera de escribir un log con algunos de los datos del usario.

**Mio**
```bash
#!/bin/zsh
export GITHUB_USER=AlvaroG13191704 
USER=$GITHUB_USER &&
DATA=$(curl -s "https://api.github.com/users/$USER") &&
USER_ID=$(echo $DATA | jq -r '.id') &&
CREATED_AT=$(echo $DATA | jq -r '.created_at') &&
LOG_DIR="/tmp/$(date +'%Y-%m-%d')" &&
mkdir -p $LOG_DIR &&
LOG_FILE="$LOG_DIR/saludos.log" &&
echo "Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT." >> $LOG_FILE
(crontab -l ; echo "*/5 * * * * /run/media/alvarog/08485E3D485E29A8/2024/PRIMER\ SEMESTRE/SOPES\ 1/so1_actividades_202109567/actividad2/main.sh") | crontab -
```


