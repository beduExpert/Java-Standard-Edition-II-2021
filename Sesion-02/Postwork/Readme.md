## Postwork Sesión 2: Cálculo de promedios mediante hilos 

### OBJETIVO 

- Aplicar los conocimientos del uso de hilos en Java en un proyecto real. 

#### REQUISITOS 

1. JDK 8 o superior
2. IDE de tu preferencia
3. Postwork de la sesión anterior

#### DESARROLLO
El postwork para esta sesión consiste en el cálculo de los promedios para cada Curso, pero este se llevará a cabo utilizando un hilo para cada uno de los cursos registrados para acelerar esta operación y tener los resultados de la manera más rápida posible, puedes visualizar el flujo general que tomará la aplicación en el diagrama 1.

![diagrama1](img/diagrama1.png)

Deberás crear al menos 4 cursos diferentes que contengan una lista de al menos 20 alumnos cada uno y para cada uno de estos cursos se calculará el promedio que obtuvieron los estudiantes en ese curso imprimiéndolo en consola junto con el nombre del curso.

Se recomienda que uses un Executor como el empleado en el último ejemplo para que puedas optimizar el uso de los recursos, creando un Runnable que contenga cada uno de los Cursos y de ahí extraigas la información de las calificaciones de los alumnos.
