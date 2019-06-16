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