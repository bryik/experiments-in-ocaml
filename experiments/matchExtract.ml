
type point = float * float

(* Can use match to extract values from a data structure. *)
let m (p1:point) =
  match p1 with
    | (x1, y1) -> x1;;


(* Let also works *)
let l (p1:point) =
  let (x1, y1) = p1 in
    x1;;


let _ =
  print_float (m (2.0, 3.0));;
  print_newline();;
  print_float (l (2.0, 3.0));;
  print_newline();;
