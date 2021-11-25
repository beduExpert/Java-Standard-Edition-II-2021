## Postwork Sesión 4: Inscripción de estudiantes

### OBJETIVO 

- Aplicar los conocimientos de la programación asíncrona mediante un proyecto real.

#### REQUISITOS 

1. JDK 8 o superior
2. IDE de tu preferencia
3. Postwork de la sesión anterior

#### DESARROLLO
El director de la escuela te ha pedido que implementes un sistema de inscripción de alumnos que notifique al maestro cuando un alumno se haya inscrito a un curso y además le muestre la cantidad de alumnos que tiene su curso, sin bloquear la plataforma para que más estudiantes puedan inscribirse al mismo tiempo.

Es por esto que han considerado que la implementación más fácil será mediante el uso de un EventLoop que reciba la información del alumno y el curso al que se quiere inscribir, notificando en un worker al maestro de la inscripción.

Tu tarea consiste en implementar el EventLoop necesario para esta plataforma, así como el worker que notifique al maestro.
El diagrama 1 muestra cómo sería el flujo del EventLoop
![diagrama1](img/diagrama1.png)
