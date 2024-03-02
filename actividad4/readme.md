# Actividad 2
### Alvaro Norberto García Meza 
### Carné: 202109567
## Chat básico con Named Pipes en Linux

Este script crea un chat básico entre dos usuarios utilizando Named Pipes en Linux. Las Named Pipes son un tipo de Interfaz de Comunicación entre Procesos (IPC) que permite la comunicación entre procesos no relacionados.

### Requisitos

* Dos terminales de Linux
* Bash

### Preparación

1. Crea una named pipe:

```bash
mkfifo chat
```

2. Abrir una terminal e ingresar
```bash
while true; do
  if read line < chat; then
    echo "Servidor: $line"
    echo "Escribe tu mensaje: " > chat
  fi
done
```

3. Abrir otra terminal e ingresar
```bash
while true; do
  echo "Escribe tu mensaje: "
  read line
  echo "$line" > chat
  if read response < chat; then
    echo "Servidor: $response"
  fi
done
```

