
(* Declare a pair of integers *)
let p : int * int = (1, 2);;

(* Destructure to access elements *)
let (a, b) = p in
  print_int (a + b);
  print_newline()
