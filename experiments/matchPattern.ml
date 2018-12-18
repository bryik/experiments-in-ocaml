
(* A variant type *)
type color =
  | Red
  | Blue
  | Green


(* Variants allow super-powered match statements, the compiler can warn you of missing cases!) *)
let colorToString (c : color) : string =
  match c with
    | Red -> "red"
    | Blue -> "blue"
    | Green -> "green"  (* Try commenting out this line! *)


let _ =
  let favouriteColor = Blue in
  print_string (colorToString favouriteColor);
  print_newline()
