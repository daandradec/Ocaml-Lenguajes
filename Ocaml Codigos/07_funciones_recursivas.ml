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
let fact n = if n = 0 then 1 else if n > 0 then n*fact(n-1) else failwith "factorial no recibe negativos";;

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
(* Escribir factorial por casos, y la suma de los n numeros enteros por casos con mensaje de error en negativos y procesando negativos*)
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


