## Reto 3: Adaptando el event loop

### Objetivo
- Modificar un event loop ya existente para realizar tareas diferentes a las planeadas originalmente

### Requisitos
- JDK 8 o superior
- IDE de tu preferencia
- Ejemplo 3

### Desarrollo
Basándote en el event loop desarrollado durante el ejemplo 3, ahora tendrás que realizar las modificaciones necesarias en su event handler para que cuando reciba un número, vaya acumulando el valor recibido e imprima en consola el valor actual que lleva acumulado. 
También deberás agregar una condición que imprima el mensaje "Recibido un objeto no identificado" si el evento recibido no es un String o un Number.
<details>
	<summary>Solución</summary>
	
  1. Para poder tener un acumulador para los valores numéricos tendras que crear tu propia implementación de la interfaz EventHandler, agregándole una variable donde tengas la suma.
	
 2. Deberás definir también el método procesarEvento de dicha interfaz, agregando las condiciones para manipular objetos de tipo String y Number (cuidando que sumes el valor al acumulador de tu clase) y finalmente para todos los demás tipos de objeto solo mostrar el mensaje que diga que el objeto no fue identificado.
</details>
