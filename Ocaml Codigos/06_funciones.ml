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