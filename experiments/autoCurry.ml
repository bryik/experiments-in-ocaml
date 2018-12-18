
(* A function that adds two numbers together *)
let adder x y =
  x + y;;

(* add2 becomes an adder function with the first param locked to "2" *)
let add2 =
  adder 2;;

(* Parentheses are necessary after "print_int" to avoid "add2" being applied to "print_int"! *)
print_int (add2 2);;
(* >>> 4 *)
print_newline();;
