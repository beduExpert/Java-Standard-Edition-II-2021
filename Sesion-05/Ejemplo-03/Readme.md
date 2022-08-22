# Ejemplo 03: Modificando un Flux en un servicio intermedio

## Objetivos
* Aprender a usar servicios intermedios no bloqueantes

## Requisitos
- Apache Maven 3.8.4 o superior
- JDK (o OpenJDK)

## Maven

Para ejecutar las pruebas de maven usa:
```bash
mvn test
```

## Procedimiento

1. Para el ejemplo 3 vamos a crear una arquitectura de tres capas (controlador - servicio - repositorio).

2. Primero creamos un data class con el nombre **PersonaEntity** con el código siguiente:

    ```java
    @Data
    @RequiredArgsConstructor
    public class PersonaEntity {
        private final String nombre;
        private final String primerApellido;
        private final String segundoApellido;

        private final String telefono;
    }
    ```

3. Ahora crearemos el repositorio de los datos en la clase **E3Repository**

    ```java
    public class E3Repository {
        private static final PersonaEntity[] LISTA = {new PersonaEntity("Juan", "Romo", "Pérez", "5550000001"),
                new PersonaEntity("Diana", "Sánchez", "García", "5550000002"),
                new PersonaEntity("Sebastián", "Rodríguez", "Soto", "5550000003")};

        public Flux<PersonaEntity> getPersonas(){
            return Flux.fromArray(LISTA).delayElements(Duration.ofSeconds(2));
        }
    }
    ```


4. También vamos a creal el servicio en la clase **E3Service**

    ```java
    public class E3Service {
        private static final E3Repository REPOSITORY = new E3Repository();

        public Flux<String> getListaNombre(){
            return REPOSITORY
                    .getPersonas()
                    .map(this::formatearNombre);
        }

        private String formatearNombre(PersonaEntity persona){
            return String.format("%s %s, %s", persona.getPrimerApellido(), persona.getSegundoApellido(), persona.getNombre());
        }
    }
    ```

5. Agrega el siguiente código a **E3Controller**

    ```java
    public class E3Controller {
        private static final E3Service SERVICE = new E3Service();

        public Flux<String> nombresUsuarios() {
            return SERVICE.getListaNombre();
        }
    }
    ```

6. Creamos un archivo de pruebas para el controlador

    ```java
    private static final List<String> NOMBRES = Arrays.asList(new String[]{"Romo Përez, Juan", "Sánchez García, Diana", "Rodríguez Soto, Sebastian"});

    @Test
    @DisplayName("Ejercicio 3")
    void testTransformacion() {
        E3Controller controller = new E3Controller();

        controller.nombresUsuarios()
                .subscribe(nombre -> Assertions.assertThat(NOMBRES.contains(nombre)).isTrue());
    }
    ```

    En este ejemplo aprendimos a manipular un Flux sin necesidad de bloquearlo. Recuerda que debemos evitar bloquar hilos no-bloqueantes para poder mantener la responsividad del sistema.

    Toma en cuenta que, aunque la arquitectura en tres capas es muy común, en este caso se simplificó su uso, esto es, este no es un ejemplo real.



<br/>

[Siguiente ](../Reto-03/Readme.md)(Reto 3)