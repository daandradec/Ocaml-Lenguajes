(* ESTRUCTURAS LISTAS *)
(* Una sucesion de valores del mismo tipo y cualquier tamaño *)

(* EL 1ER ELEMENTO ES LA CABEZA *) 
(* LOS DEMAS ELEMENTOS SON LA COLA *)
(* SE CONSTRUYEN CON EL OPERADOR : *)
2::[3 ; 4 ; 5];;
(* - : int list = [2; 3; 4; 5]*)
(* ASOCIATIVIDAD POR LA DERECHA *)
1 :: 2 :: 3 :: [];; (* -> 1 :: (2 :: (3 :: []))*)
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
(* funcino que retorna la cabeza de una lista *)
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