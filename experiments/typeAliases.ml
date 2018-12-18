
(* ocaml does not have a PI constant https://caml.inria.fr/mantis/view.php?id=5173 *)
let pi = 4. *. atan 1.


(* "point" is an alias for a pair of floats *)
type point = float * float


(* Variant types can represent a 'this OR that' relationship [0] *)
type shape =
  (* A square can be represented by a point and a side length. *)
  | Square of point * float
  (* A circle can be represented by a point and a radius. *)
  | Circle of point * float


(* A function that can operate on any shape. *)
let area (s : shape) : float =
  match s with
    | Square (_, sideLength) -> sideLength *. sideLength
    | Circle (_, radius) -> pi *. (radius *. radius)


let _ =
  let origin : point = (0.0, 0.0) in
  let unitCircle : shape = Circle (origin, 1.0) in
  print_float (area unitCircle)


(* 0 - https://reasonml.github.io/docs/en/variant *)