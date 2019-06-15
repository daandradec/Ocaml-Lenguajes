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