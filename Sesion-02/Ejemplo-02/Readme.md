## Ejemplo 2: Implementando la interfaz Runnable

### Objetivo
- Familiarizarse con la interfaz Runnable, el único método que define y la forma en que se incorpora a un Thread para su ejecución

### Requisitos
- JDK 12 o superior
- IDE de tu preferencia

### Desarrollo
1. Nos ubicaremos en el proyecto del ejemplo 1.
2. Agregaremos la clase `MiRunnable` que implementará la interfaz `Runnable`.
3. Dentro de la clase `MiRunnable`, agregaremos una propiedad llamada **parametro** de tipo `String` que será la que definirá cuándo termina nuestro hilo y también otra propiedad llamada **nombre** que nos permitirá distinguir entre nuestros hilos, debido a que no existe algún método para saber el id de nuestro hilo o si es un demonio.
4. Haremos Override del método `run` definido en `Runnable` y agregaremos el siguiente código:
```java
@Override
public void run() {
	while(!"terminar".equals(parametro)){
		mostrarInformacion();
		pausarUnSegundo();
	}
	mostrarInformacion();
}
```

5. La implementación de los métodos `mostrarInformacion` y `pausarUnSegundo` será:
```java
public static void pausarUnSegundo() {
	try {
		TimeUnit.SECONDS.sleep(1);
	} catch (InterruptedException e) {
		e.printStackTrace();
	}
}

private void mostrarInformacion() {
	System.out.println("Hilo: " + nombre + "\t| Parametro: " + parametro);
}
```

6. Por último, crearemos 2 objetos `MiRunnable` en el método **main** de nuestra aplicación, uno de ellos será un hilo de usuario y el segundo será un hilo demonio:
```java
public static void main(String[] args) {
    MiHilo hilo1 = new MiHilo("Uno");
    hilo1.start();

    MiHilo hilo2 = new MiHilo("Dos");
    hilo2.setDaemon(true);
    hilo2.start();

    MiHilo.pausarUnSegundo();
    hilo1.setParametro("terminar"); // Demostrar qué pasa si no se pone esta línea
    System.out.println("**Fin del hilo main**");
}
```

7. Ejecutaremos el proyecto y observaremos la salida, comprobando qué pasa con la información que imprime cada hilo.
