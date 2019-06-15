(* FUNCIONES RECURSIVAS *)
(* Una función recursiva (por inducción) es una definición en la cual se hace llamado a su mismo nombre 
    (se tiene la propiedad para un caso baso, un n, y un n+1)*)
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
(* utilizando fail with que imprime un mensaje si ocurre una evaluación de tipo inesperado *)
let fact n = if n = 0 then 1 else if n > 0 then n*fact(n-1) else failwith "factorial no recibe negativos";;

(* EJERCICIOS *)
(* Definir la funcion suma entera (sumatoria desde i variando de 0 a n de i) y la suma entera de n numeros al cudrado sin recibir negativos*)
(* SOLUCION *)
let rec suma_entera n = if n = 0 then 0 else if n > 0 then n + suma_entera (n-1) else failwith "Sumatoria no definida en negativos";;
let rec suma_entera_cuadrada n = if n = 0 then 0 else if n > 0 then (n*n) + suma_entera_cuadrada (n-1) else failwith "Sumatoria no definida en negativos";;
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
let rec factorial = function 0 -> 1 | n -> n* factorial (n-1);;
let rec suma_entera_2 = function 0 -> 0
                                | n when n > 0 -> n + suma_entera_2 (n-1)
                                | _ -> failwith "Sumatoria no definida en negativos";;
let rec suma_entera_3 = function 0 -> 0
                                | n when n > 0 -> n + suma_entera_3 (n-1)
                                | n -> -1 * suma_entera_3 (-n);;

(* condicionales en casos con when *)
let rec fact = function 0 -> 1
                        | n when n > 0 -> n * factorial (n-1)
                        | _ -> failwith "Error de entrada";;



(* Conjetura de seracruce *)
(* la conjetura afirma que la sucesion de seracruce llega a 1 en cualquier momento para todos los numeros naturales *)
let seracruce = function x when x mod 2 = 0 -> x / 2
                        | x -> 3*x+1;;
let rec conj = function 1 -> true | n -> conj (seracruce n);;


