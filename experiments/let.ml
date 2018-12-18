
(* A shorthand for printing a integer followed by a newline. *)
let print (i : int) =
  print_int i; print_newline()


(* A global variable *)
let x = 2;;


(* Scope of variable can be limited to an expression with 'in' *)
let x = 4 in
  print x;
  (* >>> 4 *)


(* Will not change x! "x = 3" does not reassign x, it tests if x is equal to 3. *)
x = 3;;
print x;;
(* >>> 2 *)


(* But x can be redefined... *)
let x = 3;;
print x;;
(* >>> 3 *)
