# Máquinas de Turing: Unario a Binario

## Nombre

Máquina de Turing de Conversión Unario a Binario

## Función que computa

 Convertir un número en representación unaria a binario. Por ejemplo:

| unario    | binario |
| --------- | ------- |
| 1         | 0       |
| 11        | 1       |
| 111       | 10      |
| 1111      | 11      |
| 11111     | 100     |
| 111111    | 101     |
| 1111111   | 110     |
| 11111111  | 111     |
| 111111111 | 1000    |

## Descripción y estrategia

Esta maquina de turing toma unarios y los divide por 2 almacenando restos para que luego se leen al reves y poder formar el número binario.

La máquina lo primero que hace es cambiar el primer 1 por un #, pero existen casos base, porque si como siguiente a este no existe otro _1_ borra el # y resuelve como _0_ en binario. Existen casos bases similares para el 1 y 10 en binario.

Para los números siguientes la maquina reemplaza el primer digito por un # para separar los restos del lado izquierdo y las divisiones del lado derecho:

Ejemplo con número 11111 (_4_ en decimal o lo que es lo mismo _100_ binario):

- 11111 => #1111 - luego de hacer la comprobación de casos base, el primer digito cambia por un # y avanza derecha.
- #Y1Y1 - El cabezal avanza y cambia alternando cada 2 pasos el digito 1 por una _Y_, cuando llega al final si el ultimo digito era _1_ antes de leer blanco, entonces el resto es _0_, en cambio si el ultimo era una _Y_, entonces el resto es _1_, el cual ya se puede almacenar del lado de los restos.
- #Y1b1 - Al volver va a ir eliminando las _Y_ para representar la división por 2, se reacomodando _1s_, dejando b (blanco) y moviendo _1s_
- #11 - resultado final luego del reacomodo
- 0#11 - almacena el resto y divide de nuevo
- 0#Y1 - realiza nueva mente la comprobación de la última lectura y determina que el resto es _0_
- 00#1 - Por último, antes de entrar a alternar _Ys_ comprueba si luego del # hay un solo digito o ninguno, para determinar inmediatamente el ultimo resto, Si luego del # hay b(blanco) el resto es _0_, sino es _1_
- 100 - ahora por último elimina los de números y _#_ derechos, y almacena el resto en la izquierda

## JFlap

![Diseño JFlap](resources/jflap.jpg)

## Comprobaciones

![picture 0](resources/comprobaciones.jpg)

## Inputs

  |n (decimal) | Conf. inicial | Conf. final | Pasos | Espacios | Estado |
  | --- | --- | --- | --- | --- | --- |
  | 0 | 1 | 0 | 2 | 2 | Aceptado |
  | 1 | 11 | 1 | 4 | 3 | Aceptado |
  | 2 | 111 | 10 | 7 | 4 | Aceptado |
  | 3 | 1111 | 11 | 33 | 7 | Aceptado |
  | 4 | 11111| 100 | 64 | 9 | Aceptado |
  | 5 | 111111 | 101 | 65 | 10 | Aceptado |
  | 6 | 1111111 | 110 | 77 | 11 | Aceptado |
  | 7 | 11111111 | 111 | 78 | 12 | Aceptado |
  | 8 | 111111111 | 1000 | 122 | 14 | Aceptado |
  | 9 | 1111111111 | 1001 | 123 | 15 | Aceptado |

## Simulator

[Programa Simulator](resources/simulator.mt)

## Calculos de complejidades computacional en la máquinas de Turing

Se evalúa en términos de su complejidad espacial y temporal, usando datos de entrada para luego obtener un gráfico que forma una asíntota y también su fórmula matemática.

### Complejidad Espacial

![Formula Esp](resources/formula-espacial.png)

- S(n) = { (​⌊log2(​n)⌋ + 1) + n + 2 / n ≥ 4 } U { 1 / n = 0 } U { 2 / n = 1 } U { 4 / n = 2 } U { 7 / n = 3 }
- ![Comp Esp](resources/comp-espacial.png)

| Espacio | n   |
| ------- | --- |
| 2       | 0   |
| 3       | 1   |
| 4       | 2   |
| 7       | 3   |
| 9       | 4   |
| 10      | 5   |
| 11      | 6   |
| 12      | 7   |
| 14      | 8   |
| 15      | 9   |
| 16      | 10  |
| 17      | 11  |
| 18      | 12  |
| 19      | 13  |
| 20      | 14  |
| 21      | 15  |
| 22      | 16  |
| 40      | 32  |
| 73      | 64  |
| 138     | 128 |
| 267     | 256 |

La función tiene números específicos para los números 0, 1, 2, 3, pero a partir de ahi, se calcula el espacio binario usando función piso sobre el Log base 2, sumando la cantidad de 1s del unario + 2 que representan al 0 y un espacio adicional que necesita la maquina cuando está recorriendo

En términos de complejidad espacial es 𝑂(𝑛), ya que crece linealmente.

### Complejidad Temporal

![Comp temp](resources/comp-temporal.png)

| n   | Pasos (Tiempo) | Representación unaria |
| --- | -------------- | --------------------- |
| 0   | 2              | 1                     |
| 1   | 4              | 11                    |
| 2   | 7              | 111                   |
| 3   | 33             | 1111                  |
| 4   | 64             | 11111                 |
| 5   | 65             | 111111                |
| 6   | 77             | 1111111               |
| 7   | 78             | 11111111              |
| 8   | 122            | 111111111             |
| 9   | 123            | 1111111111            |
| 10  | 139            | 11111111111           |
| 11  | 140            | 111111111111          |
| 12  | 169            | 1111111111111         |
| 13  | 170            | 11111111111111        |
| 14  | 190            | 111111111111111       |
| 15  | 191            | 1111111111111111      |
| 16  | 259            | 11111111111111111     |

La complejidad temporal para esta máquina es aleatoria, y viendo la línea recta que representa un crecimiento lineal 𝑂(𝑛), se concluye que el crecimiento de la complejidad es superior a la lineal.

Al ser tan errática no existe una función exacta simple que pueda calcular la complejidad temporal de la máquina de Turing ya que en ciertos casos la maquina incrementa rápidamente su cantidad de pasos (tiempo), cuando el número _n_ se incrementa.

Lo único que se puede observar es que luego de _n_ = 3 despues de un número impar la complejidad temporal salta de forma aleatorio hasta el número que sigue (par), pero su siguiente número (el impar), solo aumenta su valor en 1.

- **Para valores pequeños de n** (como 0, 1, 2), los pasos son bastante pequeños y parecen comportarse de manera casi constante o lineal.

- **Para valores grandes de n**, el número de pasos crece de manera mucho más acelerada, lo que sugiere un **crecimiento no lineal**.

- A medida que n aumenta, los pasos necesarios aumentan significativamente, lo que indica que el número de movimientos del cabezal y las escrituras/lecturas también aumentan de forma rápida.

Puedo asumir que la complejidad temporal está **por encima de la lineal**, pero no es posible calcular la complejidad exacta con una única fórmula sencilla. A partir de los datos, podemos aproximar la complejidad temporal como O(n^2),
