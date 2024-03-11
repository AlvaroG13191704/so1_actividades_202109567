# Actividad 5 - Prueba de Procesos e hilos
### Alvaro Norberto García Meza 
### Carné: 202109567

#### Usando el siguiente código como referencia, completar el programa para que sea ejecutable y responder las siguientes preguntas:

```c
pid_t pid;
pid = fork();
if (pid == 0) {
  fork();
  thread_craete();
}
fork();
```

1. ¿Cuántos procesos únicos son creados?
2. ¿Cuántos hilos únicos son creados?
   
#### Respuestas
1. Se crean 8 procesos únicos
2. Se crean 2 hilos únicos
