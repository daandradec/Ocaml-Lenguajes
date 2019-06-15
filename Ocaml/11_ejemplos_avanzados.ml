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