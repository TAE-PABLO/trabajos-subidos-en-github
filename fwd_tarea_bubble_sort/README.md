# Bubble Sort

## Requerimientos

Se procedera a implementar un algoritmo de ordenamiento llamado `Bubble Sort`

Los requerimientos de usuario son los siguientes:

```
Implementar el algoritmo de ordenamiento búrbuja (bubble sort).

Se debe de crear un método llamado 'bubble_sort' en el archivo 'bubble_sort.rb' que reciba como parámetro un arreglo (array).
Este array contendrá números enteros o estar vacío.
Los números dentro del array podrían estar desordenados.

Al final este método debe de retornar los elementos del arreglo ordenados de menor a mayor.

La implementación final deberá de hacer que todas las pruebas/tests pasen.
```

### Casos Base:

- Si el array que se ingresa está vacío, se retorna el mismo array ([]).
- Si el array que se ingresa sólo tiene un elemento, se retorna el mismo array.

### Limitaciones

- No se podrá hacer uso del método `sort` ya existente en Ruby.

## Resultado Esperado

- El propósito del método es que retorne un array con los elementos/números ordenados de menor
a mayor. Por ejemplo:
  - Al recibir `[6, -1, 2, 20, 5]`, deberá de retornar `[-1, 2, 5, 6, 20]`

La manera de comprobar si el algoritmo funciona y cumple con los requerimientos es corriendo las pruebas y que todas pasen.

- Cuando se ejecutan los tests con el comando `rspec spec`, todos deberian estar en verde (pasar).
Inicialmente todas van a estar en rojo (todas las pruebas fallarán).

## Tips para Resolverlo
1. Asegurarse de comprender como funciona el bubble sort.
Acá podrá ver una animación de cómo funciona el algoritmo de ordenamiento paso a paso

![Alt Text](https://upload.wikimedia.org/wikipedia/commons/c/c8/Bubble-sort-example-300px.gif)

2. Podría requerir del uso de bucles anidados. Por ejemplo:

```rb
for i in número
  for i in número
    # lógica
  end
end

# o

while condición
  número.times do |i|
    # lógica
  end
end
```

## Tests

Se recomienda este recurso para repasar la información de tests en Ruby con rspec:

[The Odin Project - Rspec](https://www.theodinproject.com/lessons/ruby-introduction-to-rspec)

## Docker

Si se usa Docker, se puede correr los siguientes comandos para ejecutar los tests:

```
docker build -t my-rspec-image .
docker run --rm my-rspec-image
```

Para ingresar al contenedor:

```
docker run -it my-rspec-image bash
```

Dentro del contenedor podemos correr los tests con
```
rspec spec
```

### NOTA
Cada que se realice un cambio en el archivo `bubble_sort.rb` deberá de volver a ejecutar el comando
`docker build -t my-rspec-image .` para generar la nueva imagen que incluya los últimos cambios, ya luego podrá correr `docker run --rm my-rspec-image` para correr las pruebas con los nuevos cambios.