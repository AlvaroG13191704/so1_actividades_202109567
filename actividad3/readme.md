# Actividad 3 - Systemd Unit
### Alvaro Norberto García Meza 
### Carné: 202109567

#### Crear un systemd unit de tipo servicio que realice lo siguiente. Ejecutar un script imprima un saludo y la fecha actual infinitamente con una pausa de un segundo. Habilitar el servicio para que se inicie con el sistema Subir un readme file explicando el proceso de instalación del servicio y como poder chequear sus logs.


### Creación del script

Primero se crea el script que se ejecutará, en este caso se creará un archivo llamado `actividad3.sh` con el siguiente contenido:

```bash
#!/bin/bash
while true
do
    echo "Hola, la fecha actual es: $(date)"
    sleep 1
done
```

### Creación del servicio

Luego se crea el archivo de configuración del servicio, en este caso se creará un archivo llamado `actividad3.service` dentro de la carpeta `/etc/systemd/system/` con el siguiente contenido:

```bash
[Unit]
Description=Actividad 3
After=network.target

[Service]
Type=simple
ExecStart=/bin/bash /home/alvarog/actividad3.sh
Restart=always

[Install]
WantedBy=multi-user.target
```

### Habilitar el servicio

Para habilitar el servicio se ejecutan los siguientes comandos:

```bash
sudo systemctl enable actividad3.service
sudo systemctl start actividad3.service
```

### Chequear los logs 

Para chequear los logs del servicio se ejecuta el siguiente comando:

```bash
sudo journalctl -u actividad3.service
```

