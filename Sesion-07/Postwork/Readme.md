## Postwork 07

A lo largo de este proyecto reafirmaremos lo que se ha aprendido durante las sesiones.

### Módulo 7 - Microservicios

Modificar el proyecto del Reto 3: 

En el archivo pom cambiar la siguiente dependendecia:

```xml
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-data-jpa</artifactId>
    </dependency>
```

Por la siguiente:

```xml
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-data-mongodb-reactive</artifactId>
    </dependency>
```

Ahora ocupando una base de datos MongoDB la cual se llamara "empleado" 

Modificamos la clase EmpleadoRepository pasarla a ser una interfaz:

```java
    public interface EmpleadoRepository extends ReactiveMongoRepository<Empleado, String>{
    }
```

Y finalmente modificar el controlador con los metodos que nos devuelve la interfaz.
