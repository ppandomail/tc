# Máquina de Turing: Convertir texto (ASCII) a hexadecimal

## Función que computa

La funcion de esta máquina de Turing es convertir un texto en su representación hexadecimal. Para ello, se tomará como referencia para cada caracter su valor en ASCII, y se convertirá a hexadecimal.
La máquina de Turing tiene un alfabeto de entrada que incluye letras minúsculas y números

## Estrategia de diseño

La máquina de Turing se diseñará para leer un texto de izquierda a derecha, convirtiendo cada caracter a su representación hexadecimal y escribiéndolo en la cinta. La máquina tendrá un estado inicial y un estado de aceptación. Para ello, es necesario para su correcto funcionamiento utilizar el caracter # como delimitador de fin de cadena. La máquina comenzará en el estado inicial y leerá el primer caracter del texto. Luego, convertirá el caracter a su representación hexadecimal y lo escribirá en la cinta. La máquina continuará leyendo y convirtiendo caracteres hasta que llegue al final del texto. Una vez que haya convertido todos los caracteres, la máquina se moverá al estado de aceptación, borrando el caracter # de la cinta

### Limitaciones

- La máquina de Turing no podrá manejar caracteres especiales o espacios en blanco en el simulador, debido a una limitación del mismo
- Solo se aceptarán letras minúsculas y números
- Si se encuentra un caracter no válido, la máquina se detendrá y no producirá una salida válida

### Tabla de valores texto(ASCII) a hexadecimal

| Caracter | ASCII | Hexadecimal |
| -------- | ----- | ----------- |
| a        | 97    | 61          |
| b        | 98    | 62          |
| c        | 99    | 63          |
| d        | 100   | 64          |
| e        | 101   | 65          |
| f        | 102   | 66          |
| g        | 103   | 67          |
| h        | 104   | 68          |
| i        | 105   | 69          |
| j        | 106   | 6a          |
| k        | 107   | 6b          |
| l        | 108   | 6c          |
| m        | 109   | 6d          |
| n        | 110   | 6e          |
| o        | 111   | 6f          |
| p        | 112   | 70          |
| q        | 113   | 71          |
| r        | 114   | 72          |
| s        | 115   | 73          |
| t        | 116   | 74          |
| u        | 117   | 75          |
| v        | 118   | 76          |
| w        | 119   | 77          |
| x        | 120   | 78          |
| y        | 121   | 79          |
| z        | 122   | 7a          |
| 0        | 48    | 30          |
| 1        | 49    | 31          |
| 2        | 50    | 32          |
| 3        | 51    | 33          |
| 4        | 52    | 34          |
| 5        | 53    | 35          |
| 6        | 54    | 36          |
| 7        | 55    | 37          |
| 8        | 56    | 38          |
| 9        | 57    | 39          |

## Formalismo

- q= {q0, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15, q16, q17, q18, q19, q20, q21, q22, q23, q24, q25, q26, q27, q28, q29, q30, q31, q32, q33, q34, q35, q36, q37, q38, q39, q40, q41, q42, q43, q44,q45,q46,q47, q48, q49, q50, q51, q52, q53, q54, q55, q56, q57}
- Σ= {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z}
- Γ= {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, #, _} *(Aclaración: el caracter _ es $ en el simulador)* 
- q0= q56
- qA= {q55}
- δ= [transiciones.md](/transiciones.md)
  
## Diseño JFLAP

![Diagrama de la máquina de Turing](/resources/jflap-texto-hex.png)

Archivo JFLAP: [texto-a-hex.jff](/textoahexsinnumeral.jff)

## Simulador

Link al simulador: [http://turingmachinesimulator.com/shared/mlcwpgbyqp](http://turingmachinesimulator.com/shared/mlcwpgbyqp)

Archivo de entrada: [textoahexsinnumeral.mt](/textoahexsinnumeral.mt)

## Complejidad

### Inputs

| Entrada | Salida | Movimientos | Diferencia n+1 | Espacios |
| ------- | ------ | ----------- | ------ | -------- |
| u | 75 | 20 | - | 6 |
| un | 756e | 49 | +29 | 9 |
| una | 756e61 | 90 | +41 | 12 |
| unah | 756e6168 | 143 | +53 | 15 |
| unahu | 756e616875 | 208 | +65 | 18 |
| unahur | 756e61687572 | 285 | +77 | 21 |
| unahur2 | 756e6168757232 | 374 | +89 |  24 |
| unahur20 | 756e616875723230 | 475 | +101 | 27 |
| unahur202 | 756e61687572323032 | 588 | +113 | 30 |
| unahur2025 | 756e6168757232303235 | 713 | +125  | 33 |

### Complejidad temporal

La complejidad temporal de la máquina de Turing es ```O(n^2)```, donde n es el número de caracteres en la cadena de entrada. Esto se debe a que la máquina de Turing tiene que recorrer la cadena de entrada y convertir cada caracter a su representación hexadecimal, lo que implica un tiempo lineal para cada caracter.
La fórmula utilizada para calcular la cantidad de movimientos es la siguiente:

``` 6*n^2 + 11*n + 3 ```

- ```Si n=1 = 61^2 + 11*1 + 3 = 20```
- ```Si n=2 = 6*2^2 + 11*2 + 3 = 49```
- ```Si n=3 = 6*3^2 + 11*3 + 3 = 90```
- ```Si n=4 = 6*4^2 + 11*4 + 3 = 143```
- ```Si n=5 = 6*5^2 + 11*5 + 3 = 208```
- ```Si n=6 = 6*6^2 + 11*6 + 3 = 285```
- ```Si n=7 = 6*7^2 + 11*7 + 3 = 374```
- ```Si n=8 = 6*8^2 + 11*8 + 3 = 475```
- ```Si n=9 = 6*9^2 + 11*9 + 3 = 588```
- ```Si n=10 = 6*10^2 + 11*10 + 3 = 713```

Como se puede visualizar en la columna _movimientos_ de la tabla inputs, la cantidad de movimientos aumenta cuadráticamente con respecto al tamaño de la entrada. Tambien se nota que la diferencia de movimientos entre cada n crece 12 movimientos cada vez que se aumenta en 1 el tamaño de la entrada.

### Complejidad espacial

La complejidad espacial de la máquina de Turing es ```O(n)```, donde n es el número de caracteres en la cadena de entrada. Esto se debe a que la máquina de Turing tiene que almacenar la cadena de entrada y su representación hexadecimal en la cinta, lo que requiere espacio lineal en función del tamaño de la entrada.

La fórmula utilizada para calcular la cantidad de espacios es la siguiente:

``` 3*n + 3 ```

- ```Si n=1 = 3*1 + 3 = 6```
- ```Si n=2 = 3*2 + 3 = 9```
- ```Si n=3 = 3*3 + 3 = 12```
- ```Si n=4 = 3*4 + 3 = 15```
- ```Si n=5 = 3*5 + 3 = 18```
- ```Si n=6 = 3*6 + 3 = 21```
- ```Si n=7 = 3*7 + 3 = 24```
- ```Si n=8 = 3*8 + 3 = 27```
- ```Si n=9 = 3*9 + 3 = 30```
- ```Si n=10 = 3*10 + 3 = 33```
