# Postwork Sesión 04: Inscripción de estudiantes

## Objetivo 

- Aplicar los conocimientos de la programación asíncrona mediante un proyecto real.
- Practicar el uso del EventLoop, a través de su uso para implementar un sistema de registro de alumnos.

## Requisitos 

- IntelliJ IDEA Community Edition
- JDK (o OpenJDK) 11 y 17
- Postwork de la sesión anterior

## Desarrollo

El director de la escuela te ha pedido que implementes un sistema de inscripción de alumnos que notifique al maestro cuando un alumno se haya inscrito a un curso y además le muestre la cantidad de alumnos que tiene su curso, sin bloquear la plataforma para que más estudiantes puedan inscribirse al mismo tiempo.

Es por esto que han considerado que la implementación más fácil será mediante el uso de un **EventLoop** que reciba la información del alumno y el curso al que se quiere inscribir, notificando en un **worker** al maestro de la inscripción.

Tu tarea consiste en implementar el EventLoop necesario para esta plataforma, así como el worker que notifique al maestro.

El diagrama 1 muestra cómo sería el flujo del EventLoop

![diagrama1](img/diagrama1.png)



<br/>
<br/>

[Regresar ](../Readme.md)(Sesión 04)

[Siguiente ](../../Sesion-05/Readme.md)(Sesión 05)