# Cifrado de Cesar

## Requerimientos

Se procedera a implementar un algoritmo de cifrado llamado `Cifrado de Cesar`

Los requerimientos de usuario son los siguientes.

Implementar el cifrado Cesar.

```
En criptografía, un cifrado César, también conocido como cifrado de César, el cifrado de desplazamiento, el código de César o el desplazamiento de César, es una de las técnicas de cifrado más simples y ampliamente conocidas. Es un tipo de cifrado de sustitución en el cual cada letra en el texto plano es reemplazada por una letra que se encuentra a cierta cantidad fija de posiciones más abajo en el alfabeto. Por ejemplo, con un desplazamiento hacia la izquierda de 3, la letra D sería reemplazada por la letra A, la letra E se convertiría en la letra B, y así sucesivamente. El método lleva el nombre de Julio César, quien lo utilizó en su correspondencia privada.
```

### Casos Base:


## Resultado Esperado

- Prueba Unitarias en Verde.

## Tips para Resolverlo

1. Recordar como convertir un string a un numero en Ruby.
2. No olvidar el pasar de `z` a `a`. (caso frontera)
3. Mantener si es minuscula o mayusculas.

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

Cada que se realice un cambio en el archivo `cesar_cipher.rb` deberá de volver a ejecutar el comando
`docker build -t my-rspec-image .` para generar la nueva imagen que incluya los últimos cambios, ya luego podrá correr `docker run --rm my-rspec-image` para correr las pruebas con los nuevos cambios.