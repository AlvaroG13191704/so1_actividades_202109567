# Actividad 1 
### Alvaro Norberto García Meza 
### Carné: 202109567

# Investigar sobre los siguientes conceptos de Sistema Operativos:

## Tipos de Kernel y sus difeferencias

#### Existen tres tipos principales de núcleos:
1. **Monolíticos:** Es un único programa grande que maneja todas las funciones esenciales del sistema operativo. Incluye los controladores, administrador de sistema de archivos, administrador de memoria y programación del proceso de procesos. El kernel monolítico proporciona un alto rendimiento debido a su acceso directo a los recursos del hardware.
   
2. **Micronkernels:** son minimalistas y modulares, Solo proporcionan servicios esenciales, se comunican y gestionan la memoria de manera básica. Se implementan como procesos separados. Este tipo de kernel aumenta la confiabilidad del sistema y permite un mejor aislamiento.
   
3. **Núcleos híbridos:** Combinan características de monolíticos y micronúcleos. Su objetivo es lograr un equilibrio entre rendimiento y flexibilidad. Proporcionan servicios básicos en el espacio del núcleo y al mismo tiempo permiten que se ejecuten funciones adicionales.

#### Existen diferentes versiones  del kernel de Linux como:
1. **LST:** Son las siglas de Long Term Support, lo que significa que su soporte es dudadero.
2. **Estable:** es la versión estable del kernel de Linux, y es la que desarrolla Linus Torvalds junto a sus colaboradores
3. **Zen:** diseñado pensando en el rendimiento, pero también consume más energía cuando está tirando al máximo. Por esto está considerado por muchos como la mejor opción para el gaming. Tiene baja latencia y alta frecuencia de refresco.
    
## User vs Kernel Mode

El modo usuario y el modo Kernel son dos modos de operación distintos para los programas de usuario y los programas de kernel en el SO. 

**El modo usuario** tiene acceso limitado a la CPU y la memoria. Es un usuario con menos privilegios y que no tiene acceso a los recursos del sistema.

**El modo kernel** tiene acceso ilimitado al hardware y el SO. Tiene todos los privilegios del sistema.

## Interruptions vs traps
Las **trampas** y las **interrupciones** están estrechamente relacionadas. las **trampas** son un tipo de excepción y las excepciones son similares a la **interrupciones**. 

Una **trampa** es un evento generado por el software que resulta de un error o excepción en el programa que se está ejecutando en ese momento.

Una **interrupción** es un evento generado por el hardware provocado por un temporizador o un dispositivo externo.