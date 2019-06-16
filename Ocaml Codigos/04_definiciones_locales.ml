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