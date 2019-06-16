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