# Actividad 7 - Completely Fair Scheduler
### Alvaro Norberto García Meza 
### Carné: 202109567

#### Describir las características principales y el funcionamiento del Completely Fair Scheduler (CFS) de Linux. 

#### Características principales del Completely Fair Scheduler (CFS):
- **Equidad**: CFS se esfuerza por brindar un acceso justo a la CPU a todos los procesos en ejecución. Asigna tiempo de CPU a los procesos en función de su "necesidad", que se calcula por la cantidad de tiempo que el proceso ha estado esperando para ejecutarse.
- **Eficiencia**: CFS utiliza un algoritmo eficiente para programar procesos, lo que minimiza la latencia y maximiza el rendimiento del sistema.
- **Escalabilidad**: CFS puede manejar un gran número de procesos sin degradarse en rendimiento.
- **Flexibilidad**: CFS se puede configurar para adaptarse a diferentes necesidades y requisitos del sistema.
  
#### Funcionamiento del Completely Fair Scheduler (CFS):4

CFS utiliza un árbol rojo-negro para organizar los procesos en ejecución. Cada nodo del árbol representa un proceso o un grupo de procesos. El árbol se mantiene ordenado por la "necesidad" de los procesos.

- Cuando un proceso se crea, se agrega al árbol en el nodo con la "necesidad" más baja.
- Cuando un proceso está listo para ejecutarse, se selecciona el proceso con la "necesidad" más alta del árbol.
- El proceso seleccionado se ejecuta durante un período de tiempo, que se determina por su "necesidad" y la "cuota" de CPU asignada a su grupo.
- Cuando el proceso termina su período de ejecución, se vuelve a colocar en el árbol en el nodo con la "necesidad" más baja.
  
CFS también utiliza un mecanismo de "cuota" para controlar la cantidad de CPU que se puede utilizar un grupo de procesos. La cuota se puede configurar para cada grupo de procesos.

- CFS utiliza un algoritmo de "envejecimiento" para evitar que los procesos que no han estado en ejecución durante mucho tiempo monopolicen la CPU.
- CFS tiene un mecanismo de "boosting" que puede dar prioridad a ciertos procesos, como los procesos en tiempo real.
- CFS se puede configurar para utilizar diferentes políticas de "selección de víctimas" para determinar qué proceso se debe suspender cuando se necesita la CPU para otro proceso.
