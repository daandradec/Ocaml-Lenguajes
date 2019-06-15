(* ARRAYS *)

let v = [| 6 ; 4 ; 8|];;
v. (0);;
(* - : int = 6 *)
v. (1);;
(* - : int = 4 *)
v. (2);;
(* - : int = 8 *)
v. (1) <- 10;; (* asignacion *)
v;;
(* - : int array = [|6; 10; 8|] *)