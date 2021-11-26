## Ejemplo 1: Creando un hilo

### Objetivo
- Comprender cómo se trabaja con hilos en Java mediante el uso de la clase Thread
- Crear un hilo de usuario
- Crear un hilo demonio

### Requisitos
- JDK 12
- IDE de tu preferencia

### Desarrollo
1. Crearemos un nuevo proyecto de Java asegurándonos que usemos el JDK 8 o superior.
2. Agregaremos la clase `MiHilo` que heredará de la clase `Thread`.
3. Dentro de la clase `MiHilo`, agregaremos una propiedad llamada **parametro** de tipo `String` que será la que definirá cuándo termina nuestro hilo.
4. Haremos Override del método `run` definido en `Thread` y agregaremos el siguiente código:
```java
@Override
public void run(){
    while(!"terminar".equals(parametro)){
        mostrarInformacion();
        pausarUnSegundo();
    }
    mostrarInformacion();
}

public void setParametro(String parametro){
    this.parametro = parametro;
}
```

5. La implementación de los métodos `mostrarInformacion` y `pausarUnSegundo` será:
```java
private void mostrarInformacion() {
    String tipoHilo = isDaemon() ? "daemon" : "usuario";
    System.out.println(tipoHilo + "\t| Nombre: " + getName() + "\t| ID: " + getId() + "\t| Parametro: " + parametro);
}
public static void pausarUnSegundo() {
    try {
        TimeUnit.SECONDS.sleep(1);
    } catch (InterruptedException e) {
        e.printStackTrace();
    }
}
```

6. Por último, crearemos 2 objetos `MiHilo` en el método **main** de nuestra aplicación, uno de ellos será un hilo de usuario y el segundo será un hilo demonio:
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
