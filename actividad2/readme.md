# Actividad 2
### Alvaro Norberto García Meza 
### Carné: 202109567

## Crear un script en BASH que permita consultar los datos de un usuario de GITHUB. Los datos del usuario seran descargado de un webservice. Luego este debera de escribir un log con algunos de los datos del usario.

**Mio**
```bash
#!/bin/zsh
# Crear la variable de entorno
export GITHUB_USER=AlvaroG13191704 &&

# Crear una variable temporal
USER=$GITHUB_USER &&

# Guardar la peticion en una variable
DATA=$(curl -s "https://api.github.com/users/$USER") &&

# Obtener la información del JSON
USER_ID=$(echo $DATA | jq -r '.id') &&

CREATED_AT=$(echo $DATA | jq -r '.created_at') &&

# Crear una ruta temporal
LOG_DIR="/tmp/$(date +'%Y-%m-%d')" &&

# Crear el directorio con la ruta temporal
mkdir -p $LOG_DIR &&

# Crear la variable con el archivo temporal
LOG_FILE="$LOG_DIR/saludos.log" &&

# Guardar la información en saludos.log
echo "Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT." >> $LOG_FILE

# Crear un job para ejecutar el archivo cada 5 min
(crontab -l ; echo "*/5 * * * * /run/media/alvarog/08485E3D485E29A8/2024/PRIMER\ SEMESTRE/SOPES\ 1/so1_actividades_202109567/actividad2/main.sh") | crontab -
```


