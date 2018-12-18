
type point = float * float;;


(* distance(0.0, 0.0) (0.0, 1.0) == 1.0
 * distance(0.0, 0.0) (1.0, 1.0) == sqrt(1.0 + 1.0)
 *
 * From the picture:
 *   distance(x, y) ...
 *)

let distance (p1:point) (p2:point) : float =
  (* Helper function *)
  let square x = x *. x in
    (* Deconstruct inputs *)
    let (x1, y1) = p1 in
      let (x2, y2) = p2 in
        (* Build output *)
        sqrt ( square (x2 -. x1) +. (y2 -. y1) );;


let p1 = (2.0, 3.0);;
let p2 = (0.0, 1.0);;
let dist12 = distance p1 p2;;
print_int (int_of_float dist12);;
print_newline ();;
