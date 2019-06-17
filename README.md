# OCAML

Sean bienvenidos a conocer el lenguaje Ocaml (lenguaje proveniente de caml pero con implementación en POO - año 1995).
Ocaml es un lenguaje que cumple con 4 criterios de los buenos lenguajes: (portable, seguro, expresivo, pedagógico).

### criterios
- portable: lenguaje lo más independiente de los detalles de la máquina.
- seguro: programas robustos con restricciones semánticas
- expresivo: capacidad de expresar las mismas cosas con las mismas palabras.
- pedagógico: capacidad de explorar fácilmente todos los conceptos básicos de la programación.

Además, su logo es un lindo camello.

![](https://github.com/daandradec/Ocaml-Lenguajes/blob/master/Imagenes/camello.png)

![](https://github.com/daandradec/Ocaml-Lenguajes/blob/master/Imagenes/colour-logo.png)

# PRIMEROS PASOS 

Primero tratemos de tener el entorno para poder correr instrucciones del lenguaje ocaml.

## Instalación

Comencemos por ir a la página oficial en la sección de instalación 

[http://ocaml.org/docs/install.html](http://ocaml.org/docs/install.html)

Una vez allí podemos ver la guía de instalación para varios sistemas operativos, pero aquí daremos la guía para Ubuntu y Windows

## Ubuntu

Ejecutar el comando

```
sudo apt install ocaml
```

Con esto, ya deberíamos ser capaces de ejecutar en la terminal el comando: $ ocaml

## Windows

Para windows será necesario instalar un paquete que permite instalar ocaml con solo ejecutar un .exe.

Primero vamos a la sección de windows y buscamos el link que dice (instalación con OCPWIN), lo que nos debería enviara a este link

[https://www.typerex.org/ocpwin.html](https://www.typerex.org/ocpwin.html)

una vez allí descargamos la versión de 32 o 64 bits, ejecutamos el instalador, damos siguiente a todas las ventanas hasta finalizar con éxito. Con esto ya debemos tener ocaml instalado y podremos ejecutar el comando ocaml en la consola de windows.

# Compilador Estándar y Compilador Interactivo.

El Compilador estandar: Compilara archivos de texto, por ejemplo, como cualquier compilador y ejecutara dichas instrucciones.

Comando en consola:

$Ocaml <NOMBREDEARCHIVO.ml>


Por otro lado si ejecutamos en consola:

$Ocaml

Ingresaremos al compilador interactivo de Ocaml el cual ejecutara las instrucciones que ingresemos, como si pertenecieran a un mismo archivo, y nos mostrara el resultado de cada ejecución.

# Editores Online

Si no quieres instalar Ocaml en tu sistema puedes buscar editores online, como por ejemplo: 

[https://try.ocamlpro.com/](https://try.ocamlpro.com/)

[https://www.tutorialspoint.com/compile_ocaml_online.php](https://www.tutorialspoint.com/compile_ocaml_online.php)


# Tour por el Lenguaje

Ahora sí para empezar a conocer el lenguaje abarcaremos estas secciones

- hello world
- tipos de datos y operadores
- variables
- definiciones locales
- condicionales

## HELLO WORLD

Abre la consola de ocaml y ejecuta

``` print_string "hello world";; ```

Con esta instrucción mostramos en la salida estándar la cadena hello world

### lista de funciones nativas para impresión

- print_int ENTERO
- print_float FLOTANTE
- print_newline ()
- print_string CADENA

## TIPOS DE DATOS Y OPERADORES

Los tipos de datos son nombres que engloban algún tipo de conjunto primitivo (valores de verdad, números, texto)

Los principales tipos de datos en Ocaml son :

**enteros** | **flotantes** | **valores de verdad** | **caracteres** | **cadenas de caracteres**

### Sus operadores

![](https://github.com/daandradec/Ocaml-Lenguajes/blob/master/Imagenes/simbolos.PNG)

### Sus palabras reservadas

![](https://github.com/daandradec/Ocaml-Lenguajes/blob/master/Imagenes/reservadas.PNG)

Veamos el primer contenido archivo 02_tipos_datos.ml

```

(* ENTEROS *)
2;;
3;;
4;;
(* OPERADORES ENTEROS *)
5+4;;
3-2;;
4*2;;
1/5;;
8 mod 3;;
(* FLOTANTES *)
4.3;;
8.;;
0.5;;
(* OPERADORES FLOTANTES *)
3.2 +. 5.4;;
2.2 *. 8.0 -. 2.2;;
10.5 /. 2.5;;
2.0 ** 3.0;;
(* FUNCIONES PRIMITIVAS FLOTANTES*)
sin(90.0);;
cos(0.0);;
log10(10.);;
sqrt(64.);;
(* BOOLEANOS *)
true;;
false;;
(* OPERADORES RELACIONALES *)
2 < 3;;
4.2 >= 6.6;;
4=5;;
3<>3;;
(* OPERADORES LOGICOS *)
not true;;
("abc"<>"bca") && (1=1);;
false || (not ((1+3)=(3*1-1)));;
(* CARACTERES *)
'a';;
'&';;
'#';;
'\065';;
'\066';;
'\067';;
(* CADENAS *)
"Hola";;
"Mundo";;
"Hola" ^ "Mundo";;
"Hola" ^ " " ^ "Mundo";;
(* BINARIO - OCTAL - HEXADECIMAL *)
0B0;;
0B1;;
0B10010101;;
0B101101;;
0O55;; (* 101101 *)
0O10;;
0xFFF;; (* 111111111111 *)
0x0A;; (* 0001010 *)

```

El tipado de ocaml es fuerte, por tanto los operadores estarán definidos para ciertos tipos de datos y no harán casting automático.

### Restricciones de tipo

![](https://github.com/daandradec/Ocaml-Lenguajes/blob/master/Imagenes/tipos_datos.PNG)

## VARIABLES

EL concepto de variables es el de asociar un nombre a un valor con un identificador.

Su estructura es: ``` let identificador = expresion ```

Veamos ahora el archivo 03_variables.ml

```
(* DEFINICIONES GLOBALES *)
(* ASOCIAR UN NOMBRE A UN VALOR *)
(* CARACTERISTICAS DE ESTOS IDENTIFICADORES *)
(* Es un nombre de máximo 255 caracteres *)
(* deben empezar por una minúscula *)
(* no deben contener espacios *)

let s = 1 + 2 + 3;; (* En matemtica, sea S la suma de 1 2 y 3*)
(* val s : int = 6 *)

s+s;;
(* - : int = 12 *)

let scuadrado = s*s;; (* En el tipaje, el tipo del identificador es el tipo de la expresion *)
(* val scuadrado : int = 36 *)

let s = 3*3;;
(* val s : int = 9 *)

s+2;;
(* - : int = 11 *)

scuadrado;;
(* - : int = 36 *)

let s = s+1;;
(* val s : int = 10 *)

s;;
(* - : int = 10 *)

let s = "una cadena";;
(* val s : string = "una cadena" *)

s^"!!!";;
(* - : string = "una cadena!!!" *)




(* Para definir varios identificadores a la vez se puede usar la palabra reservada and *)

let x = 3 and y = "algo";; (* El tipaje se evalua como, id_1 es del tipo de la exp1, y id_n es del tipo de la exp_n *)
(* val x : int = 3    val y : string = "algo" *)

let u = 10 and v = u*3;; (* Las expresiones se evaluan al mismo tiempo, no es de izquierda a derecha *)
(* Error: Unbound value u *)

let u = 10;;
(* val u : int = 10 *)

let v = u*3;;
(* val v : int = 30 *)
```

## DEFINICIONES LOCALES

Cuando queremos que un identificador tenga un valor en un contexto, y que no siga existiendo.

Para hacer esto utilizamos la palabra reservada in.

Su estructura es ``` let identificador = expresion in expresion2 ```

Veamos ahora el archivo 04_definiciones_locales.ml

```
(* DEFINICIONES LOCALES *)
(* Si queremos un identificador con un valor que solo exista en un contexto *)
(* Por ejemplo si quisiéramos calcular (3x4x5)x(3x4x5)+(3x4x5)x4*)

let prod = 3*4*5 in prod*prod+prod*4;; (* con la palabra reservada in le decimos que asuma el valor de la exp1 en la exp de la derecha *)
(* - : int = 3840 *)
(* En su evaluación: el identificador1 es del tipo de la expr1 dentro de la expresión2, y el resultado sera del tipo de la expresión2 *)
(* Por ultimo el identificador local desaparece *)

prod-1;;
(* Error: Unbound value prod *)

(let x = 5*5 in x+2)+3;;
(* - : int = 30 *)

let valor = (let x = 5*5 in x+2);;
(* val valor : int = 27 *)

let x = "global";;
(* val x : string = "global" *)

(let x = 4 in x+10) + (String.length x);;
(* - : int = 20 *)

x;;
(* - : string = "global" *)

(let x = "(" ^ x ^ ")" in x^x)^x;;
(* - : string = "(global)(global)global" *)

let x = 3 and y = 4+7 in x+y;;
(* - : int = 14 *)


let z = 4 in let t = 2*z in z+t;;
(* identado *)
let z = 4 in 
    let t = 2*z in z+t;;
(* - : int = 12 *)


let s = 1 in 
    let t = 2*s;; (* Error sintactico porque en la gramatica no existe asign in asign, solo asig in expr *)
(* Error: Syntax error *)


let t = (let s = 1 in 2*s);;
(* val t : int = 2 *)

let a = 1 in
    let a = 2 and b = a in a+b;;
(* - : int = 3 *)
```

## CONDICIONALES

Un condicionales es una instrucción que permite evaluar una expresión lógica para así permitir ejecutar o no una acción

Su estructura es : ``` if exp then exp1 else exp2 ```

en los condicionales de ocaml, el else es obligatorio.

Veamos ahora el archivo 05_condicionales.ml

```
(* Expresiones condicionales *)
(* Un condicionales es una instrucción que permite evaluar una expresión lógica para así permitir ejecutar o no una acción *)
(* if exp then exp1 else exp2*)
(* exp debe tener el tipo bool, exp1 y exp2 deben tener el mismo tipo de salida porque sera el tipo de la expresion completa *)
(* cabe destacar que el else es obligatorio *)

(* Por ejemplo: si quisieramos decirle el numero de raices reales de una ecuación cuadratica ax^2+bx+c depende del discriminante*)
let a = 1 and b = 2 and c = 1;;
let discriminante = b*b-4*a*c in 
    if discriminante > 0 then 2 else if discriminante = 0 then 1 else 0;;
(* - : int = 2 *)    

if true then 4+1 else 4.0;;
(* Error: This expression has type float but an expression was expected of type int*)

"hoy " ^ (if 1 < 2 then "si" else "no") ^ " tenemos clase";;
(* - : string = "hoy si tenemos clase" *)
```


# Particularidades del lenguaje respecto al paradigma funcional

Ahora vayamos un poco más profundo en el lenguaje aprendiendo estos temas que son comunes entre lenguajes de programación pero que en ocaml se manejan de manera un poco distinta. 

- funciones
- funciones recursivas
- listas
- tuplas
- tipos
- arreglos


## FUNCIONES

Las Funciones son una relación u procedimiento que asocia un conjunto de entrada con un conjunto de salida. f(x) = y

Su estructura es :

``` let id parametro = expresion ```
``` let id = function parametro -> expresion ```
``` let id p1 p2 ... pn = exp ```
``` let id = function p1 -> function p2 -> function pn -> exp;; ```

Veamos ahora el archivo 06_funciones.ml

```
(* FUNCIONES *)
(* Las Funciones son una relación u procedimiento que asocia un conjunto de entrada con un conjunto de salida. f(x) = y *)

(* su estructura es *)
(* let id parametro = expresion *)
(* let id = function parametro -> expresion *)
(* let id p1 p2 ... pn = exp *)
(* let id = function p1 -> function p2 -> function pn -> exp;;*)
(* el espacio entre parametros o argumentos es muy importante en una funcion (estructura de la gramatica)*)

let f x = 2*x+3;;
let f (x) = 2*x+3;;
let f = function x -> 2*x + 3;; (* El tipo de salida sera el tipo de la expresión *)
(* val f : int -> int = <fun> *)

let cuadrado x = x*x;;
(* val cuadrado : int -> int = <fun> *)
cuadrado 2;;
(* - : int = 4 *)
let absoluto x = (if x < 0 then -x else x);;  
absoluto (-2);;
absoluto 5;;

(* 
    Comparando con un lenguaje como c 
    
    double average (double a, double b)
    {
        return (a + b) / 2;
    }
*)
let average a b = (a +. b) /. 2.0;;
(* val average : float -> float -> float = <fun> *)
(* average 2.0 4.0;; *)

(* f'(x) mediante la definición de la derivada en un punto *)
let dx = 1e-10;;
let derivada f = fun x -> (f (x +. dx) -. f x) /. dx;;
(* val derivada : (float -> float) -> float -> float = <fun> *)
derivada identidad 1723.0;;
(* - : float = 1.000000082740371 *)

(* FUNCIONES COMPUESTAS *)

(* Así como en matematicas tenemos composición de funciones, f compuesta g en x -> f(g(x)) , tambien en Ocaml*)
let cuarta n = cuadrado (cuadrado n);;
(* f(x) = x^2 ;  g(x) = x^2 ;  (f o g)(x) = f(x^2) = (x^2)^2 = x^4 *)
(* val cuarta : int -> int = <fun> *)
cuarta 2;;
(* - : int = 16 *)

(* PERO LA SINTAXIS ES IMPORTANTE *)
cuadrado cuadrado 2;;
(* Error: This function has type int -> int It is applied to too many arguments; maybe you forgot a `;'*)
(* cuadrado no es una función de 2 argumentos, por tanto debemos encerrar entre llaves *)



(* FUNCIONES DE VARIOS PARAMETROS *)

(* ¿Como calular el area de un triangulo de base b y altura a?, A = b*a/2 *)

let area_triangulo = function a -> function b -> a *. b /. 2.;;
let area_triangulo a b =  a *. b /. 2.;;
(* val area_triangulo : float -> float -> float = <fun> *)

area_triangulo 1.2 0.9;;
(* - : float = 0.54 *)

area_triangulo (1.2 0.3);;
(* This expression has type float This is not a function; it cannot be applied. *)



(* FUNCIONES EN DEFINICIONES LOCALES*)

let sucesor x = x+1 in sucesor 3 * sucesor 4;;
(* ¿Que fragmento de codigo cree que va a salir? - : int = 20  ó  val sucesor : int -> int = <fun> *)

sucesor 2;;
(* Error: Unbound value sucesor *)

let pot6 x = 
    let cubo x = x*x*x in
        cubo x * cubo x;;
(* val pot6 : int -> int = <fun> *)

pot6 2;;
(* - : int = 64 *)


let const = 3;;
let f x = x * const;;
f 1;;
(* - : int = 3 *)
let const = 6;;
f 1;;
(* ¿Que debería de mostrar? - : int = 3  ó  - : int = 6 *)


let f = function x -> x && (x < 10);;
(* Error: This expression has type int but an expression was expected of type bool *)
(* Es un error de tipado porque x se detecto como bool al lado izquierdo del operador logico, y a la izquierda como un entero por el relacional*)


(* Funciones Polimorficas *)
(* y = f(x) = x *)
let identidad = function x -> x;;
(* val identidad : 'a -> 'a = <fun> *) (* 'a -> 'a en tipado hace referencia a que entra cualquier tipo de dato y sale cualquier tipo de dato *)
identidad 2;;
identidad "hola";;
(* compuesta = (fog)(x)*)
let compuesta f g = function x -> f (g x);;
(* val compuesta : ('a -> 'b) -> ('c -> 'a) -> 'c -> 'b = <fun> *)
(* En tipado de Ocaml se evalua dependiendo de las entradas y las salidas de tipos de cada argumento *)
(* f : 'a -> 'b *)
(* g : 'c -> 'a *)
(* x: 'c *)

let f x = x+1;;
let g x = x*x;;
compuesta f g 4;;

(* Funciones en expresiones *)

let x = 1+2 in ((function y -> y + x) x);;
(* - : int = 6 *)

let y = 1+2 in ((function x -> x+x) y);;
(* - : int = 6 *)

let f1 = function f2 -> (function x -> f2 x) in 
    let g = function x -> x+1 in (f1 g) 2;;
(* - : int = 3 *)
(* f1 y g seran funciones locales en la expresion (f1 g) 2 , en donde la salida de f1 es la salida de g(x) con x 
    el primer argumento que encuentre a la derecha de la expresion (f g) para este caso *)

let f = function x -> x+1 in (identidad f) 2;;


(* FUNCION TIPADO MANUAL *)
let inc_int (x: int) : int = x + 1 ;;
(* val inc_int : int -> int = <fun> *)

(* EJERCICIO *)
(* Escribir una función que calcule a^n en el conjunto de los enteros a los enteros *)
```

## FUNCIONES RECURSIVAS

Una función recursiva es una definición en la cual se hace llamado a su mismo nombre.

En ocaml usaremos la palabra reservada rec para que por sintaxis se detecte como una funcion recursiva.

Su estructura es :

``` let rec id parametro = expresion ```

Las mismas formas de declaracion de funciones se mantienen pero añademos rec al lado del let

Veamos ahora el archivo 07_funciones_recursivas.ml

```
(* FUNCIONES RECURSIVAS *)
(* Una función recursiva (por inducción) es una definición en la cual se hace llamado a su mismo nombre 
    (se tiene la propiedad para un caso base, un n, y un n+1)*)
(* Pueden asociarse con las ecuaciones de recurrencias de la matematica discreta *)

(* El ejemplo mas comun, el factorial de un numero *)
let rec fact m = if m = 0 then 1 else m * fact (m-1);;
(* Por combención de Ocaml se obliga a usar la palabra reservada rec en una función recursiva para facilitar el tipado, y analisis semantico*)
fact 5;;
(* - : int = 120 *)

(* Trazar o rastrear funciones recursivas *)
#trace fact;;
fact 6;;

(* Excepciones de Tipo *)
(* utilizando failwith que imprime un mensaje si ocurre una evaluación de tipo inesperado *)
let rec fact n = if n = 0 then 1 else if n > 0 then n*fact(n-1) else failwith "factorial no recibe negativos";;

(* EJERCICIOS *)
(* Definir la funcion suma entera (sumatoria desde i variando de 0 a n de i) y la suma entera de n numeros al cudrado sin recibir negativos*)
(* SOLUCION *)
let rec suma_entera n = (* CODIGO *);;
let rec suma_entera_cuadrada n = (* CODIGO *);;
#trace suma_entera_cuadrada;;


(* ESTRUCTURA DE CASOS *)
(* Fibonnaci *)
let rec fib = function n -> match n with 0 -> 1 | 1 -> 1 | n -> fib(n-1) + fib(n-2);;
(* Se puede simplificar en *)
let rec fib = function 0 -> 1 | 1 -> 1 | n -> fib(n-1) + fib(n-2);;
(* Los patrones de los casos pueden ser una constante -> expresion , identificador -> expresion , _ -> expresion (atrapa todo) *)

(* funcion es 1 *)
let es1 = function 1 -> true | _ -> false;;

(* patrones agrupando un caso *)
let es_vocal = function 'a' | 'e' | 'i' | 'o' | 'u' -> true
                           | _ -> false ;;

(* EJERCICIOS *)
(* Escribir factorial por casos, y la suma de los n números enteros por casos con mensaje de error en negativos y procesando negativos*)
(* SOLUCION *)
let rec factorial = (* CODIGO *);;
let rec suma_entera_2 = (* CODIGO *)
let rec suma_entera_3 = (* CODIGO *)



(* condicionales en casos con when *)
let rec fact = function 0 -> 1
                        | n when n > 0 -> n * factorial (n-1)
                        | _ -> failwith "Error de entrada";;



(* Conjetura de seracruce *)
(* la conjetura afirma que la sucesion de seracruce llega a 1 en cualquier momento para todos los numeros naturales *)
let seracruce = function x when x mod 2 = 0 -> x / 2
                        | x -> 3*x+1;;
let rec conj = function 1 -> true | n -> conj (seracruce n);;

#trace conj;;
conj 5;

```

Con el ultimo Ejemplo vemos la conjetura se seracruce que para f(x)

![](https://github.com/daandradec/Ocaml-Lenguajes/blob/master/Imagenes/conjetura.PNG)

Afirma que la sucesión definida por 

![](https://github.com/daandradec/Ocaml-Lenguajes/blob/master/Imagenes/conjetura2.PNG)

Llegara siempre a 1 en cualquier momento

## LISTAS

Una sucesión de valores del mismo tipo y cualquier tamaño

Su estructura es :

``` cabeza :: cola ```

donde la cabeza es un tipo de dato, y la cola es una lista

también se pueden escribir como 

``` [ elem1 ; elem2 ; elem3 ; elemN ] ```

Veamos ahora el archivo 08_listas.ml

```
(* ESTRUCTURAS LISTAS *)
(* Una sucesión de valores del mismo tipo y cualquier tamaño *)

(* EL 1ER ELEMENTO ES LA CABEZA *) 
(* LOS DEMAS ELEMENTOS SON LA COLA *)
(* SE CONSTRUYEN CON EL OPERADOR :: *)
2::[3 ; 4 ; 5];;
(* - : int list = [2; 3; 4; 5]*)
(* ASOCIATIVIDAD POR LA DERECHA *)
1 :: 2 :: 3 :: [];; (* 1 :: (2 :: (3 :: []))*)
(* - : int list = [1; 2; 3] *)

[ 1 ; 2 ; 3 ; 4 ; 5 ; 6];;
(* - : int list = [1; 2; 3; 4; 5; 6] *)
[ "hola" ; "hasta luego"];;
(* - : string list = ["hola"; "hasta luego"] *)
[ true ; false; false; true ];;
(* - : bool list = [true; false; false; true] *)

let f x = x + 1 in [f 1 ; f 2 ; f 3];;
(* - : int list = [2; 3; 4] *)

[ (function x -> x+0) ; (function x -> x+1) ; (function x -> x+2) ];;
(* - : (int -> int) list = [<fun>; <fun>; <fun>] *)

[ [1 ; 2] ; [3 ; 4] ; [5] ];;
(* - : int list list = [[1; 2]; [3; 4]; [5]] *)

[];; (* lista vacia*)
(* - : 'a list = [] *)

if 1 > 2 then [1] else [];;
(* - : int list = [] *)


(* FUNCIONES EN LISTAS *)
(* funcion que retorna la cabeza de una lista *)
let cabeza = function [] -> failwith "no tiene cabeza"
                    | x::l -> x;; (* como el identificador 'l' no se usa se puede remplazar por _ *)

(* EJERCICIO *)                    
(* implementar la funcion cola que retorna la cola de una lista *)
(* SOLUCION *)
let cola = function [] -> failwith "No tiene cola"
                    | _::l -> l;;
(* implementar una funcion que diga si una lista empieza por cero *)                    
let cero = function x::_ -> x=0
                    | _ -> false;;
(* implementar una funcion que retorne el segundo elemento de una lista o la cabeza si no existe o un error si es lista vacia *)
let segundo = function [] -> failwith "no hay un tipo que retornar"
                        |_ :: x :: _ -> x
                        | x::_ -> x;;

(* la longitud de una lista *)
let rec longitud = function [] -> 0 | _::l -> 1 + longitud l;;
(* función que dice si un elemento pertenece a una lista *)
let rec pertenece e = function [] -> false
                        | x::l -> (x=e) || pertenece e l;;
(* escribir la función que devuelve la suma de los elementos de una lista*)
let rec suma_lista = function [] -> 0 | x::l -> x + suma_lista l;;
(* escribir la función que devuelve el ultimo elemento de una lista *)
let rec ultimo = function [] -> failwith "No tiene ultimo" | [x] -> x | _::l -> ultimo l;;
(* escribir la función que devuelve la concatenación de dos listas *)
let rec concat l1 l2 = match l1 with [] -> l2
                        | x::l -> x::(concat l l2);;
```


## TUPLAS

Son tipos compuestos que se forman como parejas bajo el concepto del producto cartesiano

Su estructura es : ``` (constante, constante)  (identificador, identificador) ``` o sin paréntesis ``` constante, constante   identificador, identificador ```

Veamos ahora el archivo 09_tuplas.ml

```
(* TUPLAS *)
(* Son tipos compuestos que se forman como parejas bajo el concepto del producto cartesiano *)
(* se detonotan como  constante, constante   identificador, identificador (constante, constante) (identificador, identificador) *)
(* tipo1 * tipo2 -> tipo1 producto tipo2 *)

1, "texto";;
(* - : int * string = (1, "texto") *)
(1, 2);;
(* - : int * int = (1, 2) *)
(function x -> x), "identidad";;
(* - : ('a -> 'a) * string = (<fun>, "identidad") *)

let vecinos x = (x-1, x+1)
let norma (x,y) = sqrt(x *. x +. y*.y);;
let producto_punto (x,y) (x2,y2) = x*x2 + y*y2;;

( 1, (true, "cad"));;
(* - : int * (bool * string) = (1, (true, "cad")) *)

(* TRIPLAS *)
(1, "texto", false);;
(* - : int * string * bool = (1, "texto", false) *)
let norma (x,y,z) = sqrt(x *. x *. x +. y *. y *. y +. z *. z *. z);;
```

## TIPOS

En Ocaml podemos hacer definiciones de nuevos tipos de dato, dando los posibles valores en la definición

Su estructura es : ``` type identificador = Tipo1 | Tipo2 | Tipo3 | Tipo4 | TipoN ```

con la palabra reservada of, podemos decirle a ese tipo de que subtipo es : ``` type iden = Tipo1 of Subtipo | Tipo2 of Subtipo ```

Es muy importante que los tipos declarados comiencen obligatoriamente por mayuscula.

Veamos ahora el archivo 10_tipos.ml

```
(* NUEVOS TIPOS DE DATO *)
(* Definición de nuevos tipos de dato, dando los posibles valores en la definición *)
type palo = Diamante | Corazon | Pica | Trebol;;
type estacion = Primavera | Verano | Otono | Invierno;;

Invierno;;
Corazon;;

type carta = J of palo | Q of palo | K of palo | Numero of (int * palo);;

Q Trebol;;
(* - : carta = Q Trebol *)
Numero (7, Diamante);;
(* - : carta = Numero (7, Diamante) *)

type figura = Punto | Circulo of float | Rectangulo of float*float;;

let es_rectangulo = function Rectangulo ( _ , _ ) -> true
                            | Circulo r -> false
                            | Punto -> false;;

es_rectangulo (Rectangulo (2.,2.));;
(* - : bool = true *)

let es_cuadrado = function Rectangulo (x, y) -> x=y | _ -> false;;

es_cuadrado (Rectangulo (2.,2.));;
(* - : bool = true *)

let area = let pi = 2.0 *. asin 1.0 in function Rectangulo (l ,a) -> l *. a
                    | Circulo r -> pi*.r*.r
                    | Punto -> 0.;;


(* TIPOS RECURSIVOS *)
type arbol = Hoja | Nodo of int * arbol * arbol;;

let arbol_binario = Nodo (10, Nodo (5, Nodo (7, Hoja, Hoja), Nodo (8, Hoja, Hoja)), Nodo (50, Hoja, Hoja));;

let rec pertenece value = function Hoja -> false
                                | Nodo (r, sai, sad) -> (r=value) || (pertenece value sai) || (pertenece value sad);;

pertenece 7 arbol_binario;;
pertenece 11 arbol_binario;;
```


## ARREGLOS

Grupos de datos asociados a un solo identificador

Su estructura es : ``` [| elem1 ; elem2 ; elem3 ; elemN |] ```

Veamos ahora el archivo 12_arreglos.ml

```
(* ARRAYS *)

let v = [| 6 ; 4 ; 8|];;
v. (0);;
(* - : int = 6 *)
v. (1);;
(* - : int = 4 *)
v. (2);;
(* - : int = 8 *)
v. (1) <- 10;; (* asignacion *)
v;;
(* - : int array = [|6; 10; 8|] *)
```
## Felicidades

Felicidades por llegar hasta aquí, ahora ya deberías dominar Ocaml en un nivel medio alto. 

Gracias por su lectura.

# Ejemplos Avanzados

Puedes pasar a ver el archivo 11_ejemplos_avanzados.ml

```
(* EJEMPLOS AVANZADOS *)

(* ORDENAMIENTO POR INSERCION *)
let rec insertar e = function [] -> [e]
                    | x::l -> if e < x then e::x::l else x::(insertar e l);;
let rec ordenamiento_insercion = function [] -> []
                                        |x::l -> insertar x (ordenamiento_insercion l);;                    

(* ORDENAMIENTO POR SELECCIÓN *)
let rec minimo = function [] -> failwith "no hay minimo"
                        |[x] -> x
                        |x::l -> min x (minimo l);;
let rec suprimir e = function [] -> failwith "no se encuentra"
                            |x::l -> if x = e then l else x::(suprimir e l);;
let rec ordenamiento_seleccion = function [] -> []
                                        | l -> let m = minimo l in m::ordenamiento_seleccion(suprimir m l);;
 

 (* Factorial iterativo con ciclo while *)
 let fact n =
    let p = ref 1 and i = ref 1 in
        while !i <= n do
            p := !p * !i;
            i := !i +1;
        done;
        !p;;

 (* Factorial iterativo con ciclo for *)
 let fact n =
    let m = ref 1 in
        for i = 1 to n do
            m := !m*i;
        done;
        !m;;        
```

# Links de Referencia

[http://structio.sourceforge.net/guias/progocaml/progocaml.html](http://structio.sourceforge.net/guias/progocaml/progocaml.html)

[http://caml.inria.fr/pub/docs/manual-ocaml/language.html](http://caml.inria.fr/pub/docs/manual-ocaml/language.html)

[http://www.cs.us.es/~mjoseh/LCyTM-15/temas/tema-2.html](http://www.cs.us.es/~mjoseh/LCyTM-15/temas/tema-2.html)

[https://ocaml.org/learn/taste.html](https://ocaml.org/learn/taste.html)

[https://learnxinyminutes.com/docs/ocaml/](https://learnxinyminutes.com/docs/ocaml/)

[http://ocaml.org/learn/tutorials/basics.html#Basic-types](http://ocaml.org/learn/tutorials/basics.html#Basic-types)
