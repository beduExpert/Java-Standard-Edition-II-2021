## Reto 1: Creando un hilo

### Objetivo
- Emplear la clase Thread de Java para la creación de una aplicación simple que realice tareas en diferentes hilos.

### Requisitos
- JDK 12
- IDE de tu preferencia

### Desarrollo
Deberás desarrollar una pequeña aplicación que mediante 2 hilos (uno de usuario y uno daemon) realice un par de tareas:

- En el hilo de usuario deberás imprimir los números del 1 al 10 cada segundo.
- En el hilo daemon solo deberás imprimir cada medio segundo la frase "Sigo en ejecución".

Recuerda que debes instanciar e iniciar los objetos necesarios para cada hilo desde el método main de tu aplicación y la lógica principal de cada hilo está ubicada en el método run de tu clase hilo.

<details>
	<summary>Solución</summary>
	
 1. Para resolver este reto tendrás que crear dos clases diferentes que hereden de Thread, dentro de la primera en el método run solo deberás incluir un for del 1 al 10 inclusivo en el que esté la instrucción System.out.println y un sleep por 1 segundo.

 2. En la segunda clase, tendrás que agregar la instrucción System.out.println con el mensaje "Sigo en ejecución" y un sleep por 500 milisegundos dentro de un ciclo infinito.

 3. En el método main deberás crear una instancia de cada clase sin olvidar establecer el atributo daemon como true para la segunda.
	
 4. Por último, no olvides iniciar cada uno de los hilos y ejecutar la aplicación para verificar los resultados.
</details>
