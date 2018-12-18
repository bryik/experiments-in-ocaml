
(* A function that adds two integers. *)
let adder a b =
  a + b;;


(* let someFunction a b =
  adder a+1 b+1;; *)
(* Error: This expression has type int -> int
        but an expression was expected of type int *)


(* Correct *)
let someFunction a b =
  adder (a+1) (b+1);;


print_int (someFunction 1 1);;
print_newline ();;
