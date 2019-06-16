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

