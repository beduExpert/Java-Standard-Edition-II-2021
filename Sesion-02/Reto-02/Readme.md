# Reto 2: Implementando la interfaz Runnable

### Objetivo
- Cambiar la implementación del Reto 1 para que use la interfaz Runnable en lugar de la clase Thread.

### Requisitos
- JDK 12
- IDE de tu preferencia

### Desarrollo
Este reto consiste en que realices los cambios necesarios en el proyecto del reto anterior para que en lugar de heredar desde la clase Thread emplees la interfaz Runnable para realizar las siguientes dos tareas:

- En el hilo de usuario deberás imprimir los números del 1 al 10 cada segundo.
- En el hilo daemon solo deberás imprimir cada medio segundo la frase "Sigo en ejecución".

Recuerda que debes instanciar e iniciar los objetos necesarios para cada hilo desde el método main de tu aplicación y la lógica principal de cada hilo está ubicada en el método run de tu clase hilo.
Recuerda también que los objetos que implementan Runnable deben estar contenidos en uno de tipo Thread para poder ejecutarlos.

<details>
	<summary>Solución</summary>
	
 1. Deberás cambiar cada una de tus clases generadas anteriormente para que implementen la interfaz Runnable.
	
 2. Dentro del método main deberás crear una instancia de cada una de tus clases, y también crear 2 objetos de tipo Thread.

 3. Deberás marcar el segundo objeto Thread como daemon, para que su ejecución finalice cuando termine el primero.

 4. Recuerda llamar al método start de cada uno de los Thread.
</details>
