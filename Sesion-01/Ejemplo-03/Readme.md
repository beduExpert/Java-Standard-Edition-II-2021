# Ejemplo 03 - Escribir y obtener información en la base de datos.

## Objetivo

- Manipular la base de datos desde la aplicación de Java.

## Requisitos

- Apache Maven 3.8.4 o superior
- JDK (o OpenJDK)

## Creación de la entidad

Vamos a crear la clase que servirá de modelo con una tabla de la base de datos.

1. Creamos el archivo `src/main/java/com/example/accessingdatamysql/User.java` para definir a los usuarios de la siguiente forma:

```java
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity // para crear una tabla a partir de la clase
public class User {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Integer id;

    private String name;

    private String email;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
```

## Creando el repositorio

Ahora crearemos el repositorio para el CRUD de la entidad `User`

1. Creamos la interfaz `src/main/java/com/example/accessingdatamysql/UserRepository.java` con el siguiente código:

```java
import org.springframework.data.repository.CrudRepository;

import com.example.demo.User;

public interface UserRepository extends CrudRepository<User, Integer> {

}
```

En este caso dejaremos únicamente los métodos que se crean por default al extender `CrudRepository`.

## Creando un controlador 

Vamos a crear un controlador que se encargue de manejar las peticiones HTTP de la aplicación.

1. Creamos la clase `src/main/java/com/example/accessingdatamysql/MainController.java` y agregamos el siguiente código:

```java
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller // La clase funciona como controlador
@RequestMapping(path="/demo") // la URL's comienza con /demo 
public class MainController {
    @Autowired // Obtiene el repositorio de usuario que se 
    // genero automaticamente
    private UserRepository userRepository;

    @PostMapping(path="/add") // ONLY POST Requests
    public @ResponseBody String addNewUser (@RequestParam String name
            , @RequestParam String email) {
        // @ResponseBody means the returned String is the response, not a view name
        // @RequestParam means it is a parameter from the GET or POST request

        User n = new User();
        n.setName(name);
        n.setEmail(email);
        userRepository.save(n);
        return "Saved";
    }

    @GetMapping(path="/all") // ONLY GET Requests
    public @ResponseBody Iterable<User> getAllUsers() {
        // This returns a JSON or XML with the users
        return userRepository.findAll();
    }
}
```

## Probando nuestra aplicación 

1. Ejecutamos nuestra aplicación, lo que activará el servidor para estar pendiente de las peticiones.

2. Probamos el método POST usando `curl`

```bash
$ curl localhost:8080/demo/add -d name=First -d email=someemail@someemailprovider.com
``` 

el resultado debe ser
 
```bash
Saved
```

3. Probamos el método GET usando `curl`

```bash
$ curl 'localhost:8080/demo/all'
``` 

el resultado debe ser
 
```bash
[{"id":1,"name":"First","email":"someemail@someemailprovider.com"}]
```

<br/>

¡Felicidades! Haz terminado los ejemplos del día de hoy.

<br/>

[Siguiente ](../Reto-03/Readme.md)(Reto 3)