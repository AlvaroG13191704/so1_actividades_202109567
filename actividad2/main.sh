export GITHUB_USER=AlvaroG13191704 &&
USER=$GITHUB_USER &&
DATA=$(curl -s "https://api.github.com/users/$USER") &&
USER_ID=$(echo $DATA | jq -r '.id') &&
CREATED_AT=$(echo $DATA | jq -r '.created_at') &&
LOG_DIR="/tmp/$(date +'%Y-%m-%d')" &&
mkdir -p $LOG_DIR &&
LOG_FILE="$LOG_DIR/saludos.log" &&
echo "Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT." >> $LOG_FILE