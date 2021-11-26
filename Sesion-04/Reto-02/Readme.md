## Reto 2: Buscando las ganancias máximas obtenidas por una cadena de restaurantes

### Objetivo
- Aplicar el uso de la clase CompletableFuture para buscar el valor máximo en el conjunto de franquicias empleado en el reto 1.

### Requisitos
- JDK 8 o superior
- IDE de tu preferencia
- Reto 1

### Desarrollo
El dueño de la cadena de restaurantes te ha pedido que ahora le ayudes a encontrar el valor máximo obtenido por las ventas de sus sucursales, solo que ahora tienes que emplear la clase CompletableFuture para buscar dicho valor y retornarlo. 
Tendrás que trabajar sobre el proyecto que creaste en el reto 1 y realizar las adaptaciones necesarias para usar la clase CompletableFuture de la API Future.
<details>
	<summary>Solución</summary>
	
 1. Tendrás que crear una lista de CompletableFuture que contenga uno para cada una de las sucursales que forman la cadena. Puedes basarte en el ejemplo 2 y realizar los cambios necesarios.

 2. Tendrás que cambiar también el método donde recibes el stream de los valores leídos de los CompletableFuture, cambiando la función sum por la función max para obtener el valor correcto para este caso.
</details>
