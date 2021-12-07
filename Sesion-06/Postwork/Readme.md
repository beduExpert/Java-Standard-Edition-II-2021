# Postwork 06: Clases genéricas

## Objetivo 

A lo largo de este proyecto reafirmaremos lo que se ha aprendido durante las sesiones.

## Requisitos 

- IntelliJ IDEA Community Edition
- JDK (o OpenJDK) 11 y 17
- Postwork de la sesión anterior

## Desarrollo

Uno de los principales uso de Generics es poder implementar algoritmos independientes de sus parámetros.

Crea una implementación del algoritmo [Merge Sort](https://www.tutorialspoint.com/data_structures_algorithms/merge_sort_algorithm.htm) que cumpla con la siguiente interfaz:

- Intenta que tu archivo tenga 50 líneas de código o menos (imports incluídos).

    ```java
    public class MergeSortAlgorithm {
        public static <T extends Comparable<T>> List<T> sort(List<T> unsortedList) {
            //Tu código aquí
            return null;
        }

        public static <T> List<T> sort(List<T> unsortedList, Comparator<T> comparator) {
            //Tu código aquí
            return null;
        }
    }
    ```

<br/>
<br/>

[Regresar ](../Readme.md)(Sesión 06)

[Siguiente ](../../Sesion-07/Readme.md)(Sesión 07)