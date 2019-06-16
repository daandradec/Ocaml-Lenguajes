# OCAML

Sean bienvenidos a conocer el lenguaje Ocaml (lenguaje proveniente de caml pero con implementación en POO - año 1995).
Ocaml es un lenguaje que cumple con 4 criterios de los buenos lenguajes: (portable, seguro, expresivo, pedagogico).

### criterios
- portable : lenguaje lo mas independiente de los detalles de la maquina.
- seguro : programas robuztos con restricciones semanticas
- expresivo : capacidad de expresar las mismas cosas con las mismas palabras.
- pedagogico : capacidad de explorar facilmente todos los conceptos basicos de la programación.

Ademas su logo es un lindo camello.

![](https://github.com/daandradec/Ocaml-Lenguajes/blob/master/Imagenes/camello.png)

![](https://github.com/daandradec/Ocaml-Lenguajes/blob/master/Imagenes/colour-logo.png)

# PRIMEROS PASOS 

Primero tratemos de tener el entorno para poder correr instrucciones del lenguaje ocaml.

## Instalación

Comencemos por ir a la pagina oficial en la sección de instalación 

[http://ocaml.org/docs/install.html](http://ocaml.org/docs/install.html)

Una vez allí podemos ver la guia de instalación para varios sistemas operativos, pero aqui daremos la guia para Ubuntu y Windows

## Ubuntu

Ejecutar el comando

```
sudo apt install ocaml
```

Con esto, ya deberiamos ser capaces de ejecutar en la terminal el comando : $ ocaml

## Windows

Para windows sera necesario instalar un paquete que permite instalar ocaml con solo ejecutar un .exe.

Primero vamos a la sección de windows y buscamos el link que dice (instalación con OCPWIN), lo que nos deberia enviara a este link

[https://www.typerex.org/ocpwin.html](https://www.typerex.org/ocpwin.html)

una vez allí descargamos la versión de 32 o 64 bits, ejecutamos el instalador, damos siguiente a todas las ventanas hasta finalizar con exito. Con esto ya debemos tener ocaml instalado y podremos ejecutar el comando ocaml en la consola de windows.

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

Con esta instrucción mostramos en la salida estandar la cadena hello world

### lista de funciones nativas para impresión

- print_int ENTERO
- print_float FLOTANTE
- print_newline ()
- print_string CADENA

## TIPOS DE DATOS Y OPERADORES

Los tipos de datos son nombres que engloban algun tipo de conjunto primitivo (valores de verdad, numeros, texto)

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

El tipado de ocaml es fuerte, por tanto los operadores estaran definidos para ciertos tipos de datos y no haran casting automatico.

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
(* Es un nombre de maximo 255 caracteres *)
(* deben empezar por una minuscula *)
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
(* Por ejemplo si quisieramos calcular (3x4x5)x(3x4x5)+(3x4x5)x4*)

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

Ahora vayamos un poco mas profundo en el lenguaje aprendiendo estos temas que son comunes entre lenguajes de programación pero que en ocaml se manejan de manera un poco distinta. 

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

(* ¿Como calular el area deu n triangulo de base b y altura a?, A = b*a/2 *)

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
(* ¿Que deberia de mostrar? - : int = 3  ó  - : int = 6 *)


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
```

## FUNCIONES RECURSIVAS

## LISTAS

## TUPLAS

## TIPOS

## ARREGLOS

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