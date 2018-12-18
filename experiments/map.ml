
(* Mapping over a list. Returns a new list with f() applied to each element. BTW, List.map already exists. *)
let rec map (f:int->int) (xs: int list) : int list =
  match xs with
    | [] -> []
    | hd::tl -> (f hd)::(map f tl);;


(* Using map to increment every element in an int list by 1. *)
let inc_all xs =
  map (fun x -> x + 1) xs;;


let _ =
  let numbers = [8; 6; 7; 5; 3; 0; 9] in
  let incremented = inc_all numbers in
  List.iter (fun el -> print_int el; print_string ", ") incremented;
  print_newline()
