
exception X;;

(* Which handler is called? *)
let result =
  try (let f y = raise X in
    let g h = try (h 1) with X -> 2  (* this one *)
    in
    try (g f) with X -> 4)
  with X -> 6


(* Print the result of the exception expression above. *)
let _ = print_string ("The value of the try expression was: ");
  print_int result;
  print_newline()
